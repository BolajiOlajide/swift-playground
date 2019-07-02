func doSomething() {
    print("Stuff Done")
}

doSomething()

func addTwoNumbers() -> Int {
    let a = 2
    let b = 5
    let c = a + b
    
    return c
}

let sum = addTwoNumbers()

// argument labels are optional
func modifiedAddTwoNumbers(arg para: Int) -> Int {
    let b = 5
    let c = para + b
    
    return c
}

let modifiedSum = modifiedAddTwoNumbers(arg: 2)

func returnName(name: String) -> String {
    return name
}

print(returnName(name: "Bolaji"))

// to omit labels replace the arg label with an underscore
func addSomeNumbers(_ number1: Int, _ number2: Int) -> Int {
    return number1 + number2
}

let sum2 = addSomeNumbers(3, 4)
print(sum2)
