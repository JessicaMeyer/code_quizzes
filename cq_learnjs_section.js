DONE 

// Code Quizzes Learn JS Section 

// Quiz #1 : Learn JavaScript - Variables, Strings, Types

// What does the following expression return?
> 3 + 2;
5

// What does the following expression return?
> typeof(3);
"number"

// Notice that there is only a single data type for numbers, not seperate
// data types for integers and floating point numbers like Ruby.

// What does the following expression return?
typeof(3) === typeof(4.32);
true

// 3 is a "number" and 4.32 is a "number". JS has the same data type for integer
// and floating point numbers. 

// What does the following expression return?
> 5 / 0;
Infinity

// Technically division by 0 should be undefined, but not with JS

// What does the following expression return?
> 3 / "bob";
NaN

// Stands for "not a number" and is returned when a math operation 
// cannot yield a numeric result

// What does the following expression return?
> NaN === NaN;
false

// NaN is not equal to any other value, including itself.

// What does the following expression return?
> typeof(NaN);
"number"

// NaN has a "number type"

// What does the following expression return?
> isNaN(NaN);
true

// The isNaN method returns true if the arguement is NaN and false otherwise.

// What does the following expression return?
> Math.pow(2, 3);
8

// 2 raised to the power of 3

// Describe how the following expression assigns a variable to a value.
> var first_name = "cindy";

// var declares the variable, first_name is the keyword name of the variable, cindy is the value

// What is the value of the hello variable in the following expression?
> var hello;
undefined

// It is not assigned to any value, so undefined

// What does the following expression return?
> var y;
> y === "cool";
false

// The variable y is declared, but not assigned anything, so it is undefined. 
// When undefined is compared w/ the string "cool" with the ===, the return value is false. 

// What does the following expression return?
> "some" + " person";
"some person"

// What does the following expression return?
> var first = "Bart";
> var last = "Simpson";
> first + " " + last
"Bart Simpson"

// What does the following expression return?
> "cool".length;
4

// What does the following expression return?  Explain the answer.
> "phat" === "phat";
true

// What does the following expression return?
> typeof("cats");
String

// What does the following expression return?
> 3 + "bob"
"3bob"

// JS cannot add a number and a string without converting the # to a string first. 
// JS converts 3 to "3" and then concatenates the two strings. 

// Round the number 4.87 to the nearest integer.
Math.round(4.87)

// Divide the number 6 by the string "2" and explain the result.
> 6 / "2"
3

// JS cannot divide a number by a string, so it first converts the string to 
// a number, and then performs division. The string "2" can be converted to a number with this
// code Number("2"); 

// What does the following expression return?  Explain the result.
> 3 * "bob";
NaN

// JS attempts to convert "bob" to a number so multiplication can be performed, 
// but the string "bob" cannot be converted to a number. 

// Declare the variables x and y.
var x;
var y;

// Set the variable hobby to the string "programming".
var hobby = "programming";

// What does the following expression return?
> var sport; 
> sport === undefined

true

// A variable that has been declared, but has not been assigned is undefined. 

// Demonstrate that "brogrammer" has the type "string".

typeof("brogrammer");
=> "String"

// // Quiz # 2: Learn JavaScript - Conditionals, Loops, Array

************* review quiz 2 **********************

// What does the following expression return?
> 4 > 1;
true

// What does the following expression return?
"chatty" === "chatty";
true

// What does the following expression return?
3 <= 300
true

// Print the string "I just ate a lot" to the console.
console.log("I just ate a lot");

// if statements will execute the code in the block if the boolean 
// condition is true.  

// What does the following expression print to the console?

if (5 === 5) {
  console.log("This code is executed")
};
// prints "This code is executed" because if stmt evaluated true

// What does the following expression print to the console?

if (5 > 10) {
  console.log("Not so sure about this")
};
// Nothing is printed because the if stmt evaluates to false, amd there is no else stmt

// What does the following expression print to the console?

if (5 > 10) {
  console.log("Not so sure about this");
} else {
  console.log("walking dead");
}
prints "walking dead"

// What does the following expression print to the console?

