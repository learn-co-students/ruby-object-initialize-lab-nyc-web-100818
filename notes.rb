Lucky for us, there is! It's called the #initialize method.

The #initialize Method
We already know that any Ruby class can produce new instances of itself, via the <Class Name>.new method, whether or not that class has an #initialize method. However, if we want each instance of our class to be created with certain attributes, we must define an #initialize method. An #initialize method is a method that is called automatically whenever #new is used.

Let's define an #initialize method that takes in an argument of a dog's breed and sets a @breed variable equal to that argument. In other words, let's define our #initialize method to contain the functionality of the #breed= method, so that a dog instance will get a breed assigned to it right away when it is created, without us having to explicitly use the #breed= method.

Defining an #initialize method
class Dog
  def initialize(breed)
    @breed = breed
  end

  def breed=(breed)
    @breed = breed
  end

  def breed
    @breed
  end
end
Now, we can call #new like this:

lassie = Dog.new("Collie")

lassie.breed #=> "Collie"
How does it work?
When #new is called with an argument, it will pass that argument (or arguments) to the #initialize method and invoke that method. The code in #initialize will then run, using any arguments from #new.

The initialize method is what's called a callback method, because it is automatically invoked every time the #new method is used to create a new instance of the class.

You can also think of the initialize method as a constructor method. A constructor method is invoked upon the creation of an instance of a class and used to help define the instance of that class.
