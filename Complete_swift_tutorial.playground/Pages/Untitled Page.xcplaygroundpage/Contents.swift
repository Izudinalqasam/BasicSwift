// Variable and Constanta
// Constanta is variable which cann't be initial twice, or it can not be reassigned
// for constansta using let, for variable using var
// you can use tipe anotasi like var j: Int, to let know the type of variable
// you can only make variable without initial its value, then initial its value in another place
var noValue: Int
var k: Character = "k"
var helloSwift = "Hello swift"
var multiA = 1, multiB = 2, multiC = 3
var multiA1, multiB1, multiC1: Double // you can also declare same type for multi variable
print(multiA, multiB, multiC, separator: "-", terminator: "\n") // you can print multiple value at a time
print("this is my first time to code swift, \(helloSwift)")

//=================================== Comentar/Semicolon ========================================
/*this is comentar for multi line*/
/*outer multiline comment
 /* this is the nested multiline command */
 */

/*you can add semicolon or not for your code, but if you execute multi expression in one line you need to use semicolon
 like this -> var hi = "hello world"; print(hi)*/

// ====================== Data Type/Conversion type ==========================================================
/* Integer consist of two type, Unsigned (positif & nol) signed(positif, nol atau negeatif
 in int itself there is 8, 16, 32, 64 with different size each of it, we call it explicitly sized type
 use it correctly will improve your performace */
print("the max of Int 8 is \(UInt8.max)")

// to convert the type of data, you should explicitly change the value such Int(anotherValue), Double(anothervalue)
var three = 3
var anotherDoubleValue = 3.9082
print(Double(three) + anotherDoubleValue)

/* Type Alias
 you can chage the exisitng type or the long type reference with arbitrary name like below*/
typealias newIntName = UInt16
print(newIntName.max)

// ============================== Tuples ==================================================================
/* tuples can store multiple value with different typedata, it is suitable for temporary data, but not for the complex data
 you can give name parameter for tuples also*/
let http404Error = (404, " Not found")
let tuplesWithNameParameter = (code: 404, msg: " Not Found")
let (errorCode, errorMsg) = http404Error  // you can destructuring the tuples like this
print(String(http404Error.0) + http404Error.1)
print("the error code is \(errorCode) and the message is \(errorMsg)")
print("the nameParamError is \(tuplesWithNameParameter.code) and the nameParamMsg is \(tuplesWithNameParameter.msg)")


var changesTuple = ("", "")
changesTuple.0 = "First changes tuple"
changesTuple.1 = "Second changes tuple"
print("The first value of tuple is \(changesTuple.0) and the second is \(changesTuple.1)" )

// ======================================= Optional ========================================================
/* you can use optional feature to let the variable can be null/nil or not (there is data)*/
var optionalIntValue: Int? = 404
optionalIntValue = nil // re assign optionalIntValue to null value

let possibleNumber: String? = "123"
let convertedString = Int(possibleNumber!) // when you canvert it like this the convertedString become optional int (Int?)
print(convertedString ?? 0)

/* below is optional binding*/
if let firstNumber = Int("1") {
    if let secondNumber = Int("2") {
        if let thirdCondition = Bool("true"){
            if firstNumber < secondNumber && secondNumber < 100 {
                print("\(firstNumber) < \(secondNumber) < 100")
                print(thirdCondition)
            }
        }
    }
}

// ============================================ Error Handling =============================================
// using do to create a new environment which enabling to let it know an error occured
enum SandWichError : Error {
    case OutOfCleanDishes
    case MissingIngredients(ingredients: String)
}

func makeAsandwitch() throws {
    throw SandWichError.MissingIngredients(ingredients: "Carrot")
}

do {
    try makeAsandwitch()
} catch SandWichError.OutOfCleanDishes {
   print("Cleaning the dishes ....")
} catch SandWichError.MissingIngredients(let ingredients) { // ingredient will be get from catch pattern
    print("Buying the \(ingredients).....")
}


