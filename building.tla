------------------------------ MODULE building ------------------------------
(* Sample solution for first TLA+ exercise *)
CONSTANT
    People      \* we're dealing with people here
                \* this is the set of all people        
VARIABLE
    register,   \* Set of registered users
    in,         \* Set of people in the building
    out         \* Set of people out of the building
    
TypeOK ==  \* type invarient 
    /\ register \subseteq People    \* Everyone on the register is a person
    /\ register = in \union out     \* everyones location is known
    /\ in \intersect out = {}       \* noone can be both in and out of the building

------

Init ==
   /\ register = {}    \* Initially no-one is registered
   /\  in      = {}    \*           no-one is inside
   /\  out     = {}    \*           no-one is outside

Register(p) ==  
    /\  p \in People \ register        \* p is a person and not registered
    /\ register' = register \union {p} \* add p to register
    /\ out' = out \union {p}           \* p is outside
    /\ in' = in                        \* must keep set of those inside the same

Enter(p) ==                  
    /\ p \in out               \* p is outside the building
    /\ in' = in \union {p}     \* add p to the inside set
    /\ out' = out \ {p}        \* remove p from the outside set
    /\ register' = register    \* register is unchanged
    
Leave(p) ==
    /\ p \in in                \* p is in the building
    /\ in' = in \ {p}          \* remove p from the inside set
    /\ out' = out \union {p}   \* add p to the outside set
    /\ register' = register    \* resigter is unchanged
    
Next ==
    \exists p \in People :   \* There is a person who can either
        \/ Register(p)       \* be registered, or
        \/ Enter(p)          \* enter the building, or
        \/ Leave(p)          \* leave the building

=============================================================================
\* Modification History
\* Last modified Wed Oct 02 10:31:48 BST 2019 by alun
\* Last modified Tue Sep 10 12:27:57 BST 2019 by cgam1
\* Created Mon Sep 24 11:53:39 BST 2018 by cgam1