if ("candy" === 8) {
  console.log("do something with your life");
} else if ("blah" === "blah") {
  console.log("just chill, have fun");
} else {
  console.log("people are strange");
}
prints "just chill, have fun"

// What does the following expression print to the console?

if (5) { console.log("I like peanuts"); }

//"I like peanuts" is printed. 5 is considered truthy in a boolean context.

// ******* IMPORTANT******: In JS, undefined, NaN, null, 0, "", and the keyword false are all false in boolean context. 
// All other values are truthy.

// In Ruby nil and false are considered false.

// What doe the following expression print to the console?

if ("") {
  console.log("program more");
} else if ("cool") {
  console.log("party hard!");
} else {
  console.log("blah");
}
// "party hard!" is printed because "cool" is truthy, and it's the first truthy stmt evaluated. An empty string is falsey.

// What does the following expression return?
!false
true

// The ! operator returns the opposite of the boolean value it is prepended to.

// What does the following expression print to the console? 

if (!undefined) console.log("This syntax is weird…");

// !undefined is true in a boolean context, so the block will run. 

// What does the following code print to the console?

var counter = 0;
while (counter < 3) {
  console.log("The counter is at " + counter);
  counter++
}
// The counter is at 0
// The counter is at 1
// The counter is at 2

// The while loop will execute the block as long as the boolean condition remains true. 

// What does the following code print to the console?

var result = 0;
for (var i = 0; i < 5; i++) {
  result += i;
}
console.log(result);
// 10

// Arrays are ordered collections of elements. 

// What does the following code print to the console?

var my_array = [1, "bob"];
console.log(my_array[1]);
// "bob"

// What does the following code print to the console?

var q = "quack";
var num = 555666;
console.log([num, q, true]);
// [555666, "quack", true]

// Variables can also be used to represent elements in an array. 

// What does the following code print to the console?
["uno", "dos", "tres"].length;
// 3

// Create an array with the following elements: "bob", 23, false.

var array = ["bob", 23, false];

// Print the last element of my_array to the console.

var my_array = ["horse", "pig", "cow"];
console.log(my_array[2]);

// What does the following code print to the console?

var writing_tools = ["pencil", "pen", "marker"];
console.log(writing_tools[writing_tools.length - 1]);
// "marker"

// writing_tools.length evaluates to 3 and writing_tools.length-1
// evaluates to 2. The final element of the array has an index 
// equal to the length of the array minus 1 (which is 2).

// What does the following code print to the console?

var b = [1, 2];
b[0] = "master p";
console.log(b);
// ["master p", 2];

// What does the following code print to the console?

var numbers = [2, 4, 6, 8];
var counter = 0;
var sum = 0;
while (counter < numbers.length) {
  sum += numbers[counter];
  counter++;
}
console.log(sum);
// 20

// The while loop iterates over every element in the numbers
// array and updates the sum variable with each iteration. 

// What does the following code print to the console?

var words = ["teenage", "mutant", "ninja", "turtles"];
var great_show = "";
for (var i = 0; i < words.length; i++) {
  great_show += words[i] + " ";
}
console.log(great_show);
// "teenage mutant ninja turtle"

// The great_show var is initially assigned to empty string, and is updated with the 
// strings in the word array + a space for each iteration of the for loop.

// What does the following statement return?

typeof(["cats"]);
Object 

// What does the following statement return?

[1, 89] === [1, 89];

// Even though they are the same elements, they are in different arrays so will return false.

// What does the following code return?

var blue = ["da ba dee da ba die"];
blue === blue;
// true

//In this example, the === operator is comparing two variables that point to 
// the same exact array, so true is returned.

// Sum all the elements in the following array if they are numbers, 
// otherwise ignore the element.  Print the result to the console.

var weird = [1, 40, "bob", [], false, 89];

var result = 0;
for (var i = 0; i < weird.length; i++) {
	var element = weird[i];
		if (typeof(element) == "number") {
			result += element
		};
	}
console.log(result);
// 130

// Update the "shots" element in the following array to be "don't do it".

var beverages = ["beer", "wine", "shots"];
beverages[2] = "don't do it";