// =========================================== Operator ================================================
/* operator used by swift is commonly operator, so there is no different if you have used it in another language
 just follow it and implement it in the swift*/
/* tuples can be compared, the comparison will check from right to left until it found the different value and compare it
 like below: Remember anothe type maybe cann't be compared like boolean */
print((1, "Zebra") < (2, "Angsa")) // it will be true, because 1 is less than 2
print((3, "Angsa") < (3, "Bango")) // it will be true, because angsa is less than bango

/* bitwise left and right shift means move all bit number to left or right by a number of something which will effect
 times or devide integers by 2. move to left with one position will time the value, instead move to right will devide it
 the example like below */
let shiftBit: UInt8 = 4  // 00000100 di binary
print(shiftBit<<1) // 00001000
print(shiftBit<<2) // 00010000
print(shiftBit<<5) // 10000000
print(shiftBit<<6) // 00000000
print(shiftBit>>2) // 00000001

/* Range Operator
 Closed Range Opeator definite range running from a to b and inlcude a and b itself, like below */
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

/* Half-Open Range Operator definite range running from a to b and include only a without b itself*/
let names = ["Ana", "Ujang", "Sandi", "Keras"]
for index in 0..<names.count {
    print("Person \(index + 1) is called \(names[index])")
}

/*One-Side Range Operator*/
let namesSecond = ["Anna", "Alex", "Brian", "Jack"]
for name in namesSecond[2...] {
    print(name) // "brian", "jack"
}
print("===================================")
for name in namesSecond[...2] {
    print(name) // "Anna", "Alex", "Brian"
}
print("===================================")
for name in namesSecond[..<2] {
    print(name) // "Anna", "Alex"
}

let rangeOneSideVariable = 1...5
rangeOneSideVariable.forEach { (inx) in
    print(inx)
}

/* Swift support ternary operator like below*/
let ternaryOper = true ? 9 : 20
print("The ternary operaor is \(ternaryOper)")

/* Nil-Coalescing operator
 it gives default value if the value is null, it is like kotlin */
var nilValue1: Int?
var nilValue2 = 2
print(nilValue1 ?? nilValue2)

// ===================================== String =================================
/* String literal is sequence of character which is surrounded by double quotes like below*/
let strLiteral = "Some string literal value"
let strLiteralObj = String("Some string literal value")

/* if you have string with multiple line you can use Multiline String Literal, you can use (\) to ignore linebreak
to align your string make sure start string of each line have to fit the closed sign string literal. like below */
let quotation = """
The white rabbit put on his spectacle. "Where shall i began, please your majesty?" \
he ask to begin in the beginning, "The king said gravely, " and go on until you come to the end; then stop"
"""
print(quotation)
print("==================================================================================================")
let linesWithIndentation = """
    This line doesn’t begin with whitespace.
    This line begins with whitespace.
    This line doesn’t begin with whitespace.
    """
print(linesWithIndentation) // it will print the string with left align

let simpleChar: Character = "A"
print(simpleChar)

/* string made from list of character */
let listCharacter: [Character] = ["K","U", "C", "I", "N", "G"]
let strCat = String(listCharacter)
print(strCat)

/* you can for loop the string */
for item in strCat {
    print(item)
}

/* String interpolation is one of the way to build a new string value through combination of several constanta, variable,
 literal and expression type by filling the value into string literal*/

/* Function manipulation in string type*/
var strManipulate = "Hello World"
print(strManipulate.isEmpty)
print(strManipulate[strManipulate.startIndex], strManipulate[strManipulate.index(before: strManipulate.endIndex)])
print(strManipulate[strManipulate.index(strManipulate.startIndex, offsetBy: 4)])

strManipulate.insert("?", at: strManipulate.endIndex)
print(strManipulate)

var deletedChar = strManipulate.remove(at: strManipulate.index(before: strManipulate.endIndex))
print(deletedChar)
print(strManipulate)

