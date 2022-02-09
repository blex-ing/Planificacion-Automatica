(define (domain gripper)

    (:requirements
        :typing
    )

    (:types
        gripper ball room - object

    )

    (:predicates
        (robby-at ?r - room)
        (ball-at ?b - ball ?r - room)
        (gripper-free ?g - gripper)
        (gripper-carry ?g - gripper ?b - ball)
    )

    (:action move
        :parameters (?f  ?t - room)
        :precondition (and 
            (robby-at ?f))
        :effect (and 
            (robby-at ?t) 
            (not(robby-at ?f)))
    )
    
    (:action pick-up
        :parameters (?g - gripper ?b - ball ?r - room)
        :precondition (and 
            (robby-at ?r)
            (ball-at ?b ?r)
            (gripper-free ?g))
        :effect (and
            (gripper-carry ?g ?b)
            (not (gripper-free ?g))
            (not (ball-at ?b ?r)))
    )
    (:action drop
        :parameters (?g - gripper ?b - ball ?r - room)
        :precondition (and 
            (gripper-carry ?g ?b)
            (robby-at ?r))
        :effect (and
            (gripper-free ?g)
            (ball-at ?b ?r)
            (not (gripper-carry ?g ?b))
        )
    )
)