// What are the falsey values in JavaScript?  What does it mean when a value is falsey?
undefined, 0, "", null, false

// In a boolean context, falsey values are treated as false.

// Concatenate all the elements in the following array that begin 
// with the letter "b" and print the resulting sentence to the console.

var heaven = [34, [], "bodacious", "barbecues", "begin", "whatever", "by", "battering", true, "bacon"];
for (var i = 0; i < heaven.length; i++) {
	var element = heaven[i];
		if (element[0] == "b") {
			result += element + " "
		};
}
console.log(result);

// bodacious barbecues begin by battering bacon  
// Strings can be indexed, similar to arrays

// // Quiz #3 : Learn JavaScript - Functions, Variable Scope

// What does the following code evaluate to?

var first_name = function (name) {
  return name;
}
first_name("bob");
// "bob"

// What does the following code evaluate to?

function add(x, y) {
  return x + y;
}
add(2, 3);
// 5

// Create an anonymous function and assign it to the variable full_name.  
// The function should take two arguments, first_name and last_name, 
// and return the two strings concatenated.

var full_name = function(first_name, last_name) {
	return (first_name + " " last_name);
}

// What does the following code print to the console?

function square (x) {
  return(x * x);
}
console.log(square(5));
// 25

// What does the following code print to the console?

function square (x) { 
	return(x * x) 
};

function cube (x) {
  return(x * square(x));
}

console.log(cube(2));
// 8

// Invoke the my_fun() function. 
function my_fun() {
	return "I am having fun"
};

myfun();

// What does the following code print to the console?

var what = function () { 
	return "HI!!!!" 
};
console.log(typeof(what));
// function

// What does the following code print to the console?

var max_value = function(array) {
  var result = array[0];
  for (var i = 0; i < array.length; i++) {
    if (array[i] > result) {
      result = array[i];
    };
  }
  return result;
}
console.log(max_value([1, 50, 2]));
// 50


// What does the following code print to the console?
var arr = ["boy", 42, 23, function () { return "gotta catch 'em all, Pokemon!" }, 56];
console.log(arr[3]());
// "gotta catch 'em all, pokeman"

// functions are values and can be treated like any other value in JS. Functions
// can be assigned to variables, stored in arrays, etc. arry[3] fetches the function object
// from the array and arry[3]() fetched the function object from the array and invokes the function. 

// What is the code to invoke the following function? 

function kesha() {
  return "Your love is my drug";
}
kesha();

// What does the following code print to the console?

var lambchop = function () {
  return "This is the song that never ends";
}
console.log(lambchop());
// "This is the song that never ends"

// What does the following code print to the console?

function doctor_name (last_name) {
  return "Dr. " + last_name
}
console.log(doctor_name());
// Dr. undefined 

// It takes an argument, but no argument was given. 

// What does the following code print to the console?

function dwelling(name) {
  if (typeof(name) != "string") { throw "ArgumentError" };
  return name + " cave";
}
console.log(dwelling(42));
// "ArgumentError"

// The dwelling() function takes an argument that must be a string. If the arguement to
// the dwelling function is not a string, an "ArgumentError" is thrown. In this case, the argument
// 42, hence the error.

// What does the following code print to the console?

function add(x, y) {
  return(x + y);
}
console.log(add(1, 2, 3, 4, 10, 20));
// 3
// The add function takes 2 arguments, but was supplied more. When called with extra
// arguments, an error is not thrown and JS simply ignores the extra arguments. 

// What does the following function return?

function args () {
  return arguments;
}
console.log(args(8, 7, 6, 5, 4));
// [8,7,6,5,4]

// * arguments is a special keyword that represents all the arguments that are passed to a 
// function. 

// What does the following code print to the console?

function lamp() {
  var my_special_variable = "I am special";
}
console.log(my_special_variable);
// my_special_variable not defined - because it's a local variable. 

// What does the following code print to the console?

function book() {
  good_book = "Slaughterhouse Five";
}
console.log(good_book);
// "Slaughterhouse Five"

// since the var keyword is not used, it is a global variable.

