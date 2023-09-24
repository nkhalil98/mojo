struct Person:
    var name: String  # structs don't support 'let' assignment yet
    var age: Int

    fn __init__(inout self, name: String, age: Int):
        self.name = name
        self.age = age

    fn get_name(inout self) -> String:
        return self.name
    
    fn get_age(inout self) -> Int:
        return self.age

    fn set_name(inout self, new_name: String):
        self.name = new_name
    
    fn set_age(inout self, new_age: Int):
        self.age = new_age
    
    fn __str__(inout self) -> String:
        return "Name: " + self.name + ", Age: " + self.age


fn main():
    var nabil: Person = Person("Nabil", 25)
    print(nabil.__str__())
    