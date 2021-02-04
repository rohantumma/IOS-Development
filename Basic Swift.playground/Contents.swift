import UIKit

var str = "Hello, playground"

print(str+" I am Mac")

// data
123
0.7
"pandas"


// variables to keep track the pice of data

//syntax var varname

var first_name = "Pandas"
var phone_numer = 100

phone_numer+=1
print(first_name,phone_numer)

// let(const like in c) - > dont allows us to re assing

let lastname = "Loki"

// error
//lastname = "KoKo"

print(lastname)

/*******************************Data Types****************************************/
 
/*
 
     0) String  : String data
     1) int     : whole numer +ve and -ve
     2) Float   : Decimal numer
     3) Doule   : Large decimal number
     4) Bool    : true or false
*/

var aName : String = "Pandas"
var aInt : Int = 10
var aFloat : Float = 19.0000000009807
var aDoule : Double = 19.0000000009807
var aBool : Bool = true
    aBool = false


print(aBool,aInt,aDoule,aFloat,aName)


// typealis is a decorater for orinail thing
// micro way in c
typealias x = Int
var pandas: x = 100
print(pandas)


// null value
//var nilValue:String? = nil




/*******************************String data type****************************************/

print("\n\n\nString-------")
var String_Literal : String = "String literal way"
var String_Instance = String("String instance way")
let Multi_line_string = """
pandas are well and good.
pandas are awsome.
"""
print(Multi_line_string)

String_Literal.isEmpty


//string interpolation   \(data type)
print("\(String_Literal) \n\(String_Instance)")



// string concat  str1 + str2
print("String length using str1.count : \(String_Instance.count)")



// string iterator
for i in String_Instance{
    print(i, separator: "-", terminator: " ")
}


// unicode
var aa="abcde"
for code in aa.utf16{
    print("\nUnicode using str1.utf8 or str1.utf8 : \(code) .. \(code)")
}


// toInt()
// reverded()


print("\n\n\n-------")
/******************************** if else   **********************************************/


// && and
// || or
// ! not

let a = 10

if a<10 {
    print("A is less than 10")
}
else if a==10 {
    print("A is equal to 10")
}
else {
    print("A is grater than 10")
}



/******************************** switch case   **********************************************/



var choice: Int = 1

switch choice {
case 0:
    print("0 is number")
case 1:
    print("1 is number")
default:
    print("Not in range")
}




/********************************  for loop   **********************************************/


// for counter in lower...upper{
//     code
// }

for counter in 1...5 {
    print("for loop", counter)
}


var data : [Int] = [10,20,30]

for i in data{
    print(i)
}



/********************************  while loop   **********************************************/


print("\n")
var while_counter : Int =  0

while while_counter<10 {
    print(while_counter)
    while_counter +=  1
}


/********************************  repeat while loop (do while loop)   **********************************************/

var dowhile_counter = 0
repeat{
    print("do while", dowhile_counter)
    dowhile_counter += 1
}while (dowhile_counter < 10)




/********************************  Array   **********************************************/

print("\n\n\n-------- Array --------")

// var arrayname = []

var someArray = [Int](repeating: 5, count: 10)

var anotherarray : [Int] = [10,20,30,40]

anotherarray[0]=100

for i in anotherarray{
    print(i)
}

// array append

var names = [String]()
names.append("Pandas")
names.append("Loki")
names.append("Thor")

for i in names{
    print(i)
}

// enum in array

for (index, item) in names.enumerated(){
    print("index \(index) is \(item)")
}


// adda two array

var array1: [Int] = [10,20,30]
var array2: [Int] = [40,50,60]

var array3 = array1 + array2

for  i in array3{
    print(i)
}

// count array len

print(array1.count)

// isempty

print("array is epmty array1.isEmpty : \(array1.isEmpty)")






/********************************  Sets   **********************************************/
print("\n\n\n-------- Sets --------")


// used for to store discrit values
// not in order of insert
var sets = Set<Int>()

sets.insert(1)
sets.insert(111)
sets.insert(14)
sets.insert(1161)
sets.insert(18)
sets.insert(141)


for i in sets{
    print(i)
}

// sorting the sets

print(sets.sorted())
    

// set operations



let evens: Set = [10,12,14,16,18, 13]
let odds: Set = [5,7,9,11,13]
let primes = [2,3,5,7]

print("set union operation :", odds.union(evens).sorted())
print("set inersect operation : ", odds.intersection(evens).sorted())



/********************************  Dictionary   **********************************************/

print("\n\n\n-------- Dictionary --------")

var dict = [Int : String]()

dict[1]="pandas"
dict[2]="loki"
dict[3]="thor"

print(dict[1] as Any )


var arrayAny = [Any]()

arrayAny.append(1)
arrayAny.append("Pandas")
arrayAny.append(true)

print(arrayAny)

// dict to array

var dictkey = [Int](dict.keys)
var dictvale = [String](dict.values)

print(dictkey)
print(dictvale)



/********************************  Function  **********************************************/

print("\n\n\n-------- Function --------")



func demo(id: Int) -> Int{
    return id+1
}

print(demo(id: 10))

func add(no1: Int, no2: Int) -> (sum: Int, sub: Int){
    return (no1+no2, no1-no2)
}

let result = add(no1: 10, no2: 20)
print("sum is \(result.sum) and subb is \(result.sub)")



// variadic functions

func vari<N>(data: N...){
    for i in data{
        print(i, terminator: "-")
    }
    print("\n")
}


vari(data: 4,3,5)
vari(data: 4.5, 3.1, 5.6)
vari(data: "Swift 5", "Enumerations", "Closures")


/********************************   Structures  **********************************************/

print("\n\n\n-------- Structures --------")


struct emp{
    var ID : Int
    var name : String
    var sal: Float
    
    // self init for values
    init(ID: Int, name: String, sal: Float) {
        self.ID = ID
        self.name = name
        self.sal = sal
    }
}

var emp1 = emp(ID: 1, name: "Pandas", sal: 1000.09)

print(emp1)


