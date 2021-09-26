# Learning dart

This repo is based on lessons leared through the book *Dart Apprentice* by **Jonathan Sande** and **Matt Galloway**.

## Chapter 1: Hello, Dart!

* to run the app run `dart run .\bin\hello_dart_project.dart`
* to bootstrap a new app run `dart create project_name` (Dart syntax needs underscore separators)
* to set up the VSC debugger you need `launch.json` file defined

## Chapter 2: Expressions, Variables & Constants

* comments work as usually with `//` and `/* ... */`
* Dart also has documentation comments using `///` and `/** * */` notation
* truncating division cuts the cuts out the rest after division - its operator is `~/`
* Dart has a math library with most popular functions and consts like *sin* or *pi* value
* everything derives from `Object` so you can call `3.1423.round()` or `42.isEven` on numbers
* there is `dynamic` type that can get everything (but it is not recommended to be used)
* `var` type assigns the type based on what value is being assigned to the variable

## Chapter 3: Types & Operations

* `double` and `int` are subtypes of `num`
* conversions need to be explicit, that is why there is for example `.toInt()` and `.toDouble()` methods
* `num` type does not have `isEven` method
* you can't cast `double` to `int` and vice versa - you should use the dedicated methods for conversion
* UTF-16 has a special way of encoding code points higher than 65,536 by using two code units called surrogate pairs
* Dart uses `runes` to represent the Unicode values of surrogate pairs as one
* **Zero Width Joiner** or **ZWJ** is a character that allows to create clusters of emojis (*Unicode extended grapheme cluster*)
* string interpolation works with `$`, but if a function is necessary, use it with braces - `${ }`
* multiline strings are defined with `'''`
* raw strings that ignore characters like `\n` are annotated with `r`, for example - `r'the \n the string'`
* a declared `var` without initialization will be defaulted to `dynamic` type
* `Object?` and `dynamic` are almost the same - use `Object?` to say that you want this type to be not strict and use `dynamic` when you don't know what the type is 

## Chapter 4: Control Flow

* in *boolean* operators precedence, the `!` is first, greater/less (or equal) symbols are next, `==` and `!=` equality symbols afterwards
* Dart has *ternary operators* but keep in mind that:

> The ternary conditional operator makes basic if-else statements much more compact, which in turn can make your code more readable.
> 
> However, for situations where using this operator makes your code less readable, then stick with the full if-else statement. Readability is always more important than fancy programming tricks that give the same result.

* adding a comma after the last item in *enum* type formats the list vertically - to keep it horizontal, remove the last comma (works with other lists too)
* Dart has `for-in` loops for going through collections and `for-each` loops that can be invoked directly on the collection object

## Chapter 5: Functions

> It’s easy to get the words parameter and argument mixed up. A parameter is the name and type that you define as an input for your function. An argument, on the other hand, is the actual value that you pass in. A parameter is abstract, while an argument is concrete.

* optional parameters are declared with square braces like `[String? name]` and can have a default value like `[String name = 'Mike']`
* named parameters are created with curly braces like `{ required String name, int age = 20 }` - add a `required` keyword to make that parameter not optional

## Chapter 6: Classes

> In Dart naming conventions, acronyms are treated as words. Thus, toJson is a better name than toJSON.

* from Dart 2.0 the `new` keyword for class instance creation is optional and actually should not be used
* you can assign multiple properties for your class with *cascade notation* which uses `..` symbol

> In Dart the convention is to put the constructor before the property variables.

* there are *long form* and *short form* constructors in Dart
* Dart has also *named constructors* which allow to create a different type of constructor for the same class
* a *named constructor* can be simplified by *forwarding constructor*, that is, refering to other constructors
* one can also add optional and named parameters to constructors
* private variables are created by adding underscore before the name - for example `_name`
* the underscored variables are only **library** private, not **class** private
* named parameters can’t start with an underscore so if you have private variables initialized in a constructor, you need to map them, for example `User({int id = 0}) : _id = id;`
* the *initializer lists* can also have **assertions** of the arguments, but then you need to run the `--enable-asserts` argument (`dart run --enable-asserts`)
* add `const` keyword in front of the constructor to make the class immutable

> In addition to being immutable, another benefit of const variables is that they’re **canonical instances**, which means that no matter how many instances you create, as long as the properties used to create them are the same, Dart will only see a single instance.

> Flutter uses this pattern frequently with its const widget classes in the user interface of your app. Since Flutter knows that the const widgets are immutable, it doesn’t have to waste time recalculating and drawing the layout when it finds these widgets.

* factories can be created by using `factory` keyword in front of the constructor - it's a *generative constructor*

> factory constructor is basically a special method that starts with the factory keyword and returns an object of the class type

> the factory constructor body allows you to perform some work before returning the new object, without exposing the inner wiring of that instantiation process to whoever is using the class

> Using a factory constructor over a named constructor can also help to prevent breaking changes for subclasses of your class.

* you can achieve the **singleton** design pattern by utilizing the *factory constructor*

> Factory constructors in many ways are just like static methods, but there are a few differences

## Chapter 7: Nullability

> Starting with version 2.12, Dart separated its types into nullable and non-nullable. Nullable types end with a question mark (?) while non-nullable types do not.

> Dart types are non-nullable by default. That means they’re guaranteed to never contain the value null, which is the essence of the meaning of sound in the phrase “sound null safety”. 

* type without a question mark could be null if you use the `late` keyword, but technically this is opting out of sound *null safety*

> The non-nullable type is a subtype of its nullable form. For example, `String` is a subtype of `String?` since `String?` can be a `String`.

* **type promotion** is a thing where if you assign early a value to a *nullable* type instance, it will not be treated as if it might be of `null` value and the compiler will *promote* it to a *non-nullable* type - it works also for more complicated situations through the process of **flow analysis**

* null operators in Dart:
    * if-null operator (??)
    * null-aware assignment operator (??=)
    * null-aware access operator (?.) or null-aware method invocation operator
    * null-aware method invocation operator (?.)
    * null assertion operator (!) or bang operator 
    * null-aware cascade operator (?..)
    * null-aware index operator (?[])
    * null-aware spread operator (...?)

> When you create an object from a class, Dart requires you to initialize any non-nullable member variables before you use them.

* there is no *type promotion* for non-local variables - if you use a variable in a method that has a bigger scope, it cannot be assured that its value won't change in between null-check and usage - one can solve it with the *bang operator* or *shadowing* (assign the nullable variable to a local one first)

> Using `late` means that Dart doesn’t initialize the variable right away. It only initializes it when you access it the first time. This is also known as **lazy initialization**. It’s like procrastination for variables.

> using `late` means that you’re promising Dart that you’ll initialize the field before it’s ever used. This moves checking from compile-time to runtime

* **lazy initialization** is never done until you actually use the variable so it is of great benefit when an initialization needs heavy calculations

## Chapter 8: Collections

* a list with `final` only keeps the reference to the list immutable, but allows manipulation - **deeply immutable lists** are created with `const` keyword - this does not allow any operation on a list
* you can also have a constant list initialized in runtime with `final` variable and `const` list (for example `final x = const ['a']`)
* runtime initialized constant list can be also created with a special constructor - `List.unmodifiable` 