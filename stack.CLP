(
	deftemplate stack
	(multislot content)
)

(
	deffacts initial-fact
	(stack)
	(push-value A)
	
)

(
	defrule push
	?s <-(stack (content $?c))
	?p <- (push-value ?x)
	=>
	(retract ?p)
	(modify ?s (content ?x ?c ))
	(printout t "Push " ?x " in stack" crlf)
)

(
	defrule pop
	?s<-(stack (content ?x $?c))
	?p<-(pop-value)
	=>
	(retract ?p)
	(modify ?s (content ?c))
	(printout t "pop from stack = " ?x crlf)
)