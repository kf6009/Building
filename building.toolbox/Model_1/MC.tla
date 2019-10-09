---- MODULE MC ----
EXTENDS building, TLC

\* CONSTANT definitions @modelParameterConstants:0People
const_157045606568037000 == 
{"Alun", "Neil", "David", "Michael"}
----

\* INVARIANT definition @modelCorrectnessInvariants:1
inv_157045606568039000 ==
\A p \in register : p \in People
----
\* INVARIANT definition @modelCorrectnessInvariants:2
inv_157045606568040000 ==
register \subseteq People
----
\* INVARIANT definition @modelCorrectnessInvariants:3
inv_157045606568041000 ==
\A p \in out : p \in People
----
\* INVARIANT definition @modelCorrectnessInvariants:4
inv_157045606568042000 ==
out \subseteq People
----
\* INVARIANT definition @modelCorrectnessInvariants:5
inv_157045606568043000 ==
\A p \in in : p \in register
----
\* INVARIANT definition @modelCorrectnessInvariants:6
inv_157045606568044000 ==
in \subseteq register
----
\* INVARIANT definition @modelCorrectnessInvariants:7
inv_157045606568045000 ==
\neg ( "Alun" \in in /\ "Neil" \in in)
----
=============================================================================
\* Modification History
\* Created Mon Oct 07 14:47:45 BST 2019 by alun
