// базовое ООП
import Foundation

let dateCurrent = Date()
let calendar = Calendar.current
let year = Calendar.Component.year

class Dog {
    var name: String!
    var age: Int!
    var gender: String!
    var colour: String!
    
    
    func isBarking() -> Bool {
        return false
    }
    
    init(name: String, age: Int, gender: String, colour: String) {
        self.name = name
        self.age = age
        self.gender = gender
        self.colour = colour
    }
}

let myDog = Dog(name: "Johnnie", age: 2, gender: "male", colour: "black")

print("Hello, this is my dog. It's name is \(myDog.name!).")


// наследование
class Shepherd : Dog{
    
}

let Muhtar = Shepherd(name: "Muhtar", age: 15, gender: "male", colour: "ovcharka")
print("Ko mne, \(Muhtar.name!)!")


// инкапсуляция, абстракция
class Calc {
    var a: Int!
    var b: Int!
    private var result: Int!
    
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
    }
    
    func sum(){
        result = a + b
    }
    
    func sup(){
        result = a - b
    }
    
    func mul(){
        result = a * b
    }
    
    func div(){
        result = a / b
    }
    
    func displayResult(){
        print("Result = \(result ?? 0)")
    }
}

let sum = Calc(a: 234, b: 24)
sum.sum()
sum.displayResult()

let mul = Calc(a: 4, b: 13)
mul.mul()
mul.displayResult()


// полиморфизм
func addNums(i: Int, j: Int) -> Int
{
    return i + j
}

func addNums(i: Int, j: Int, k: Int) -> Int
{
    return i + j + k
}

print("addNums with two args = ", addNums(i: 2, j: 3))
print("addNums with three args = ", addNums(i: 2, j: 3, k: 5))

class Animal
{
    func makeNoise()
    {
        print("Durrr")
    }
}

class Cat : Animal
{
    override func makeNoise()
    {
        print("Meoooowwwww")
    }
}

class dDog : Animal
{
    override func makeNoise()
    {
        print("Woooooof")
    }
}

var animal: Animal
animal = Cat()
print(animal.makeNoise())

animal = dDog()
print(animal.makeNoise())
