from python import PythonObject

fn main() raises:
    var L: PythonObject = [1, 2, 3]

    for num in L:
        print(num)

    let M: PythonObject = [4, 5, 6]
    for i in range(M.__len__()):
        print(M[i])
