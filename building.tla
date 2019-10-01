------------------------------ MODULE building ------------------------------
(* Sample solution for first TLA+ exercise *)
CONSTANT
    PERSON      \* we're dealing with people here
                \* this is the set of all people        
VARIABLE
    register,   \* Set of registered users
    in,         \* Set of people in the building
    out         \* Set of people out of the building
    
TypeOk ==  \* type invarient 
    /\ register \subseteq PERSON    \* Everyone on the register is a person
    /\ register = in \cup out       \* everyones location is known
    /\ in \cap out = {}             \* noone can be both in and out of the building
------
Init ==
   /\ register \in SUBSET PERSON
   /\  in      \in SUBSET PERSON
   /\  out     \in SUBSET PERSON
   /\  TypeOk

Register(p) == 
    /\  p \in PERSON \ register
    /\ register' = register \cup {p}
    /\ out' = out \cup {p}
    /\ in' = in

Enter(p) ==
    /\ p \in out
    /\ in' = in \cup {p}
    /\ out' = out \ {p}
    /\ register' = register
    
Leave(p) ==
    /\ p \in in
    /\ in' = in \ {p}
    /\ out' = out \cup {p}
    /\ register' = register
    
Next ==
    \exists p \in PERSON :
        \/ Register(p)
        \/ Enter(p)
        \/ Leave(p)

------------------------------
Spec == Init /\ [][Next]_<<register,in,out>>
THEOREM Spec => TypeOk
=============================================================================
\* Modification History
\* Last modified Tue Sep 10 12:27:57 BST 2019 by cgam1
\* Created Mon Sep 24 11:53:39 BST 2018 by cgam1
