# changes made to a and b are relected outside the function scope
fn add(inout a: Int, inout b: Int) -> Int:
    a = 1
    b = 2
    return a + b

# mutating x or y inside the function leads to an error
fn sub(borrowed x: Int, borrowed y: Int) -> Int:
    return x - y

# the function can mutate p and q regardless of their mutability
fn mul(owned p: Int, owned q: Int) -> Int:
    p = 4
    q = 5
    return p * q

fn main():
    var a = 0
    var b = 0
    print(add(a, b)) # prints 3
    print(a)  # prints 1
    print(b)  # prints 2


    var x = 10
    var y = 5
    print(sub(x, y))  # prints 5 

    let p = 6
    let q = 3
    print(mul(p, q))  # prints 20
    # we cannot print p or q anymore because they are owned by the mul function
