---- MODULE MC ----
EXTENDS building, TLC

\* CONSTANT definitions @modelParameterConstants:0People
const_1570011480460104000 == 
{"Alun", "Neil", "David", "Michael"}
----

\* INVARIANT definition @modelCorrectnessInvariants:1
inv_1570011480460106000 ==
\A p \in register : p \in People
----
\* INVARIANT definition @modelCorrectnessInvariants:2
inv_1570011480460107000 ==
register \subseteq People
----
\* INVARIANT definition @modelCorrectnessInvariants:3
inv_1570011480460108000 ==
\A p \in out : p \in People
----
\* INVARIANT definition @modelCorrectnessInvariants:4
inv_1570011480460109000 ==
out \subseteq People
----
\* INVARIANT definition @modelCorrectnessInvariants:5
inv_1570011480460110000 ==
\A p \in in : p \in register
----
\* INVARIANT definition @modelCorrectnessInvariants:6
inv_1570011480460111000 ==
in \subseteq register
----
=============================================================================
\* Modification History
\* Created Wed Oct 02 11:18:00 BST 2019 by alun