/* first range is got from endIndex of string minus offsetBy and the reange until endindext of string using halff side range*/
let rangeStr: Range<String.Index> = strManipulate.index(strManipulate.endIndex, offsetBy: -6)..<strManipulate.endIndex
strManipulate.removeSubrange(rangeStr)
print(strManipulate)

strManipulate.append(" World in the future")
print(strManipulate)
print(strManipulate.count)

// ======================================== Collection ==============================================
/* in swift there are 3 ways to store a value, if you set your collection into var your collection will be mutable
 otherwise if you set to constanta it can't be changed the size and the value inside it*/

var emptyIntArray = [Int]()
var secondEmpty: [Int] = []
var someInt1 = [Int]()
someInt1.append(3)
print(someInt1.count)

/* it will create array with value repeating with number count*/
var arrayIntDefaultValue = Array(repeating: 0.2, count: 1)
print("Nilai array \(arrayIntDefaultValue[0]) and the length is \(arrayIntDefaultValue.count)")

/* make one array from 2 same kind of array*/
var threeDouble = Array(repeating: 0.1, count: 3)
var anotherThreeDouble = [4.5, 2.5, 3.5] // this is array literal
var anotherArrayLiteral: [Int] = [1, 2, 3]
var finalThreeDouble = threeDouble + anotherThreeDouble
finalThreeDouble.sort()
for item in finalThreeDouble {
    print(item)
}

// appending value of array
var additionalArray = [1, 2]
additionalArray += [3]
additionalArray.forEach{ (nm) in print(nm) }

// change value at specific index in the list
additionalArray[1] = 50
print(additionalArray[1])
// if you change index array with different range, it will replace size of previous array
additionalArray[0...2] = [10, 20]
additionalArray.forEach({ nm in print(nm)})

// Access array with index
for (index, item) in additionalArray.enumerated() {
    print("The index of \(index) is \(item)")
}

/* Set is unique collection, the value stored in the set should be hasable or have hash value to be used as compared.
 basic type in swift(int, string, bool) is hashable, the enumaration also too*/
var emptySet = Set<String>()
emptySet.insert("Aku")
print(emptySet)
emptySet = [] // make the set empty again

// initial with value
var defaultValueSet: Set = ["Hacker", "Programmer", "Security", "Network", "Linux Admin"]
defaultValueSet.remove("Hacker") // remove item in the set (note it is it is not ignoreEqualCase so you have to match the item)
print("is defaultValueSet has Programmer ? \(defaultValueSet.contains("Programmer"))")
for item in defaultValueSet {
    print(item)
}

/* Performing Set Operation*/
var firstSet: Set = [1, 2, 3]
var secondSet: Set = [3, 4, 5]
var irisan = firstSet.intersection(secondSet) // Irisan
var symentricDiff = firstSet.symmetricDifference(secondSet) // take all value except the same
var union = firstSet.union(secondSet) // take all value from both set but the same value only got one
 // make a new set but only take from the left without the right and the same value
var substracting = firstSet.subtracting(secondSet)

/* Dictionary is like HashMap, Dictionary cannot be sorted*/
var emptyDictionary = [Int: String]()
emptyDictionary[2] = "Two"
emptyDictionary = [:] // make dictionary empty again

// Make dictionary literal
var dictionaryLiteral: [String: Int] = ["Indo": 4, "Amrik": 2, "China": 1, "India": 3]
dictionaryLiteral["Thailand"] = 5 // add new value
dictionaryLiteral.updateValue(6, forKey: "Thailand") // update value in dictionary

for key in dictionaryLiteral.keys {
    print("The key is \(key)")
}

for value in dictionaryLiteral.values {
    print("The Value is \(value)")
}

for (key,value) in dictionaryLiteral {
    print("The Key is \(key) and the value is \(value)")
}

