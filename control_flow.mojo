from python import Python

fn main() raises:
    let py = Python.import_module("builtins")
    let input = py.input("Enter a number: ")
    let n = py.int(input)

    if n % 2 == 0:
        print("Even")
    else:
        print("Odd")

    let chess_color = py.input("Enter your favorite chess color: ")

    if chess_color.lower() == "white":
        print("You go first")
    elif chess_color.lower() == "black":
        print("You go second")
    else:
        print("Invalid chess color")