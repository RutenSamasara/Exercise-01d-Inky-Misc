/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = 0 //  0 Morning, 1 Noon, 2 Night




-> seashore

== seashore ==
You are sitting on the beach. 
It is {advance_time() } 

+ [Stroll down the beach] -> seashore
+[Enter the maple forest] -> forest
-> DONE

== beach2 ==
This is further down the beach.

It is {advance_time() } 
*{time == 1} [Pick up some seashells]-> shells
+ [Stroll back up the beach] -> seashore
== forest ==
A golden shining forest.
It is {advance_time()}.
+[Go deeper] -> village
+[Return] -> beach2

== village==
A peaceful village
It is {advance_time()}

+[leave] -> forest

== shells ==
You pick up the shells
-> beach2

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    /*
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    */
    
        
    ~ return time
    
    
    
