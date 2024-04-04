struct AnyStruct {
    a: u256,
    b: u32
}

enum AnyEnum {
    A: felt252,
    B: (usize, u256)
}

const ONE_HOUR_IN_SECONDS: u32 = 3600;
const STRUCT_INSTANCE: AnyStruct = AnyStruct { a: 0, b: 1 };
const ENUM_INSTANCE: AnyEnum = AnyEnum::A('any enum');
const BOOL_FIXED_SIZE_ARRAY: [bool; 2] = [true, false];

// Variables VS Constants: First, you aren’t allowed to use mut with constants. Constants aren’t just immutable by default—they’re always immutable. 
// You declare constants using the const keyword instead of the let keyword, and the type of the value must be annotated.


// Good Practices: Constants can only be declared in the global scope, which makes them useful for values that many parts of code need to know about.
// The last difference is that constants may natively be set only to a constant expression, not the result of a value that could only be computed at runtime.


// Naming Convention: Cairo's naming convention for constants is to use all uppercase with underscores between words.