// ================================================= Control Flow =========================================
/* Switch can fit saveral pattern including Interval, tuple and casting*/
// For-in loop
var fakeArrayControlFlow = [1, 2, 3]
for item in fakeArrayControlFlow {
    print(item)
}
print("=============================")
// if you want to display each of times item in the array you can use stride
for item in stride(from: 0, to: 10, by: 3) {
    print(item)
}

/* While Loop is like While in the Java, whereas repeated-while is like do-while in java*/
var index = 0
repeat{
    index+=1
    print(index)
}while index < 10

index = 0
while index > -10 {
    print(index)
    index-=1
}

/* Conditional Statement, Every switch case should have at least one statement which able to be executed
 swith will finish its find when it has found suitable scenario once without including "break" statement*/
var temperatureFarenheit = 72
if temperatureFarenheit <= 36 {
    print("It's very cold. Consider wearing a scarf.")
} else if temperatureFarenheit > 86 {
    print
}

let someCharacter: Character = "z"
switch someCharacter {
case "z":
    print("It is match with z")
case "b":
    print("It is match with b")
case"c":
    print("It is match with c")
default:
    print("There is no item mathced")
}

// if you want to one statement for two cases, you can implement switch like below
let multipleCaseCharacter: Character = "a"
switch multipleCaseCharacter {
case "a", "A":
    print("The letter A")
default:
    print("Not the Letter A")
}

// Interval Matching
let approximateCount = 62
let countedThing = "moon orbiting saturn"
let naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1...5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "Several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}

print("There are \(naturalCount) \(countedThing)")

// You can use table as a case for comparison
let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("\(somePoint) is at the origin")
case (_,0):
    print("\(somePoint) is on the x-axis")
case (0,_):
    print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside the box")
}

/* you can use case with suitable value or temporary variable / constanta, this way is called value binding*/
let pointViewBinding = (2, 0)
switch pointViewBinding {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with an y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}

// you can use "where" clause to add additional condition of the case
let anotherPointWhere = (1, -1)
switch anotherPointWhere {
case let(x, y) where x == y:
    print("\(x), \(y) is on the line x == y")
case let(x, y) where x == -y:
    print("\(x), \(y) is on the line x == -y")
case let(x, y):
    print("\(x), \(y)is just something arbitary point")
}

/* in swift, if the condition is matched in the first case inside the switch, it will execute it and will not continue to find the another possible condition which will match too, so to make the switch not stop only at the first found case
 you can use "fallthrough", it will execute the statement in every condition which are matched like below */
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17:
    description += "a prime number, and also "
    fallthrough
default:
    description += "an integer."
}

print(description)

// =================================== Control Transfer =============================================
let puzzleInputContinue = "great mind think alike"
var puzzleOutputContinue = ""
let characterToRemove: [Character] = ["a", "i", "u", "e", "o"]
for char in puzzleInputContinue {
    if characterToRemove.contains(char) {
        continue
    }
    
    puzzleOutputContinue.append(char)
}
print(puzzleOutputContinue)

let puzzleInputBreak = "great mind think alike"
var puzzleOutputBreak = ""
for char in puzzleInputContinue {
    if char == "k" {
        break
    }
    
    puzzleOutputBreak.append(char)
}
print(puzzleOutputBreak)

let breakInSwitch = 1
var tempBreakInSwitch: Int?
switch breakInSwitch {
case 2:
    tempBreakInSwitch = 2
default:
    break
}

if let temp = tempBreakInSwitch{
    print("The number of item is \(temp)")
} else {
    print("There is nothing to show")
}


// Using guard, it is like if else, but you should always use else statement
let guardExample: String? = ""
func greet(magicNumber: String?){
    
    guard let newInt = Int(magicNumber ?? "") else {
        print("to conver string to Int make sure it is not empty")
        return
    }
    print(newInt)
}

greet(magicNumber: guardExample)

// ============================================= Function ==================================================
func greatFuncExamplt(params1: String) -> String {
    return "Hello " + params1 + "!"
}

