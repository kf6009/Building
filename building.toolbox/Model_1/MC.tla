---- MODULE MC ----
EXTENDS building, TLC

\* CONSTANT definitions @modelParameterConstants:0People
const_157001095568287000 == 
{"Alun", "Neil", "David", "Michael"}
----

\* INVARIANT definition @modelCorrectnessInvariants:1
inv_157001095568289000 ==
\A p \in register : p \in People
----
\* INVARIANT definition @modelCorrectnessInvariants:2
inv_157001095568290000 ==
register \subseteq People
----
\* INVARIANT definition @modelCorrectnessInvariants:3
inv_157001095568291000 ==
\A p \in out : p \in People
----
\* INVARIANT definition @modelCorrectnessInvariants:4
inv_157001095568292000 ==
out \subseteq People
----
\* INVARIANT definition @modelCorrectnessInvariants:5
inv_157001095568293000 ==
\A p \in in : p \in register
----
\* INVARIANT definition @modelCorrectnessInvariants:6
inv_157001095568294000 ==
in \subseteq register
----
\* INVARIANT definition @modelCorrectnessInvariants:7
inv_157001095568295000 ==
register = People => \E p \in People : p \in out
----
=============================================================================
\* Modification History
\* Created Wed Oct 02 11:09:15 BST 2019 by alun
