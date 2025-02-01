function checkCollision(obj1:DisplayObject, obj2:DisplayObject):Boolean {
  var rect1:Rectangle = obj1.getBounds(obj1.parent);
  var rect2:Rectangle = obj2.getBounds(obj2.parent);
  return rect1.intersects(rect2);
}

// ... later in your code ...

if (checkCollision(myMovieClip, myOtherMovieClip)) {
  trace("Collision detected!");
}

//Problem: This code will only detect collisions if both objects are on the same parent object.
//If the objects exist on different display lists or nested inside containers, getBounds() will return incorrect results. 