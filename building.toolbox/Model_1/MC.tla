---- MODULE MC ----
EXTENDS building, TLC

\* CONSTANT definitions @modelParameterConstants:0People
const_161237495421710000 == 
{"Alun", "Neil", "David", "Michael"}
----

\* INVARIANT definition @modelCorrectnessInvariants:1
inv_161237495421712000 ==
\A p \in register : p \in People
----
\* INVARIANT definition @modelCorrectnessInvariants:2
inv_161237495421713000 ==
register \subseteq People
----
\* INVARIANT definition @modelCorrectnessInvariants:3
inv_161237495421714000 ==
\A p \in out : p \in People
----
\* INVARIANT definition @modelCorrectnessInvariants:4
inv_161237495421715000 ==
out \subseteq People
----
\* INVARIANT definition @modelCorrectnessInvariants:5
inv_161237495421716000 ==
\A p \in in : p \in register
----
\* INVARIANT definition @modelCorrectnessInvariants:6
inv_161237495421717000 ==
in \subseteq register
----
=============================================================================
\* Modification History
\* Created Wed Feb 03 17:55:54 GMT 2021 by alunm
