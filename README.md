# ActionScript 3 Collision Detection Bug

This repository demonstrates a common error in ActionScript 3 collision detection using the `getBounds()` method.  The issue arises when attempting to detect collisions between display objects that reside on different display lists or are nested within different containers.  The `getBounds()` method, when called with a parent object as an argument, returns a rectangle that is relative to that parent. Therefore, if the objects aren't on the same parent, it causes incorrect bounding box calculations, leading to inaccurate collision detection.

## Bug Description
The provided `checkCollision` function uses `getBounds()` to obtain the bounding rectangles of two display objects. However, if these objects have different parent objects, the resulting rectangles will be relative to their respective parents, resulting in the inaccurate detection of collisions.  This is demonstrated in the provided `bug.as` file.

## Solution
The solution is to ensure that the bounding boxes are calculated relative to a common ancestor.  This can be done by using the global coordinates of the display objects, either by using the `localToGlobal()` method or by finding a common parent and calculating the bounding boxes relative to that common parent. The corrected code is in `bugSolution.as`.