print(greatFuncExamplt(params1: "Hadi"))

// you can return function with multiple value we called tuple
// give ? in the last function return type will make a variable optional is clean

func minMax(array: [Int]) -> (max: Int, min: Int)? {
    
    if true {
        if array.isEmpty {
            return nil
        }
    }
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    
    return (currentMin, currentMax)
}

let bounds =  minMax(array: [8, -6, 2, 109, 3, 71])
let secondBound = bounds?.max ?? 0
print("Min is \(bounds?.min ?? 0) and Max is \(secondBound)")

/* every function parameter has argument label and parameter name, as a default parameter uses parameter name as their argument label, label argument is written before name argumen, like example below*/

func labelNameArgument(argumentLabel parameterName: String){
    // do something here
}
labelNameArgument(argumentLabel: "Contoah Label")

// you can omit argument label by replace label with "_"
func omitLabelArgument(_ parameterName: Int, secondParameterName: Int){
    // do something
}
omitLabelArgument(1, secondParameterName: 2)

//Default Parameter
// put default parameter in the last, put nod-default parameter in the first, so you can know the parameter is more important than other parameter
func defaultParams(parasWithDefault: Int = 1, paramsWithoutDefault: Int){
    // do something
}
defaultParams(paramsWithoutDefault: 3)

// Variadic Parameter
/* you can use it to pass multiple value into a function with the same tipe, if you access variadic parameter in the method body, it will result an array with the type, below is example of variadic parameter*/
// one function only has one variadic parameter
func arithmeticMean (_ numbers: Double...) -> Double {
    var total: Double = 0
    numbers.forEach { num in
        total += num
    }
    
    return total / Double(numbers.count)
}

print(arithmeticMean(1, 2, 3, 4, 5))

func cetakLamdaExampel(_ body: (Int, String) -> String) {
    print(body(1, "1"))
}

cetakLamdaExampel { numInt, numbStr in "\(numInt) and \(numbStr)"}

/* In-Out parameter
 it can help you to modify the parameter in fucntion body then pass the modified value to outside the function, it can't be used for variadic parameter and can't has a default value. to use it naming your paramter name with "inout"  and use "&" (ampersand) before variable you pass in the function call side like below*/
func swapToInt(_ a: inout Int, _ b: inout Int) {
    let temp = a
    a = b
    b = temp
}
var firstModifyInt = 20
var secondModifyInt = 1
print("Before change firstInt \(firstModifyInt) and secondInt \(secondModifyInt)")
swapToInt(&firstModifyInt, &secondModifyInt)
print("After change firstInt \(firstModifyInt) and secondInt \(secondModifyInt)")

// =================================== Function type =======================================================
// this is function as a type of variable
let variableFunction: (Int, Int) -> Int = { num1, num2 in num1 + num2}
print("The variable func value is \(variableFunction(2,3 ))")

// function as parameter type
func parameterFunction(_ a: Int, _ b: Int, _ func1: (Int, Int) -> Int){
    print("the result function parameter type is \(func1(a, b))")
}

parameterFunction(2, 3, { num1, num2 in num1 * num2 })
parameterFunction(3, 5){
    num1, num2 in num1 * num2
}

// Function as function return type
let stepForwardReturnType = { num in num + 1}
let stepBackwardReturnType = { num in num - 1}

let chooseStepFunction = { num in !num ? stepForwardReturnType : stepBackwardReturnType}

var currentValue = 3
let moveNearerToZero = chooseStepFunction(currentValue > 0)
print("moveNearerToZero now refers to the \(String(describing: moveNearerToZero)) function which is \(moveNearerToZero(currentValue))")

// Nested function, by default it is hidden from outside
func chooseNestedFunction(backward: Bool) -> (Int) -> Int {
    func stepForwardNested(input: Int) -> Int { return input + 1}
    func stepBackwardNested(input: Int) -> Int { return input - 1}
    return backward ? stepBackwardNested : stepForwardNested
}

