What we know about arrays is all a lie. Ruby and JavaScript `arrays` are actually `lists`. 

A real array in other languages is of fixed length. You should only be able to get and set a value.

What we have been using is actually more like a list. A list can be of varying length. And we can do more things with it.

in this exercise, we can do the same things in a non-Ruby/JS array, we just have to account for capacity. We will do this by creating an
array with one length and never adding more past that length
without specicially manually creating a totally new array. This
will guarantee the programming language is not growing the array
itself. We will also use JS/Ruby array like methods. 


Lets see some methods to help us.
