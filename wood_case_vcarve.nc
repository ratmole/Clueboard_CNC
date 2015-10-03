(Clueboard wooden case)
(2015 Oct 3, Zach White, Clueboard)
( *** UNPROVEN PROGRAM *** )
( Origin: Top left of stock )
( Material: Hardwood )
( Tool: 90 degree V-carve bit )

(Defaults:)
G17 G21 G40 G49 G80 G90 G94 G54

(Start by going to 0,0,5. Hope you homed the machine first.)
G0 Z5
G0 X0 Y0

(Draw the line for the left side)
G1 Z-1
G1 Y-205
G1 Z5

(Draw the box that needs to be cut out)
G0 X15 Y-18.175
G1 Z-3
G1 X328
G1 Y-113.175
G1 X
G0 Z5

(Draw the line for the right side)
G0 X347 Y0
G1 Z-1
G1 Y-205
G1 Z5

(End at 0,0 for the next board)
G0 Y0 Z100
