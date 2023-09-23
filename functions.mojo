 fn main() raises:
    def add(a, b):
        return a + b

    fn sub(a: Int, b: Int) -> Int:
        let c: Int = a - b

        return c

    print(add(1, 2))
    print(sub(1, 2))
    