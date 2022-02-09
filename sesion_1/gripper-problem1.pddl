(define (problem problem1)
    (:domain gripper)
    (:objects
        rooma roomb - room
        ball1 ball2 ball3 ball4 - ball
        rigt left - gripper)
        
    (:init
        (robby-at rooma)
        (ball-at ball1 rooma)
        (ball-at ball2 rooma)
        (ball-at ball3 rooma)
        (ball-at ball4 rooma)
        (gripper-free rigt)
        (gripper-free left)
    )
    (:goal (and
        (ball-at ball1 roomb)
        (ball-at ball2 roomb)
        (ball-at ball3 roomb)
        (ball-at ball4 roomb)
    ))
    
    )