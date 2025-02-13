# OO Ruby pt 2

### Lecture Deliverables

- Refactor initialize method to use keyword arguments
- Utilize mass assignment inside initialize method
- Save all instances of class
- Create a class method `.all` that returns all class instances
- Create a class method `.find` that accepts a name as an argument. The method will find the instance that matches the name.
- Create a starships_list class method that will print out details for each starship instance

### Lecture Take Aways

- Class Methods
- Class Variables
- Keyword Arguments
- Mass Assignment

#### Class Variables

- Syntax: double @ signs

```
@@all
```

#### Class Methods

- Syntax: method begins with self

```
self.all
```

#### Remembering Objects

- To save new instances of a class:

1. Create a class variable set to an empty array
2. Upon creation, add new instance to to array

```
@@all = []

def initialize(name, model)
    ...
    @@all << self
end
```

#### Keyword arguments
- When using the initialize method, it is really important to maintain the order in which the arguments are defined. 
- Using keyword arguments, order does not matter.
- Will also be beneficial for utilizing mass assignment 

```
def initialize(name:, model:)
    @name = name
    @model = model
end
```

#### Mass Assignment

- The following code takes in a hash, iterates over it and uses the `.send` method to set attributes on the new instance. 

```
def initialize(attributes)
    attributes.each do |key, value| 
        self.send("#{key}=", value)
    end
end 
```

#### Private Methods

- Methods that are private to a class, can not be called upon in another class
- Use keyword `private`

