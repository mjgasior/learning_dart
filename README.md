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