var currentNestedValue = -4
let moveNearerToZero2 = chooseNestedFunction(backward: currentNestedValue > 0)
print("The function will change from \(currentNestedValue) to \(moveNearerToZero2(currentNestedValue))")

// ================================================ Closure ======================================================
/* Closure is block standalone functionality which can be distributed and used in your own code.
 in the sorted method it accept the closusre which is represented by "backWardClosure". closure is started with "in" keyword.
 this keyword shows that closure parameter definition and return type have been finished and closure body is ready to start
 the clousure example is "(String, String) -> Bool"*/
// this below is clousure expression
let namesClosure = ["Chris", "Alex", "Ewa", "Bali", "Denila"]
func backWardClosure(_ s1: String, _ s2: String) -> Bool {
    return s1 < s2
}

let reversedName = namesClosure.sorted(by: backWardClosure)
print(reversedName)

// below is inline clousure expression, it shorten the function body
// becuase the closure is passed through sorted method. so you don't need to expicitly set the type of variable and the return
namesClosure.sorted(by: ({ (s1: String, s2: String) -> Bool in return s1 < s2 }))
// it can be
namesClosure.sorted(by: { s1, s2 in s1 < s2})
// there is shorthand or steno which is provided by swift to be used as a default name parameter such as $0, $1, $2 etc
// example like below
let reversedNameClosure = namesClosure.sorted(by: { $0 > $1})
print(reversedNameClosure)

// String in swift will identify String-specific implementation from operator bigger than as method which have 2 parameter string type and will return a boolean value, which is matched with sorted function. so the implementation above can be simplified like this

namesClosure.sorted(by: (>))

/* Trailing Closure is used to write a long closure expression in the last function call after "()", the example like below*/
func someFunctionTakeAclosure(closure: () -> Void) {
    closure()
}

// with trailing closure when you call the function, just call like below
someFunctionTakeAclosure {
    print("this is closure as parameter function")
}

let digitNameEnglish = [
    0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]

let numberTobeConverted = [16, 58, 510]

// if your closure is complex (more than one line, you should specify the ype of return type)
let resultTrailingClosure = numberTobeConverted.map { number -> String in
    var number = number // use this way to modify the value, because closure parameter can't be modified
    var output = ""
    repeat {
        output = digitNameEnglish[number % 10]! + output
        number /= 10
    } while number > 0
    
    return output
}

print(resultTrailingClosure)

/* Capturing values
 nested function can capture value of parameter or variable from the outside function even though the outside function has finished their task. nested function is called as a simple closure form. nested function or closure can modify the captured value inside their function body. below is the example of nested function which capture outside value
 */

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    
    return incrementer
}

// so every time you call the function it will increment the value
let nestedFunctionVariable = makeIncrementer(forIncrement: 5)
print("The fisrt value of nested function is \(nestedFunctionVariable())")
print("The second value of nested function is \(nestedFunctionVariable())")

// when your closure is saved to a variable, it is called reference type which refere to a function incrementer which capture value. and it can be updated every function call

/* Escaping Closure
 Closure is called as escaping function when closure is passed through as argument function but called after return of its function. to use this annotate the argument with @escaping before type argument if not you will get compile error.

one of the way to let closure get away is by saving it in variable outside of the function  */
var completionHandlers: [() -> Void] = []

func someFuncWithEscapingClosure(completionHandler: @escaping () -> Void){
    completionHandlers.append(completionHandler)
}

func somwFuncWithoutEscapingClosure(closure: () -> Void) {
    closure()
}

// sign closure with @escaping means that you should refer to self explicitly in closure when you want to refere any variable
class EscappingClass {
    var xEscapingVariable = 6
    
    func doSomething(){
        somwFuncWithoutEscapingClosure { xEscapingVariable = 100 }
        someFuncWithEscapingClosure { self.xEscapingVariable = 200 }
        
    }
}

