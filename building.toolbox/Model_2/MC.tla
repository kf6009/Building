---- MODULE MC ----
EXTENDS building, TLC

\* CONSTANT definitions @modelParameterConstants:0Buildings
const_161295625654346000 == 
{"a","b","c"}
----

\* CONSTANT definitions @modelParameterConstants:1People
const_161295625654347000 == 
{"a","b","c"}
----

\* INVARIANT definition @modelCorrectnessInvariants:1
inv_161295625654350000 ==
\A p \in register : location[p] \in Buildings \union {outside}
----
=============================================================================
\* Modification History
\* Created Wed Feb 10 11:24:16 GMT 2021 by alunm