// What does this return?

num = 23;
function evil () {
  num += 5;
}
evil();
console.log(num);
// 28

// num is a global variable and the function modifies that variable. 

// Create a function called min_value() that accepts an array of numbers as an 
// argument and returns the smallest value from the array. 

**REVIEW**

function min_value(array) {
	var result = array[0];
		for (var i = 0; i < array.length; i++) {
			if(array[i] < result) {
				result = array[i];
			}
		}
		return result;
}

// Invoke the song() function.

function song () {
  return "Mary had a little lamb";
}

song();

// Define a function called add_numbers() that adds two numbers and throws an 
// error if the arguments supplied to the function are not numbers.

**REVIEW**

function add_numbers(number1, number2) {
	if(typeof number1 != "number" || typeof number2 != "number") {
		throw "ArgumentError";
	}
	return number1 + number2;
}

// Invoke the bad_hairday() function in the following array.
arr = [0, "nice", function () { return "YOLO" }];
arr[2]();

// Define an anonymous function and assign it to the your_name variable.  
// The function should return "Snoop Dogg".

var your_name = function () {
	return "Snoop Dogg";
}

// The function is called anonymous because it does not have a name. The function is 
// assigned to the your_name variable and can be invoked with the your_name variable: your_name();

// What does the following code print to the console?

var result;
if (undefined) {
  result = function () { return "blah blah blah"; }();
} else {
  result = function () { return "meow meow meow"; }();
}
console.log(result);
// "meow meow meow"

// The boolean condition in the if statement is falsey, so the code block will not run.
// undefined is falsey

// // Quiz #4: Intro to Objects, Properties

// What does the following code print to the console?

var person = {
  name: "Joe Camel",
  age: 42,
  status: "dead"
}
console.log(typeof person);
// "object"

// The person variable is assigned to an object. An object is an unordered collection of
// properties. Each property consists of name/value. 

// What does the following code print to the console?

var hat = {
  size: "large",
  color: "orange"
}
console.log(hat.size);
// "large"

// What does the following code print to the console.

var teddy_bear = {
  texture: "fluffy"
}
console.log(teddy_bear["texture"]);
// "fluffy"

// What does the following code print to the console?

var fat_joe = {
  crew: "Terror Squad"
}
fat_joe.crew = "something";
console.log(fat_joe.crew);
// "something"

// What does the following code print to the console?

var pen = {};
pen.ink = "blue";
console.log(pen.ink);
// "blue"

// What does the following code print to the console?

var walking_dead = {
  topic: "zombie apocalypse"
}
console.log(walking_dead["main_character"]);
// undefined
// undefined is returned when querying a property that doesn't exist in an object. 

// What does the following code print to the console?

var bottle = {
  contents: function () { return "some fine bubbly" },
  color: "green"
}
console.log(bottle.contents());
// "some fine bubbly"

// functions are values and can be a property value just like any other value in JS
// Functions that are defined in an object are called methods.

// What does the following code print to the console?

var yao = {
  self: function () { return this }
}
console.log(yao === yao.self());
// true

// The "this keyword" is available throughout the object and refers to the
// object itself. This is similar to the self in other languages. 
// In this ex, the self method returns this, which is the sam as the yao object.

// What does the following code print to the console?

var lebron = {
  occupation: "basketball",
  introduction: function () {
    return "My name is LeBron and I play " + this.occupation
  }
}
lebron.introduction();
// "My name is Lebron and I play basketball"

//In the intro method, the keyword this refers to the Lebron object. 

// The code could be refactored as follows and will still yield the same result:

// var lebron = {
//   occupation: "basketball",
//   introduction: function () {
//     return "My name is LeBron and I play " + lebron.occupation
//   }
// }
// lebron.introduction();

// What does the following code print to the console?

var square = {
  side_length: 4,
  area: function () { 
    return this.side_length * this.side_length;
  }
}
console.log(square.area());
// 16

// the this keyword refers to the square object anywhere inside the square object

// What does the following code print to the console?

var me = {
  first_name: "Matthew",
  last_name: "Powers",
  full_name: function () {
    return this.first_name + " " + this.last_name;
  }
}
console.log(me.full_name());
//"Matthew Powers"

