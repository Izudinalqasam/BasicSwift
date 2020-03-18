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