// you can look at that the value of xEscapingVariable will not change to 200 directly before you call the saved function in the completionHandlers as escaping the clousre which can be execute even though the function has been completed
let instance = EscappingClass()
instance.doSomething()
print(instance.xEscapingVariable)

completionHandlers.first?()
print(instance.xEscapingVariable)

/* Auto Closure
 it is automatically made to wrap expression which is passed on as argument to a function, the closure doesn't take any argument, then when the closure is called it will return expression value which is wrapped inside it*/

// this below example shows how closure postpone the execution process
var customerInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customerInLine.count)

let customerProvider = { customerInLine.remove(at: 0)}
// when tyou call this the  amount of value is same as the first even though you have declare the closure above it
print(customerInLine.count)

// when you call like this, the statement inside the closure will be execute
customerProvider()
print(customerInLine.count)

// this is autoclosure which is signed with "@autoclosure"
func server(customer customerProvider: @autoclosure () -> String) {
    print("Now serving \(customerProvider())")
}

// when you call the function with @autoclosure you don't have to call with the closure but common statement, becuase the statement will be wrapped automatically as closure, example like below
server(customer: customerInLine.remove(at: 0))


// below example if you want to combine the @autoclosure and @escaping
var customProviderAutoAndEscaping: [() -> String] = []
func collecCustomProviders(_ customeProvder: @autoclosure @escaping () -> String){
    customProviderAutoAndEscaping.append(customeProvder)
}

collecCustomProviders(customerInLine.remove(at: 0))
collecCustomProviders(customerInLine.remove(at: 0))

customProviderAutoAndEscaping.forEach {
    function in print("Now serving \(function())")
}


// ==================================================== Enumaration ================================================
/* Enumaration in swift initailize with case for each of the item class, and  for class name enum using "PascalCase"
 like below*/

enum CompasDirection {
    case north
    case west
    case south
    case east
}

enum CompasDirectionCopy {
    case north, west, south, east
}

// once you have declare the variable with CompasDirection type, you can re-declare it directly without calling the class anymore like below
var directionToHead = CompasDirection.east
directionToHead = .west

// if the enum is used with switch, you should declare it for all enum cases, if not you will face compile error, alternatively you can use "default" keyword

switch directionToHead {
case .east:
    print("you are in the east")
case .north:
    print("you are in the north")
case .south:
    print("you are in the south")
case .west:
    print("you are in the west")
}

/* if you want to get all the case in an enum class you can declae enum class which extend "CaseIterable", then you can call .allCases, like below */
enum Beverage: CaseIterable {
    case cofee
    case tea
    case jus
}

let beverageEnum = Beverage.allCases
for beverageItem in beverageEnum {
    print(beverageItem)
}
print("Specific item enum index of 0 is \(beverageEnum[0])")

/* Associated values is value which is associated to the enum case with different value or same value type*/
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrcode(String)
}

var productBarcode = Barcode.upc(1, 24984, 13658, 9)
productBarcode = .qrcode("Hello Swift")

switch productBarcode {
case .qrcode(let code):
    print("The code is \(code)")
case .upc(var firstBr, var secondBr, var thirdBr, var fourthBr):
    print("The code first \(firstBr), second \(secondBr), third \(thirdBr), fourth \(fourthBr)")
}

// if all of the information is extracted to one of both var/let, you can move the let/var keyword before the case like below
productBarcode = .upc(1, 20291, 89, 0)
switch productBarcode {
case let .qrcode(code):
    print("the code is \(code)")
case var .upc(firstBarcode, secondBarcode, thirdBarcode, fourthBarcode):
    print("The codes item are \(firstBarcode), \(secondBarcode), \(thirdBarcode), \(fourthBarcode)")
}

/* Raw values or default value is a value which is associated into the case of enum wiht the same type. every raw value should be unique in enum declaration*/
enum ASCIIEnum: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

