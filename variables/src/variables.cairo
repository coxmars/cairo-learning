//fn main() {
    // let x = 5;
    // println!("The value of x is: {}", x);
    // x = 6;
    // println!("The value of x is: {}", x);
//}

// You received the error message Cannot assign to an immutable variable. because you tried to assign a second value to the immutable x variable.


fn main() {
    let mut x = 5;
    println!("The value of x is: {}", x);
    x = 6;
    println!("The value of x is: {}", x);
}

// We’re allowed to change the value bound to x from 5 to 6 when mut is used.

// EXPLANATION: In Cairo, variables are immutable by default, which means once a value is bound to a variable name, it can't be altered. 
// This immutability is a safety feature to prevent bugs that can arise from unexpected changes to variable values during code execution, 
// ensuring predictable and reliable behavior. If you need to update a variable's value, you can declare it as mutable using the mut keyword 
// (let mut x = 5;). Mutability in Cairo is handled carefully; even though you can assign a new value to a mutable variable, under the hood, 
// Cairo is essentially creating a new instance with the new value rather than altering the original value in memory. This approach prevents the 
// kinds of bugs that are common in other languages where mutability is the default. 