// The this keyword refers to the me object anywhere inside the me object
// ful_name is referred to as a method b/c it is a function that is specific for a certain object

// What does the following code print to the console?

var mug = {
  capacity: "10 fluid ounces",
  customer_message: function (desired_size) {
    if (desired_size > 10) { return "This mug is not large enough for you" };
  }
}
console.log(customer_message(13));
// referenceerror - undefined.
// The customer_message method is only defined for the mug object, it is not a 
// global function that can be called anywhere. 
// In order to call the customer_message() method, the mug object needs to be referenced, as in the following example:
console.log(mug.customer_message(13));

// What does the following code print to the console?

function global_function () { return "I can be called anywhere" };
var an_obj = {
  something: global_function
}
console.log(an_obj.something());
// "I can be called anywhere"

// The global_function is bound to the global object and can be called anywhere. 

// What does the following code print to the console?

var person = {
  age: 32,
  address: {
    city: "New York",
    state: "NY"
  }
}
console.log(person.address.city);
// "New York"

// Objects are values in JS, and can be nested. 

// What does the following code print to the console?

var golf = {
  type: "sport",
  clubs: {
    high_end: "taylor made",
    low_end: "rusty basement clubs"
  }
}  
golf.clubs.high_end = "callaway";
console.log(golf.clubs.high_end);
// "callaway"

// property values of nested objects can be updated by assigning the property value to a new value.

// What does the following code print to the console?

var ideal_scene = {
  status: "chillin'",
  location: "somewhere with good waves",
  thoughts: "bling bling"
}
delete ideal_scene.thoughts
console.log(ideal_scene.thoughts);
// undefined - because it was deleted. 

// Describe the value that the zombie variable is assigned to.

var zombie = new Object();
// the zombie variable is assigned to a new object.

// What does the following code print to the console?

var game = { title: "tic tac toe" };
var same_game = { title: "tic tac toe" };
console.log(game === same_game );
// false

// the game and same_game objects have the same contents, but they are different objects. 
// JS only considers two objects equal if the equality operator is referring to the exact same object. 
// Not two different objects with the same content. 

// What does the following code print to the console?

var lyric = { lyric: "right now, aight" };
console.log(lyric === lyric);
// true

// the equality operator returns true when the lyric object is compared with itself. 

// What does the following code print to the console?

var ruff_ryders = {
  dmx: {
    birthplace: "Mount Vernon, NY"
  }
}
console.log(ruff_ryders.lox.birthplace);
// typeerror - lox is not defined in the ruff_ryders object

// What does the following code print to the console?

var ruff_ryders = {
  dmx: {
    birthplace: "Mount Vernon, NY"
  }
}
console.log(ruff_ryders.lox && ruff_ryders.lox.birthplace);
// undefined

// What does the following code print to the console?

var a = {
  x: "y"
}
console.log("x" in a);
// true

// What does the following code print to the console?

var abc = {
  zz: "ll"
}
console.log(abc.hasOwnProperty("zz"));
// true

// Add a real_name property to the following dmx object with the value "Earl Simmons".

var dmx = {
  occupation: "rapper"
}
dmx.real_name = "Earl Simmons";

// Add a circumference method to the following circle object that returns the 
// circumference of the circle (Pi equals Math.PI).

var circle = {
  radius: 10
}
circle.circumference = function() {
  		return 2 * Math.PI * this.radius;
  }
console.log(circle.circumference());

// Quiz #5 : Learn JavaScript - Constructor Functions

// Create a sally object with first_name, last_name, and full_name properties 
// with object literal notation, similar to the following example.

var sally = {
	first_name: "Sally",
	last_name: "Smith",
	full_name = function () {
		return this.first_name + " " + this.last_name;
	}
}

// The following code illustrates how to define a constructor function and 
// use the constructor function to create an object.

function Mammal() {
  this.warm_blooded = true;
  this.scaly = false;
}
var fido = new Mammal();

// Print the scaly property of the fido object to the console.
console.log(fido.scaly);