// if your raw value is int or string, you don't need to declare all of cases, you are enough to declare it in the first case, the rest will be handled by swift, for string it will be case name, exmple like below

enum Planet: Int {
    case mercury = 1
    case venus // it will be 2
    case bumi
}

print(Planet.venus.rawValue, Planet.bumi.rawValue)

enum PlanetString: String {
    case mercury
    case venus
    case bumi
}

print(PlanetString.mercury.rawValue, PlanetString.venus.rawValue, PlanetString.bumi.rawValue)

// you can use a raw value to initialize an enum like below
let possibleItem = PlanetString(rawValue: "mercury")
if let resultEnumFind = possibleItem {
    print(resultEnumFind)
} else {
    print("nothing to show")
}

/* Recursive enumeration is enumaration whihc having initialization of another enumeration as associated value for one or more enumeration case. you can do it by using keyword "indirect". it will tell compiler to include another layer indirectly
 example like below: */
enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}

// if you want to use indirect for all cases you simply put it before enum class like below
indirect enum ArithArithmeticExpressionIndirect {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}

// to handle recursive enumeration or recursive data structure, the easiest way is to use recursive function
func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case .number(let num):
        return num
    case let .addition(firstExp, secondExp):
        return evaluate(firstExp) + evaluate(secondExp)
    case let .multiplication(firstExp, secondExp):
        return evaluate(firstExp) * evaluate(secondExp)
    }
}

let two = ArithmeticExpression.number(2)
let five = ArithmeticExpression.number(5)
let sum = ArithmeticExpression.addition(two, five)
let finalProduct = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(4))

print("The final recursive enum value is \(evaluate(finalProduct))")


// there is a way to mutate the enum cases to another cases of enum, example like below
enum CompasEnumMutate {
    case north
    case west
    case east
    case south
    
    mutating func takeUturn() {
        self = .west
    }
}

var compasMutate = CompasEnumMutate.east
print("Befor Mutate \(compasMutate)")
compasMutate.takeUturn()
print("After mutate \(compasMutate)")

// ============================================= OOP ===========================================================
struct Resolution {
    var width = 0
    var height = 0
}

class ViewMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let resolutionInstance = Resolution()
let viewModeInstance = ViewMode()
print("The width of resolution is \(viewModeInstance.resolution.width)")
viewModeInstance.resolution.width = 100

// in structure there is automatically generate memberwise which you can pass the property of structure when initialize it like below
let vga = Resolution(width: 20, height: 40)
print(vga.width)

// Value type copy the object to another object when you assign an object instance of enum or structur to another variable it will be 2 different instance even though they have same value and properties. so when you change the properties in the one instance, the other instance will be same when it first initialize, it will not follow the changes made by the other one

// Reference Type doesn't copy the obejct, only pass on to another variable, so when you change one properti of the new object, the old object will change too, becuase both of them refer to same instance. one of the reference type is class

// To compare one instance to another you can use "==="(identical to) not "=="
let anotheViewModeInstance = viewModeInstance
let anotherResolutionInstance = resolutionInstance
if viewModeInstance === anotheViewModeInstance {
    print("the both class instance are same")
}

// two struct cannot be compared to equallity by default, but you can do that by implement "Equatable" and make function "=="
struct HouseEquatable: Equatable {
    var street: String
    
    static func ==(lhs: HouseEquatable, rhs: HouseEquatable) -> Bool {
        return lhs.street == rhs.street
    }
}

let houseEquatableOne = HouseEquatable(street: "Jl Protokol")
var houseEquatableTwo = houseEquatableOne
print(houseEquatableOne == houseEquatableTwo)
houseEquatableTwo = HouseEquatable.init(street: "Jl Jendral")
print(houseEquatableOne == houseEquatableTwo)

/* Properties
 Stored properties = will save constanta or variable value as a part of instance, (class and structure),
 Computed properties = will calculate a value (class, structure and enumeration),
 */
