;; problem file: blocksword-prob1.pddl

(define (problem watersortpuzzle-prob)
    (:domain watersortpuzzle)
    (:objects                    
        glass1 glass2 glass3 glass4 glass5 glass6 glass7 - glass
        nowater water1 water2 water3 water4 water5 water6 water7 water8 water9 water10 water11 water12 water13 water14 water15 water16 - water
        zero one two three four red yellow green blue
    )
    (:init 
        (is glass1 four) (is glass2 four) (is glass3 four) (is glass4 four) (is glass5 zero) (is glass6 zero) (is glass7 zero)
        
        (is water1 one) (is water2 one) (is water3 one) (is water4 one) 
        (is water5 one) (is water6 one) (is water7 one) (is water8 one) 
        (is water9 one) (is water10 one) (is water11 one) (is water12 one) 
        (is water13 one) (is water14 one) (is water15 one) (is water16 one)

        (in water1 glass1) (in water2 glass1) (in water3 glass1) (in water4 glass1) 
        (in water5 glass2) (in water6 glass2) (in water7 glass2) (in water8 glass2) 
        (in water9 glass3) (in water10 glass3) (in water11 glass3) (in water12 glass3) 
        (in water13 glass4) (in water14 glass4) (in water15 glass4) (in water16 glass4)

        (top water4) (top water8) (top water12) (top water16)

        (on water1 nowater) (on water2 water1) (on water3 water2) (on water4 water3)
        (on water5 nowater) (on water6 water5) (on water7 water6) (on water8 water7)
        (on water9 nowater) (on water10 water9) (on water11 water10) (on water12 water11)
        (on water13 nowater) (on water14 water13) (on water15 water14) (on water16 water15)

        (color water4 red) (color water7 red) (color water11 red) (color water14 red)
        (color water1 green) (color water6 green) (color water10 green) (color water15 green)
        (color water2 blue) (color water8 blue) (color water9 blue) (color water16 blue)
        (color water3 yellow) (color water5 yellow) (color water12 yellow) (color water13 yellow)

        
    )
    (:goal (and 
    
        )    
    )
)