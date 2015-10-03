G-code for making computer keyboard cases.
==========================================

This repository contains scripts and generated g-code for machining keyboard
cases out of hardwood. You can use these as-is to make Clueboard cases, or
you can modify the parameters in parse_templates to create a case of your own.

Prerequisites
-------------
* Python 2.7 or later
* Jinja2 2.8 or later

If you do not already have jinja2 installed you can use easy_install to 
fetch it:

  $ sudo easy_install jinja2

Machining Workflow
------------------

1. Install 1/4" endmill
2. Place workpiece on table
3. Align workpiece with edge of tool. This will be the 0 of your X axis.
4. Screw down the closest corner
5. Jog router along X axis to end of workpiece
6. Press workpiece against edge of tool. Your workpiece should now be 
   aligned with the X axis.
6. Screw down remaining corners
7. Jog endmill so it is touching the edge of the workpiece where you want 0,0
8. Home X/Y
9. Install 90º vcarve bit
10. Home Z
11. Run wood_case_vcarve.nc
12. Home X/Y
13. Repeat steps 12 and 13 until workpiece has no more room
14. Run wood_case_move_left.nc, Home X/Y
15. Repeat step 15 until tool is back at first keyboard's 0,0
16. Install 1/4" upcut endmill
17. Home Z
18. Run wood_case_endmill_rough.nc, Home X/Y
19. Repeat step 18 until all boards have been cut
20. Run wood_case_move_left.nc, Home X/Y
21. Repeat step 20 until tool is back at first keyboard's 0,0
22. Install 1/4" straight endmill
23. Home Z
24. Run wood_case_endmill_finishing.nc, Home X/Y
25. Repeat step 24 until all boards have been finished
26. Using table saw cut cases at line
27. Use router on 8 edges of top and bottom of case to round off corners
