# Learning dart

This repo is based on lessons leared through the book *Dart Apprentice* by **Jonathan Sande** and **Matt Galloway**.

## Chapter 1

* to run the app run `dart run .\bin\hello_dart_project.dart`
* to bootstrap a new app run `dart create project_name` (Dart syntax needs underscore separators)
* to set up the VSC debugger you need `launch.json` file defined

## Chapter 2

* comments work as usually with `//` and `/* ... */`
* Dart also has documentation comments using `///` and `/** * */` notation
* truncating division cuts the cuts out the rest after division - its operator is `~/`
* Dart has a math library with most popular functions and consts like *sin* or *pi* value
* everything derives from `Object` so you can call `3.1423.round()` or `42.isEven` on numbers
* there is `dynamic` type that can get everything (but it is not recommended to be used)
* `var` type assigns the type based on what value is being assigned to the variable

## Chapter 3

* `double` and `int` are subtypes of `num`
* conversions need to be explicit, that is why there is for example `.toInt()` and `.toDouble()` methods
* `num` type does not have `isEven` method
* you can't cast `double` to `int` and vice versa - you should use the dedicated methods for conversion
* UTF-16 has a special way of encoding code points higher than 65,536 by using two code units called surrogate pairs