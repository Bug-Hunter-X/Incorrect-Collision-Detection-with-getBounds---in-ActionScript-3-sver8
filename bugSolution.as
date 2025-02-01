function checkCollision(obj1:DisplayObject, obj2:DisplayObject):Boolean {
  // Get global bounds
  var rect1:Rectangle = obj1.getBounds(obj1.stage);
  var rect2:Rectangle = obj2.getBounds(obj2.stage);
  return rect1.intersects(rect2);
}

// Alternative solution (Finding a common parent)
function checkCollision2(obj1:DisplayObject, obj2:DisplayObject):Boolean {
  var commonParent:DisplayObject = findCommonParent(obj1, obj2);
  var rect1:Rectangle = obj1.getBounds(commonParent);
  var rect2:Rectangle = obj2.getBounds(commonParent);
  return rect1.intersects(rect2);
}

function findCommonParent(obj1:DisplayObject, obj2:DisplayObject):DisplayObject {
  var parent1:DisplayObject = obj1.parent;
  var parent2:DisplayObject = obj2.parent;

  while (parent1 != parent2 && parent1 != null) {
    parent1 = parent1.parent;
  }
  return parent1;
}

// ... later in your code ...
if (checkCollision(myMovieClip, myOtherMovieClip)) {
  trace("Collision detected!");
}