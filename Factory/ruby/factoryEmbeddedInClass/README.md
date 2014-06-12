Factory in Ruby
===============

Here we make the class act as its own factory taking advantage of Ruby being a dynamic language. Example based [stackflow](http://stackoverflow.com/questions/746207/ruby-design-pattern-how-to-make-an-extensible-factory-class).


To note in this implementation is that the class variable `@@types` is shared with *_all_* the subclasses!

Also `self` is used to create a _class method_: The trick is that when you use `self` within a class method it refers to the class. When you use `self` whithin an instance method, it refers to the instance. More on this at [Stackoverflow](http://stackoverflow.com/questions/6669527/use-of-ruby-self-keyword).

