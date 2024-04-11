// Type Casting: try_into() is a safe way to cast between types

// In Cairo, to convert between scalar types, the methods try_into and into of the TryInto feature of the core library are used:

// try_into: Used when the conversion may fail because the target type might not be large enough. Returns an Option<T>.
// into: Used when the conversion is guaranteed because the source type is smaller than the target type. Returns the converted value directly.

use core::convert::TryInto;

// Example 1: Converting from u8 to felt252

fn exercise_three(x: u8) -> felt252 {
    let result: felt252 = x.into();
    result
}

// Example 2: Converting from felt252 to u8

fn exercise_three(x: felt252) -> Option<u8> {
    let result: Option<u8> = x.try_into();
    result
}