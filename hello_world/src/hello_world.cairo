fn main() {
    println!("Hello, World!");
}

// First, Cairo style is to indent with four spaces, not a tab. This is a common style in many programming languages, and it’s the style that Rust uses.
// Second, using a ! means that you’re calling a macro instead of a normal function
// Macros are a way of writing code that writes other code, which is how we’re able to define new syntax extensions in Rust

// IMPORTANT: We can create a project using scarb new (project_name).
// We can build a project using scarb build to generate the compiled Sierra code.
// We can execute a Cairo program using the scarb cairo-run command.
