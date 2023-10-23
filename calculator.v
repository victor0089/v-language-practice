module main

fn main() {
    println("Welcome to the V Calculator!")
    loop {
        println("Choose an operation:")
        println("1. Addition (+)")
        println("2. Subtraction (-)")
        println("3. Multiplication (*)")
        println("4. Division (/)")
        println("5. Exit")

        // Read user input
        operation := read_int("Enter the operation number: ")

        if operation == 5 {
            break
        }

        // Read two numbers
        num1 := read_float("Enter the first number: ")
        num2 := read_float("Enter the second number: ")

        // Perform the selected operation
        match operation {
            1 => println("$num1 + $num2 = ${num1 + num2}")
            2 => println("$num1 - $num2 = ${num1 - num2}")
            3 => println("$num1 * $num2 = ${num1 * num2}")
            4 => {
                if num2 != 0 {
                    println("$num1 / $num2 = ${num1 / num2}")
                } else {
                    println("Division by zero is not allowed.")
                }
            }
            else => println("Invalid operation. Please choose a valid operation (1-5).")
        }
    }
    println("Goodbye!")
}