// Use object literal notation to create an object assigned to the spot variable, similar to the following constructor function above.

var spot {
	warm_blooded: true,
	scaly: false
}

// Call the square() method on the my_calculator object.

function Calculator() {
  this.square = function (x) {
    return x * x;
  }
}
var my_calculator = new Calculator();
my_calculator.square(3);

// Use object literal notation to create an object that has the same behavior as the objects created by the following constructor function.
// function Calculator() {
//   this.square = function (x) {
//     return x * x;
//   }
// }

var my_calculator = {
	square: function(x) {
		return x*x;
	}
}

// constructor functions are just specialized functions that can be used to create
// the same objects that are created with object literal notation.

// Create an object with the Person() constructor and then call the full_name() method.

function Person(first_name, last_name) {
  this.first_name = first_name;
  this.last_name = last_name;
  this.full_name = function () { return this.first_name + " " + this.last_name };
}

var jessica = new Person("Jessica", "Meyer");
jessica.full_name();

// Use object literal notation to create an object that behaves similarly to an object that is created with the following constructor:

// function Person(first_name, last_name) {
//   this.first_name = first_name;
//   this.last_name = last_name;
//   this.full_name = function () { return this.first_name + " " + this.last_name };
// }

var person = {
  first_name: "Ronald",
  last_name: "Fry",
  full_name: function () { return this.first_name + " " + this.last_name }
}

// What does the following code print to the console?

function Hat() {
  var brand = "shhh can't tell";
}
var my_hat = new Hat();
console.log(my_hat.brand);

// What does the following code print to the console?

function Hat() {
  var brand = "shhh can't tell";
  this.getBrand = function () { return brand; };
}
var my_hat = new Hat();
console.log(my_hat.getBrand());
// "shh can't tell"

// The brand variable cannot be directly accessed outside the Hat function
// The brand variable can be accessed anywhere within the Hat constructor
// but not outside of it. The getBrand method can access the brand variable and make it indirectly accessible.

// The prototype property of constructor functions can also be set to 
// add methods to objects created by constructor functions.  
// JavaScript functions are objects and the prototype property can be 
// used to add methods to the objects that are created by constructor 
// functions.

function Dog(name) {
  this.name = name;
}

Dog.prototype = {
  constructor: Dog,
  bark: function () { return "ruff ruff" }
}

var rover = new Dog("red rover");
console.log(rover.name);  // returns "red rover"

What does the following line print to the console?
console.log(rover.bark());
// "ruff ruff"

// The prototype design pattern is used in JS to give methods to objects created by constructor functions.

// Type the "this" keyword into the JavaScript web console of your favorite browser (hopefully Chrome or Firefox) and explain what is returned.
> this
// The window object is returned.

// What does the following line return when typed into the JavaScript 
// web console of an internet browser?

this === window
// true

// Invoke the zombies function.

function zombies() {
  return "We like to eat people";
}
// zombies();

// What is the difference between the whatever() and best_quote() 
// functions in the following code?

function whatever() {
  return "talk to the hand";
}

var clueless = {
  best_quote: function() { return "That’s Ren and Stimpy. They’re way existential." }
}

// whatever() is a global function.

// best_quote() is a property of the clueless object - so it's a method.

// What does the following code print to the console?

function sampleFun() {
  console.log(this);
}
// undefined
// the global window object
// the this keyword has different values depending on when it is used. When the this keyword
// is used in a function that is invoked in a function context, then the this keyword
// refers to the window object. 

// What does the following code print to the console?

var an_object = {
  hat: function() { return (this === an_object); }
}
console.log(an_object.hat());
// true

// functions are called methods when they are defined as properties of an object.
// the this keyword refers to the actual object that defined the mthod.
// Anywhere within the an_object code block, the keyword this is the same as an_object

// What does the following code print to the console?  
// Explain the use of the "this" keyword.

var honeyBadger = {
  personality: "vicious",
  modusOperandi: function () {
    return "I am " + this.personality + " because I don't care!";
  }
}
console.log(honeyBadger.modusOperandi());
// " I am vicous because I don't care"
// this keyword refers to the honeybadger object. 
// When functions are invoked as methos, this refers to the object that defines the method.

