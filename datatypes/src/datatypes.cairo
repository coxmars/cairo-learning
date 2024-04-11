// In Cairo there are two categories of datatypes: Scalar types and Compound types.
// Scalar types: felt252, integer and boolean, always represent a single vlaue

// felt252: Can store 252 bits, it is default when no type is specified

// Examples of Variables with these datatypes

// Integer
let my_integer: felt252 = 42;
let my_u8: u8 = 255;
let my_u16: u16 = 65535;
let my_u32: u32 = 4_294_967_295;
let my_u64: u64 = 18_446_744_073_709_551_615;
let my_u128: u128 = 340_282_366_920_938_463_463_374_607_431_768_211_455;

// Boolean
let my_bool: bool = true;

// Tuples
let my_tuple: (felt252, u32, bool) = (42, 1_000_000, false);

// Arrays
let my_felt_array: Array<felt252> = ArrayTrait::new();
my_felt_array.append(10);
my_felt_array.append(20);
my_felt_array.append(30);

let my_u64_array: Array<u64> = ArrayTrait::new();
my_u64_array.append(1_000_000_000_000_000_000);
my_u64_array.append(2_000_000_000_000_000_000);

// Structs
struct Point {
    x: felt252,
    y: felt252,
}

let my_point: Point = Point { x: 3, y: 5 };

// Enums
enum Color {
    Red: (),
    Green: (),
    Blue: (),
}

let my_color: Color = Color::Green(());

// Short Strings
let my_short_string: felt252 = 'Hello, Cairo!';

// Byte Arrays
let my_long_string: Array<felt252> = ArrayTrait::new();
my_long_string.append('This is a longer string that can exceed 31 characters.');



