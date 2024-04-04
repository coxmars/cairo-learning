// Variable shadowing in Cairo allows you to declare a new variable with the same name as a previous one within the same or nested scope. 
// The new variable takes precedence, effectively overshadowing the original. This feature is different from using mut for mutability:
// Shadowing: You can redeclare a variable with the let keyword and even change its type. The new declaration hides the previous one within its scope.
// Mutability with mut: You can change the value of a mutable variable, but you cannot change its type after it’s declared.

// Here's a quick example to illustrate both concepts:

fn main() {
    let x = 5;
    let x = x + 1;  // Shadowing: same name, new value.
    {
        let x = x * 2;  // Further shadowing in an inner scope.
        println!("The value of x in the inner scope is: {}", x);
    }
    println!("The value of x in the outer scope is: {}", x);
}


// When using mutability:

fn main() {
    let mut x: u64 = 2;
    x = 3;  // Mutability: same variable, new value, same type.
    // Changing the type would result in a compile-time error.
}

// EXPLANATION: Shadowing is used for transforming a value while ensuring the variable remains immutable after the transformation. 
// It’s also useful when you want to reuse the same name for a variable with a different type. Mutability with mut is intended for variables that 
// will experience changes in their value, but not their type, throughout the scope in which they are declared.