// What does the following code print to the console?

function Raisin() {
  this.formerSelf = "grape";
  this.goodness = function (number) {
    return "I am " + number + " times worse than when I was a " + this.formerSelf
  };
}
var r = new Raisin();
console.log(r.goodness(10));
// "I am 10 times worse than when I was a grape"

// What does the following code print to the console?  
// Explain the use of the "this" keyword.

function Whiteboard() {
  this.purpose = "brainstorm";
  this.businessReason = function () {
    return this.purpose + "…..profit!!"
  }
}
var w = new Whiteboard();
console.log(w.businessReason());
// "brainstorm. ... profit!"
// undefined

// The businessReason method uses this keyword to refer to the object
// that is being created by the constructor function and is assigned to the variable w.

// What does the following example print to the console?

console.log((function (x, y) { return x + y })(3, 4));
// 7
// The anonyomous function in this ex is defined and invoked on the same line.

// What does the following example print to the console?

var globalObject = window;
function nestedExample() {
  function innerFunction () {
    return this === globalObject;
  }
  return innerFunction();
}
console.log(nestedExample());
// true

// Due to the design flaw in the language, inner functions use the function
// invocation context, not the method invocation context, so the value of this in the innerFunction
// equals the globalObject. 

// Create a constructor function called Square() to create square objects 
// with a side property and a method to calculate the area.  
// Use the Square() function to create a square object.
***** REVIEW ******

function Square(side) {
	this.side = side;
	this.area = function() {
		return this.side * this.side;
	};
}

var my_square = new Square(5);
my_square.area(); // returns 25
my_square.side; // returns 5

// Create an Employee() constructor function with days_worked,
// vacation_days_per_year, and vacation_days_taken properties.  
// Add a vacation_days_left() method that returns the number of 
// vacation days the employee has remaining.
***** REVIEW ******

function Employee (days_worked, vacation_days_per_year, vacation_days_taken) {
  this.days_worked = days_worked;
  this.vacation_days_per_year = vacation_days_per_year;
  this.vacation_days_taken = vacation_days_taken;
  this.vacation_days_left = function () {
    return(this.days_worked / 365 * vacation_days_per_year - vacation_days_taken);
  }
}

var sally = new Employee(180, 20, 4);
sally.vacation_days_left();

// Create a Circle() constructor function to make circle objects with an area method.  
// Add a private PI variable to the circle objects that are created a set 
// its value equal to 3.14.

***** REVIEW ****** 

function Circle(radius) {
	var PI = 3.14;
	this.radius = radius;
	this.area = function () {
		return PI * Math.pow(this.radius, 2);
	}
}
var my_circle = new Circle(4);
my_circle.area();

// Demonstrate that the this keyword equals the global object for 
// functions that are invoked with function invocation context.

function exampleFunction() {
  if (this === window) {
    return "this equals the global object with function invocation context";
  }
}
console.log(exampleFunction());
// "this equals the global object with function invocation context"

// Explain what the following code prints to the console.

function pirate () {
  return this;
}
console.log(pirate());
// Window
// The pirate function returns the global window object. When functions are
// invoked as functions, the value of the this keyword is the global object. 

// Demonstrate that the this keyword refers to the object itself for 
// functions that are invoked in the method invocation context.

var cup = {
  something: function() {
    return this === cup;
  }
}
console.log(cup.something());  
// true

// Demonstrate that the this keyword refers to the object that is being created 
// for functions that are invoked in the constructor invocation context.

function Paper() {
  this.whatever = "ok";  // "this" refers to the object that is created by the Paper() function
}
var my_paper = new Paper();
console.log(my_paper.whatever);

// The object created by the Paper() constructor function has a 
// whatever property.  In the body of the constructor function, the 
// "this" keyword refers to the object that is being created and 
// referring to "this" allows properties to be added to the object that 
// is being constructed.


// What does the following code print to the console?

console.log(function () { return "Hey hey hey";}());
// "hey hey hey" - the function is defined and invoked in a single statement















