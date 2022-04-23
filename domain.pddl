(define (domain watersortpuzzle)
(:requirements :strips :equality :adl :fluents)
(:types glass water)
(:predicates 
    (in ?water ?glass)
    (is ?obj ?level)
    (color ?water ?col)
    (on ?water ?underwater)
    (top ?water)
    (free ?water)
)
(:action pour1_Lv_four_glass_to_Lv_zero_glass ;; pour1  4 -> 0
    :parameters (?glass1 ?glass2 - glass
                ?underwater1 ?water1 - water                 
    )
    :precondition (and       
        (not(free ?water1)) (not(free ?underwater1))  
        (top ?water1) (in ?water1 ?glass1)
        (is ?glass1 four)        
        (is ?glass2 zero)        
        (is ?water1 one)
        (on ?water1 ?underwater1)        
    )
    :effect (and
        (on ?water1 nowater)
        (not (on ?water1 ?underwater1))
        (in ?water1 ?glass2)
        (not (in ?water1 ?glass1))
        (is ?glass2 one)
        (not (is ?glass2 zero))
        (is ?glass1 three)
        (not (is ?glass1 four))  
        (top ?underwater1)   
    )
)

(:action pour1_Lv_three_glass_to_Lv_zero_glass ;; pour1  3 -> 0
    :parameters (?glass1 ?glass2 - glass
                ?underwater1 ?water1 - water                 
    )
    :precondition (and       
        (not(free ?water1)) (not(free ?underwater1))  
        (top ?water1) (in ?water1 ?glass1)
        (is ?glass1 three)        
        (is ?glass2 zero)        
        (is ?water1 one)
        (on ?water1 ?underwater1)        
    )
    :effect (and
        (on ?water1 nowater)
        (not (on ?water1 ?underwater1))
        (in ?water1 ?glass2)
        (not (in ?water1 ?glass1))
        (is ?glass2 one)
        (not (is ?glass2 zero))
        (is ?glass1 two)
        (not (is ?glass1 three))  
        (top ?underwater1)   
    )
)

(:action pour1_Lv_two_glass_to_Lv_zero_glass ;; pour1  2 -> 0
    :parameters (?glass1 ?glass2 - glass
                ?underwater1 ?water1 - water                 
    )
    :precondition (and    
        (not(free ?water1)) (not(free ?underwater1))     
        (top ?water1) (in ?water1 ?glass1)
        (is ?glass1 two)        
        (is ?glass2 zero)        
        (is ?water1 one)
        (on ?water1 ?underwater1)        
    )
    :effect (and
        (on ?water1 nowater)
        (not (on ?water1 ?underwater1))
        (in ?water1 ?glass2)
        (not (in ?water1 ?glass1))
        (is ?glass2 one)
        (not (is ?glass2 zero))
        (is ?glass1 one)
        (not (is ?glass1 two))  
        (top ?underwater1)   
    )
)

(:action pour1_Lv_four_glass_to_Lv_one_glass ;; pour1  4 -> 1
    :parameters (?glass1 ?glass2 - glass
                ?underwater1 ?water1 ?water2 - water                 
    )
    :precondition (and    
        (not(free ?water1)) (not(free ?underwater1)) (not(free ?water2))
        (top ?water1) (top ?water2) (in ?water1 ?glass1) (in ?water2 ?glass2)
        (is ?glass1 four)        
        (is ?glass2 one)        
        (is ?water1 one)
        (on ?water1 ?underwater1)

        (or (and(color ?water1 red)(color ?water2 red))
            (or (and(color ?water1 yellow)(color ?water2 yellow))
                (or (and(color ?water1 blue)(color ?water2 blue))
                    (or (and(color ?water1 green)(color ?water2 green))
                        (is ?glass2 zero)
                    )
                )        
            )        
        )       
    )
    :effect (and
        (is ?water2 two)
        (not (is ?water2 one))
        (not (on ?water1 ?underwater1))
        (not (in ?water1 ?glass1))
        (is ?glass2 two)
        (not (is ?glass2 one))
        (is ?glass1 three)
        (not (is ?glass1 four))  
        (top ?underwater1)  
        (free ?water1) 
    )
)

(:action pour1_Lv_three_glass_to_Lv_one_glass ;; pour1  3 -> 1
    :parameters (?glass1 ?glass2 - glass
                ?underwater1 ?water1 ?water2 - water                 
    )
    :precondition (and    
        (not(free ?water1)) (not(free ?underwater1)) (not(free ?water2))
        (top ?water1) (top ?water2) (in ?water1 ?glass1) (in ?water2 ?glass2)
        (is ?glass1 three)
        (is ?glass2 one)        
        (is ?water1 one)
        (on ?water1 ?underwater1)

        (or (and(color ?water1 red)(color ?water2 red))
            (or (and(color ?water1 yellow)(color ?water2 yellow))
                (or (and(color ?water1 blue)(color ?water2 blue))
                    (or (and(color ?water1 green)(color ?water2 green))
                        (is ?glass2 zero)
                    )
                )        
            )        
        )       
    )
    :effect (and
        (is ?water2 two)
        (not (is ?water2 one))
        (not (on ?water1 ?underwater1))
        (not (in ?water1 ?glass1))
        (is ?glass2 two)
        (not (is ?glass2 one))
        (is ?glass1 two)
        (not (is ?glass1 three))  
        (top ?underwater1)  
        (free ?water1) 
    )
)

(:action pour1_Lv_two_glass_to_Lv_one_glass ;; pour1  2 -> 1
    :parameters (?glass1 ?glass2 - glass
                ?underwater1 ?water1 ?water2 - water
    )
    :precondition (and
        (not(free ?water1)) (not(free ?underwater1)) (not(free ?water2))
        (top ?water1) (top ?water2) (in ?water1 ?glass1) (in ?water2 ?glass2)
        (is ?glass1 two)
        (is ?glass2 one)
        (is ?water1 one)
        (on ?water1 ?underwater1)

        (or (and(color ?water1 red)(color ?water2 red))
            (or (and(color ?water1 yellow)(color ?water2 yellow))
                (or (and(color ?water1 blue)(color ?water2 blue))
                    (or (and(color ?water1 green)(color ?water2 green))
                        (is ?glass2 zero)
                    )
                )        
            )        
        )       
    )
    :effect (and
        (is ?water2 two)
        (not (is ?water2 one))
        (not (on ?water1 ?underwater1))
        (not (in ?water1 ?glass1))
        (is ?glass2 two)
        (not (is ?glass2 one))
        (is ?glass1 one)
        (not (is ?glass1 two))
        (top ?underwater1)  
        (free ?water1) 
    )
)

(:action pour1_Lv_one_glass_to_Lv_one_glass ;; pour1  1 -> 1
    :parameters (?glass1 ?glass2 - glass
                 ?water1 ?water2 - water
    )
    :precondition (and
        (not(free ?water1)) (not(free ?water2))
        (top ?water1) (top ?water2) (in ?water1 ?glass1) (in ?water2 ?glass2)
        (is ?glass1 one)
        (is ?glass2 one)
        (is ?water1 one)

        (or (and(color ?water1 red)(color ?water2 red))
            (or (and(color ?water1 yellow)(color ?water2 yellow))
                (or (and(color ?water1 blue)(color ?water2 blue))
                    (or (and(color ?water1 green)(color ?water2 green))
                        (is ?glass2 zero)
                    )
                )        
            )        
        )       
    )
    :effect (and
        (is ?water2 two)
        (not (is ?water2 one))
        (not (in ?water1 ?glass1))
        (is ?glass2 two)
        (not (is ?glass2 one))
        (is ?glass1 zero)
        (not (is ?glass1 one))
        (free ?water1) 
    )
)

(:action pour1_Lv_four_glass_to_Lv_two_glass ;; pour1  4 -> 2
    :parameters (?glass1 ?glass2 - glass
                ?underwater1 ?water1 ?water2 - water                 
    )
    :precondition (and    
        (not(free ?water1)) (not(free ?underwater1)) (not(free ?water2))
        (top ?water1) (top ?water2) (in ?water1 ?glass1) (in ?water2 ?glass2)
        (is ?glass1 four)        
        (is ?glass2 two)
        (is ?water1 one)
        (on ?water1 ?underwater1)

        (or (and(color ?water1 red)(color ?water2 red))
            (or (and(color ?water1 yellow)(color ?water2 yellow))
                (or (and(color ?water1 blue)(color ?water2 blue))
                    (or (and(color ?water1 green)(color ?water2 green))
                        (is ?glass2 zero)
                    )
                )        
            )        
        )       
    )
    :effect (and
        (when 
            (and (is ?water2 two))
            (and 
                (is ?water2 three)
                (not (is ?water2 two))
            )
        )
        (when 
            (and (is ?water2 one))
            (and 
                (is ?water2 two)
                (not (is ?water2 one))
            )
        )       
        (not (on ?water1 ?underwater1))
        (not (in ?water1 ?glass1))
        (is ?glass2 three)
        (not (is ?glass2 two))
        (is ?glass1 three)
        (not (is ?glass1 four))  
        (top ?underwater1)  
        (free ?water1) 
    )
)

(:action pour1_Lv_three_glass_to_Lv_two_glass ;; pour1  3 -> 2
    :parameters (?glass1 ?glass2 - glass
                ?underwater1 ?water1 ?water2 - water                 
    )
    :precondition (and    
        (not(free ?water1)) (not(free ?underwater1)) (not(free ?water2))
        (top ?water1) (top ?water2) (in ?water1 ?glass1) (in ?water2 ?glass2)
        (is ?glass1 three)        
        (is ?glass2 two)
        (is ?water1 one)
        (on ?water1 ?underwater1)

        (or (and(color ?water1 red)(color ?water2 red))
            (or (and(color ?water1 yellow)(color ?water2 yellow))
                (or (and(color ?water1 blue)(color ?water2 blue))
                    (or (and(color ?water1 green)(color ?water2 green))
                        (is ?glass2 zero)
                    )
                )        
            )        
        )       
    )
    :effect (and
        (when 
            (and (is ?water2 two))
            (and 
                (is ?water2 three)
                (not (is ?water2 two))
            )
        )
        (when 
            (and (is ?water2 one))
            (and 
                (is ?water2 two)
                (not (is ?water2 one))
            )
        )    
        (not (on ?water1 ?underwater1))
        (not (in ?water1 ?glass1))
        (is ?glass2 three)
        (not (is ?glass2 two))
        (is ?glass1 two)
        (not (is ?glass1 three))  
        (top ?underwater1)  
        (free ?water1) 
    )
)

(:action pour1_Lv_two_glass_to_Lv_two_glass ;; pour1  2 -> 2
    :parameters (?glass1 ?glass2 - glass
                ?underwater1 ?water1 ?water2 - water                 
    )
    :precondition (and    
        (not(free ?water1)) (not(free ?underwater1)) (not(free ?water2))
        (top ?water1) (top ?water2) (in ?water1 ?glass1) (in ?water2 ?glass2)
        (is ?glass1 two)        
        (is ?glass2 two)
        (is ?water1 one)
        (on ?water1 ?underwater1)

        (or (and(color ?water1 red)(color ?water2 red))
            (or (and(color ?water1 yellow)(color ?water2 yellow))
                (or (and(color ?water1 blue)(color ?water2 blue))
                    (or (and(color ?water1 green)(color ?water2 green))
                        (is ?glass2 zero)
                    )
                )        
            )        
        )       
    )
    :effect (and
        (when 
            (and (is ?water2 two))
            (and 
                (is ?water2 three)
                (not (is ?water2 two))
            )
        )
        (when 
            (and (is ?water2 one))
            (and 
                (is ?water2 two)
                (not (is ?water2 one))
            )
        )     
        (not (on ?water1 ?underwater1))
        (not (in ?water1 ?glass1))
        (is ?glass2 three)
        (not (is ?glass2 two))
        (is ?glass1 one)
        (not (is ?glass1 two))  
        (top ?underwater1)  
        (free ?water1) 
    )
)

(:action pour1_Lv_one_glass_to_Lv_two_glass ;; pour1  1 -> 2
    :parameters (?glass1 ?glass2 - glass
                 ?water1 ?water2 - water                 
    )
    :precondition (and    
        (not(free ?water1)) (not(free ?water2))
        (top ?water1) (top ?water2) (in ?water1 ?glass1) (in ?water2 ?glass2)
        (is ?glass1 one)        
        (is ?glass2 two)
        (is ?water1 one)

        (or (and(color ?water1 red)(color ?water2 red))
            (or (and(color ?water1 yellow)(color ?water2 yellow))
                (or (and(color ?water1 blue)(color ?water2 blue))
                    (or (and(color ?water1 green)(color ?water2 green))
                        (is ?glass2 zero)
                    )
                )        
            )        
        )       
    )
    :effect (and
        (when 
            (and (is ?water2 two))
            (and 
                (is ?water2 three)
                (not (is ?water2 two))
            )
        )
        (when 
            (and (is ?water2 one))
            (and 
                (is ?water2 two)
                (not (is ?water2 one))
            )
        ) 
        (not (in ?water1 ?glass1))
        (is ?glass2 three)
        (not (is ?glass2 two))
        (is ?glass1 one)
        (not (is ?glass1 two))
        (free ?water1) 
    )
)

(:action pour1_Lv_four_glass_to_Lv_three_glass ;; pour1  4 -> 3
    :parameters (?glass1 ?glass2 - glass
                ?underwater1 ?water1 ?water2 - water                 
    )
    :precondition (and    
        (not(free ?water1)) (not(free ?underwater1)) (not(free ?water2))
        (top ?water1) (top ?water2) (in ?water1 ?glass1) (in ?water2 ?glass2)
        (is ?glass1 four)        
        (is ?glass2 three)
        (is ?water1 one)
        (on ?water1 ?underwater1)

        (or (and(color ?water1 red)(color ?water2 red))
            (or (and(color ?water1 yellow)(color ?water2 yellow))
                (or (and(color ?water1 blue)(color ?water2 blue))
                    (or (and(color ?water1 green)(color ?water2 green))
                        (is ?glass2 zero)
                    )
                )        
            )        
        )       
    )
    :effect (and
        (when 
            (and (is ?water2 three))
            (and 
                (is ?water2 four)
                (not (is ?water2 three))
            )
        )
        (when 
            (and (is ?water2 two))
            (and 
                (is ?water2 three)
                (not (is ?water2 two))
            )
        )
        (when 
            (and (is ?water2 one))
            (and 
                (is ?water2 two)
                (not (is ?water2 one))
            )
        )
        (not (on ?water1 ?underwater1))
        (not (in ?water1 ?glass1))
        (is ?glass2 four)
        (not (is ?glass2 three))
        (is ?glass1 three)
        (not (is ?glass1 four))  
        (top ?underwater1)  
        (free ?water1) 
    )
)

(:action pour1_Lv_three_glass_to_Lv_three_glass ;; pour1  3 -> 3
    :parameters (?glass1 ?glass2 - glass
                ?underwater1 ?water1 ?water2 - water                 
    )
    :precondition (and    
        (not(free ?water1)) (not(free ?underwater1)) (not(free ?water2))
        (top ?water1) (top ?water2) (in ?water1 ?glass1) (in ?water2 ?glass2)
        (is ?glass1 three)        
        (is ?glass2 three)
        (is ?water1 one)
        (on ?water1 ?underwater1)

        (or (and(color ?water1 red)(color ?water2 red))
            (or (and(color ?water1 yellow)(color ?water2 yellow))
                (or (and(color ?water1 blue)(color ?water2 blue))
                    (or (and(color ?water1 green)(color ?water2 green))
                        (is ?glass2 zero)
                    )
                )        
            )        
        )       
    )
    :effect (and
        (when 
            (and (is ?water2 three))
            (and 
                (is ?water2 four)
                (not (is ?water2 three))
            )
        )
        (when 
            (and (is ?water2 two))
            (and 
                (is ?water2 three)
                (not (is ?water2 two))
            )
        )
        (when 
            (and (is ?water2 one))
            (and 
                (is ?water2 two)
                (not (is ?water2 one))
            )
        )
        (not (on ?water1 ?underwater1))
        (not (in ?water1 ?glass1))
        (is ?glass2 four)
        (not (is ?glass2 three))
        (is ?glass1 two)
        (not (is ?glass1 three))  
        (top ?underwater1)  
        (free ?water1) 
    )
)

(:action pour1_Lv_two_glass_to_Lv_three_glass ;; pour1  2 -> 3
    :parameters (?glass1 ?glass2 - glass
                ?underwater1 ?water1 ?water2 - water                 
    )
    :precondition (and    
        (not(free ?water1)) (not(free ?underwater1)) (not(free ?water2))
        (top ?water1) (top ?water2) (in ?water1 ?glass1) (in ?water2 ?glass2)
        (is ?glass1 two)
        (is ?glass2 three)
        (is ?water1 one)
        (on ?water1 ?underwater1)

        (or (and(color ?water1 red)(color ?water2 red))
            (or (and(color ?water1 yellow)(color ?water2 yellow))
                (or (and(color ?water1 blue)(color ?water2 blue))
                    (or (and(color ?water1 green)(color ?water2 green))
                        (is ?glass2 zero)
                    )
                )        
            )        
        )       
    )
    :effect (and
        (when 
            (and (is ?water2 three))
            (and 
                (is ?water2 four)
                (not (is ?water2 three))
            )
        )
        (when 
            (and (is ?water2 two))
            (and 
                (is ?water2 three)
                (not (is ?water2 two))
            )
        )
        (when 
            (and (is ?water2 one))
            (and 
                (is ?water2 two)
                (not (is ?water2 one))
            )
        )
        (not (on ?water1 ?underwater1))
        (not (in ?water1 ?glass1))
        (is ?glass2 four)
        (not (is ?glass2 three))
        (is ?glass1 one)
        (not (is ?glass1 two))  
        (top ?underwater1)  
        (free ?water1) 
    )
)

(:action pour1_Lv_one_glass_to_Lv_three_glass ;; pour1  1 -> 3
    :parameters (?glass1 ?glass2 - glass
                 ?water1 ?water2 - water                 
    )
    :precondition (and    
        (not(free ?water1)) (not(free ?water2))
        (top ?water1) (top ?water2) (in ?water1 ?glass1) (in ?water2 ?glass2)
        (is ?glass1 one)
        (is ?glass2 three)
        (is ?water1 one)

        (or (and(color ?water1 red)(color ?water2 red))
            (or (and(color ?water1 yellow)(color ?water2 yellow))
                (or (and(color ?water1 blue)(color ?water2 blue))
                    (or (and(color ?water1 green)(color ?water2 green))
                        (is ?glass2 zero)
                    )
                )        
            )        
        )       
    )
    :effect (and
        (when 
            (and (is ?water2 three))
            (and 
                (is ?water2 four)
                (not (is ?water2 three))
            )
        )
        (when 
            (and (is ?water2 two))
            (and 
                (is ?water2 three)
                (not (is ?water2 two))
            )
        )
        (when 
            (and (is ?water2 one))
            (and 
                (is ?water2 two)
                (not (is ?water2 one))
            )
        )
        (not (in ?water1 ?glass1))
        (is ?glass2 four)
        (not (is ?glass2 three))
        (is ?glass1 zero)
        (not (is ?glass1 one))  
        (free ?water1) 
    )
)

(:action pour2_Lv_four_glass_to_Lv_zero_glass ;; pour2  4 -> 0
    :parameters (?glass1 ?glass2 - glass
                ?underwater1 ?water1 - water                 
    )
    :precondition (and
        (not(free ?water1)) (not(free ?underwater1))  
        (top ?water1) (in ?water1 ?glass1)
        (is ?glass1 four)        
        (is ?glass2 zero)        
        (is ?water1 two)
        (on ?water1 ?underwater1)        
    )
    :effect (and
        (on ?water1 nowater)
        (not (on ?water1 ?underwater1))
        (in ?water1 ?glass2)
        (not (in ?water1 ?glass1))
        (is ?glass2 two)
        (not (is ?glass2 zero))
        (is ?glass1 two)
        (not (is ?glass1 four))  
        (top ?underwater1)   
    )
)

(:action pour2_Lv_three_glass_to_Lv_zero_glass ;; pour2  3 -> 0
    :parameters (?glass1 ?glass2 - glass
                ?underwater1 ?water1 - water                 
    )
    :precondition (and
        (not(free ?water1)) (not(free ?underwater1))  
        (top ?water1) (in ?water1 ?glass1)
        (is ?glass1 three)        
        (is ?glass2 zero)        
        (is ?water1 two)
        (on ?water1 ?underwater1)        
    )
    :effect (and
        (on ?water1 nowater)
        (not (on ?water1 ?underwater1))
        (in ?water1 ?glass2)
        (not (in ?water1 ?glass1))
        (is ?glass2 two)
        (not (is ?glass2 zero))
        (is ?glass1 one)
        (not (is ?glass1 three))  
        (top ?underwater1)   
    )
)

(:action pour2_Lv_four_glass_to_Lv_one_glass ;; pour2  4 -> 1
    :parameters (?glass1 ?glass2 - glass
                ?underwater1 ?water1 ?water2 - water                 
    )
    :precondition (and    
        (not(free ?water1)) (not(free ?underwater1)) (not(free ?water2))
        (top ?water1) (top ?water2) (in ?water1 ?glass1) (in ?water2 ?glass2)
        (is ?glass1 four)        
        (is ?glass2 one)        
        (is ?water1 two)
        (on ?water1 ?underwater1)

        (or (and(color ?water1 red)(color ?water2 red))
            (or (and(color ?water1 yellow)(color ?water2 yellow))
                (or (and(color ?water1 blue)(color ?water2 blue))
                    (or (and(color ?water1 green)(color ?water2 green))
                        (is ?glass2 zero)
                    )
                )        
            )        
        )       
    )
    :effect (and
        (is ?water2 three)
        (not (is ?water2 one))
        (not (on ?water1 ?underwater1))
        (not (in ?water1 ?glass1))
        (is ?glass2 three)
        (not (is ?glass2 one))
        (is ?glass1 two)
        (not (is ?glass1 four))
        (top ?underwater1)
        (free ?water1)
    )
)

(:action pour2_Lv_three_glass_to_Lv_one_glass ;; pour2  3 -> 1
    :parameters (?glass1 ?glass2 - glass
                ?underwater1 ?water1 ?water2 - water                 
    )
    :precondition (and    
        (not(free ?water1)) (not(free ?underwater1)) (not(free ?water2))
        (top ?water1) (top ?water2) (in ?water1 ?glass1) (in ?water2 ?glass2)
        (is ?glass1 three)        
        (is ?glass2 one)        
        (is ?water1 two)
        (on ?water1 ?underwater1)

        (or (and(color ?water1 red)(color ?water2 red))
            (or (and(color ?water1 yellow)(color ?water2 yellow))
                (or (and(color ?water1 blue)(color ?water2 blue))
                    (or (and(color ?water1 green)(color ?water2 green))
                        (is ?glass2 zero)
                    )
                )        
            )        
        )       
    )
    :effect (and
        (is ?water2 three)
        (not (is ?water2 one))
        (not (on ?water1 ?underwater1))
        (not (in ?water1 ?glass1))
        (is ?glass2 three)
        (not (is ?glass2 one))
        (is ?glass1 one)
        (not (is ?glass1 three))
        (top ?underwater1)
        (free ?water1)
    )
)

(:action pour2_Lv_two_glass_to_Lv_one_glass ;; pour2  2 -> 1
    :parameters (?glass1 ?glass2 - glass
                 ?water1 ?water2 - water                 
    )
    :precondition (and    
        (not(free ?water1)) (not(free ?water2))
        (top ?water1) (top ?water2) (in ?water1 ?glass1) (in ?water2 ?glass2)
        (is ?glass1 two)        
        (is ?glass2 one)        
        (is ?water1 two)

        (or (and(color ?water1 red)(color ?water2 red))
            (or (and(color ?water1 yellow)(color ?water2 yellow))
                (or (and(color ?water1 blue)(color ?water2 blue))
                    (or (and(color ?water1 green)(color ?water2 green))
                        (is ?glass2 zero)
                    )
                )        
            )        
        )       
    )
    :effect (and
        (is ?water2 three)
        (not (is ?water2 one))
        (not (in ?water1 ?glass1))
        (is ?glass2 three)
        (not (is ?glass2 one))
        (is ?glass1 one)
        (not (is ?glass1 three))
        (free ?water1)
    )
)

(:action pour2_Lv_four_glass_to_Lv_two_glass ;; pour2  4 -> 2
    :parameters (?glass1 ?glass2 - glass
                ?underwater1 ?water1 ?water2 - water                 
    )
    :precondition (and    
        (not(free ?water1)) (not(free ?underwater1)) (not(free ?water2))
        (top ?water1) (top ?water2) (in ?water1 ?glass1) (in ?water2 ?glass2)
        (is ?glass1 four)        
        (is ?glass2 two)
        (is ?water1 two)
        (on ?water1 ?underwater1)

        (or (and(color ?water1 red)(color ?water2 red))
            (or (and(color ?water1 yellow)(color ?water2 yellow))
                (or (and(color ?water1 blue)(color ?water2 blue))
                    (or (and(color ?water1 green)(color ?water2 green))
                        (is ?glass2 zero)
                    )
                )        
            )        
        )       
    )
    :effect (and
        (when 
            (and (is ?water2 two))
            (and 
                (is ?water2 four)
                (not (is ?water2 two))
            )
        )
        (when 
            (and (is ?water2 one))
            (and 
                (is ?water2 three)
                (not (is ?water2 one))
            )
        )
        (not (on ?water1 ?underwater1))
        (not (in ?water1 ?glass1))
        (is ?glass2 four)
        (not (is ?glass2 two))
        (is ?glass1 two)
        (not (is ?glass1 four))  
        (top ?underwater1)  
        (free ?water1) 
    )
)

(:action pour2_Lv_three_glass_to_Lv_two_glass ;; pour2  3 -> 2
    :parameters (?glass1 ?glass2 - glass
                ?underwater1 ?water1 ?water2 - water                 
    )
    :precondition (and    
        (not(free ?water1)) (not(free ?underwater1)) (not(free ?water2))
        (top ?water1) (top ?water2) (in ?water1 ?glass1) (in ?water2 ?glass2)
        (is ?glass1 three)
        (is ?glass2 two)
        (is ?water1 two)
        (on ?water1 ?underwater1)

        (or (and(color ?water1 red)(color ?water2 red))
            (or (and(color ?water1 yellow)(color ?water2 yellow))
                (or (and(color ?water1 blue)(color ?water2 blue))
                    (or (and(color ?water1 green)(color ?water2 green))
                        (is ?glass2 zero)
                    )
                )        
            )        
        )       
    )
    :effect (and
        (when 
            (and (is ?water2 two))
            (and 
                (is ?water2 four)
                (not (is ?water2 two))
            )
        )
        (when 
            (and (is ?water2 one))
            (and 
                (is ?water2 three)
                (not (is ?water2 one))
            )
        )
        (not (on ?water1 ?underwater1))
        (not (in ?water1 ?glass1))
        (is ?glass2 four)
        (not (is ?glass2 two))
        (is ?glass1 one)
        (not (is ?glass1 three))
        (top ?underwater1)  
        (free ?water1) 
    )
)

(:action pour2_Lv_two_glass_to_Lv_two_glass ;; pour2  2 -> 2
    :parameters (?glass1 ?glass2 - glass
                 ?water1 ?water2 - water                 
    )
    :precondition (and    
        (not(free ?water1)) (not(free ?water2))
        (top ?water1) (top ?water2) (in ?water1 ?glass1) (in ?water2 ?glass2)
        (is ?glass1 two)
        (is ?glass2 two)
        (is ?water1 two)

        (or (and(color ?water1 red)(color ?water2 red))
            (or (and(color ?water1 yellow)(color ?water2 yellow))
                (or (and(color ?water1 blue)(color ?water2 blue))
                    (or (and(color ?water1 green)(color ?water2 green))
                        (is ?glass2 zero)
                    )
                )        
            )        
        )       
    )
    :effect (and
        (when 
            (and (is ?water2 two))
            (and 
                (is ?water2 four)
                (not (is ?water2 two))
            )
        )
        (when 
            (and (is ?water2 one))
            (and 
                (is ?water2 three)
                (not (is ?water2 one))
            )
        )
        (not (in ?water1 ?glass1))
        (is ?glass2 four)
        (not (is ?glass2 two))
        (is ?glass1 zero)
        (not (is ?glass1 two))
        (free ?water1) 
    )
)

(:action pour3_Lv_four_glass_to_Lv_zero_glass ;; pour3  4 -> 0
    :parameters (?glass1 ?glass2 - glass
                ?underwater1 ?water1 - water                 
    )
    :precondition (and
        (not(free ?water1)) (not(free ?underwater1))  
        (top ?water1) (in ?water1 ?glass1)
        (is ?glass1 four)        
        (is ?glass2 zero)        
        (is ?water1 three)
        (on ?water1 ?underwater1)        
    )
    :effect (and
        (on ?water1 nowater)
        (not (on ?water1 ?underwater1))
        (in ?water1 ?glass2)
        (not (in ?water1 ?glass1))
        (is ?glass2 three)
        (not (is ?glass2 zero))
        (is ?glass1 one)
        (not (is ?glass1 four))  
        (top ?underwater1)   
    )
)

(:action pour3_Lv_three_glass_to_Lv_one_glass ;; pour2  3 -> 1
    :parameters (?glass1 ?glass2 - glass
                 ?water1 ?water2 - water                 
    )
    :precondition (and    
        (not(free ?water1)) (not(free ?water2))
        (top ?water1) (top ?water2) (in ?water1 ?glass1) (in ?water2 ?glass2)
        (is ?glass1 three)
        (is ?glass2 one)
        (is ?water1 three)

        (or (and(color ?water1 red)(color ?water2 red))
            (or (and(color ?water1 yellow)(color ?water2 yellow))
                (or (and(color ?water1 blue)(color ?water2 blue))
                    (or (and(color ?water1 green)(color ?water2 green))
                        (is ?glass2 zero)
                    )
                )        
            )        
        )       
    )
    :effect (and
        (is ?water2 four)
        (not (is ?water2 one))
        (not (in ?water1 ?glass1))
        (is ?glass2 four)
        (not (is ?glass2 one))
        (is ?glass1 zero)
        (not (is ?glass1 three))
        (free ?water1)
    )
)
)
                      
