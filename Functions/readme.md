# Functions
Defined: *A function is block of organized, reusable code that is used to perform single, related action. Functions provide better modularity for your application and high degree of code reusing.*

The way I define it: functions are grouping of statements that are parameterized to be reused over and over again. 

I guess we should define statement first. A statement is:  command that the programmer gives to the computer.* Like earlier in [CLOVERS](../CLOVERS)
```go
fmt.Printf("Hello there you!!!")
```
that is statement. A single line of code that does something.

A function can have just one statement or hundreads of statements (not recommended). A function in go would look something like:
```go
func sayHello(){
   fmt.Printf("Hello there you!!!") // This is 1 statement
}
```
or it can have multiple statements:
```go
func sayHelloTwice(){
   fmt.Printf("Hello there you!!!") // This is 1 statement
   fmt.Printf("Hello there you!!!") // This is 1 statement
}
```
You get the point.

# Function Parameters (params)
Defined: *A parameter is special kind of variable in computer programming language that is used to pass information between functions or procedures*

A go function wired up with param named "name" that is of the type "string"
```go
func sayHello(name string){
   fmt.Printf("Hello there %s!!!", name)  
}
```

# Function Arguments (args)
Defined: *In programming, value that is passed between programs, subroutines or functions. Arguments are independent items, or variables, that contain data or codes. When an argument is used to customize program for user, it is typically called "parameter."*

A go function being used and passing arguments to satisfy params
```go
sayHello("Benjamin")
```

# Params and Args Succunitly
To make sense of those two definitions think of it this way: *We write our functions to accept params. When using those functions we pass them args.*

# YouTube Recording
[Part 2 - Functions]()
