# 🚀 Unit 4: OOP & Inheritance - Complete Study Guide with Code

## 1. OOP in General
**Object-Oriented Programming (OOP)** is a software design paradigm that bundles data (state) and behavior (actions) together into individual entities called **objects**. 
* **Why is it important?** As programs scale, keeping track of scattered variables and functions becomes impossible. OOP organizes code into self-contained, manageable pieces.
* **Why is it dominant?** By keeping data and behaviors bundled together, it allows developers to build scalable, organized, and reusable code bases without data floating around aimlessly.

---

## 2. Objects and Classes


* **Class (The Blueprint):** A template that defines the data and behaviors an entity will have. The programmer writes this blueprint.
* **Object (The Instance):** A specific, physical manifestation created from the class blueprint. Java creates these dynamically at runtime in the computer's memory, and they only live while the program is running.

```java
// This is the CLASS (Blueprint)
public class Dog {
    // We will add variables and methods here
}

// Somewhere else in your main program...
// These are OBJECTS (Instances) created at runtime by Java
Dog buddy = new Dog();
Dog rex = new Dog();
```

---

## 3. Instance Variables, Methods, and Encapsulation


* **Instance Variables (State):** Data belonging to a specific object. Each object gets its own copy. They are declared inside the class but outside any methods.
* **Instance Methods (Behavior):** Actions an object can perform using its own data.
* **Difference from "Regular" Methods:** Regular (`static`) methods belong to the whole class, whereas instance methods belong to specific, instantiated objects.
* **Encapsulation:** The practice of hiding data inside the object using access modifiers (`private`, `protected`, `public`).
    * `private`: Only the class itself can see/change it. Outsiders cannot.
    * `protected`: The class and its children (subclasses) can see/change it directly.
    * `public`: Anyone can see/change it.

```java
public class Student {
    // Instance Variables (Encapsulated / Hidden)
    private String name;
    private int grade;

    // Instance Method (Behavior)
    public void study() {
        System.out.println(name + " is studying hard!");
    }
}
```

---

## 4. Constructors & Overloading
* **Constructors:** Special methods used to initialize an object's state when it is created. 
    * They have **no return type** (not even `void`).
    * They share the **exact same name as the class**. 
    * They can take parameters to set initial values.
    * They are triggered using the `new` command.
* **Overloading:** Creating multiple methods or constructors with the *same name* but *different parameters*. Java automatically knows which one to call based on the arguments you provide.

```java
public class Rectangle {
    private int width;
    private int height;

    // Default Constructor (No parameters)
    public Rectangle() {
        width = 1;
        height = 1;
    }

    // Overloaded Constructor (With parameters)
    public Rectangle(int w, int h) {
        width = w;
        height = h;
    }
}

// Running the constructors using 'new':
Rectangle r1 = new Rectangle();       // Calls the first constructor
Rectangle r2 = new Rectangle(5, 10);  // Calls the overloaded constructor
```

---

## 5. Accessors and Mutators (Getters & Setters)
Because our instance variables are `private` (encapsulated), outside classes need a safe way to interact with them. Think of these as the "drive-through window" for your data. They play a vital role in the encapsulation model by letting the object control its own data safely.

```java
public class Player {
    private int health;

    // Accessor (Getter) - Safely read the data
    public int getHealth() {
        return health;
    }

    // Mutator (Setter) - Safely change the data (with validation!)
    public void setHealth(int h) {
        if (h >= 0 && h <= 100) { // Reject bad data!
            health = h;
        }
    }
}
```

---

## 6. Inheritance & Factoring Code


Inheritance allows you to create a **Superclass (Parent)** that holds shared data and methods, and **Subclasses (Children)** that inherit everything from the parent. 
* **Factoring Code:** Moving shared code (like a `damage()` method) into the parent class drastically reduces redundancy and copy-pasting (as seen in Lesson 2.5).
* **Syntax:** Use the `extends` keyword to make a class inherit from another.

```java
// SUPERCLASS
public class Enemy {
    // 'protected' means hidden from the world, but visible to children!
    protected int health = 100; 

    public void takeDamage(int amount) {
        health -= amount;
    }
}

// SUBCLASS
public class Zombie extends Enemy {
    // Automatically inherits 'health' and 'takeDamage()'
    
    public void bite() {
        System.out.println("Zombie bites you!");
    }
}
```

---

## 7. Abstract Classes & The Power of Promises
* **Abstract Superclass:** A class labeled `abstract` cannot be instantiated directly (e.g., `new Vehicle()` is forbidden). It changes the role of the class to be purely a template/blueprint for its children.
* **Abstract Methods:** Methods with no code body (just a semicolon). They act as a **promise**. They force every child class to write their own specific version of the method, otherwise, the code won't compile. (Note: The same polymorphic effect can be achieved with public methods in the superclass that get inherited/overridden, but abstract methods absolutely *guarantee* the subclass implements them).

```java
// Abstract Superclass - Cannot do: new Vehicle();
public abstract class Vehicle {
    protected int speed;

    // Abstract Method - The "Promise" (No brackets, just a semicolon)
    // Every child class MUST write their own drive() method.
    public abstract void drive(); 
}

// Concrete Subclass
public class Car extends Vehicle {
    
    // Fulfilling the promise (Method Overriding)
    @Override
    public void drive() {
        System.out.println("The car drives on four wheels.");
        speed += 10;
    }
}
```