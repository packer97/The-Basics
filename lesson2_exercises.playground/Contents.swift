// Испрвьте код, чтобы не было ошибки:
let optional: Int? = 7
let nonOptional: Int = 2

// Есть ли здесь ошибки?
 var name: String? = "Test"
// var age: Int = nil
 let distance: Float = 26.7
 var middleName: String? = nil

//// Полностью разверните number разными способами
let number: Int??? = nil
//print(number!!!)
if let a = number {
    if let b = a{
        if let c = b{
            print(c)
        }
    }
}else{print("does not contain value")}

// Замените значение 15 на 17 в массиве
 var numbers = [4, 8, 15, 16, 23, 42]
 numbers[2]=17
 print(numbers)
// Есть ли здесь ошибки?
//
 let array1 = [Int]()
// let array2 = []
 let array3: [String] = []
//
 let array4 = [1, 2, 3]
 print(array4[0])
// print(array4[5])
 array4[1...2]
// array4[0] = 4
// array4.append(4)
//
 var array5 = [1, 2, 3]
 array5[0] = array5[1]
 array5[0...1] = [4, 5]
// array5[0] = "Six"
// array5 += 6
 for item in array5 { print(item) }
//
// let dict1: [Int, Int] = [:]
// let dict2 = [:]
 let dict3: [Int: Int] = [:]
//
 var dict4 = ["One": 1, "Two": 2, "Three": 3]
// dict4[1]
 dict4["One"]
 dict4["Zero"] = 0
// dict4[0] = "Zero"
//
 var dict5 = ["NY": "New York", "CA": "California"]
 dict5["NY"]
 dict5["WA"] = "Washington"
 dict5["CA"] = nil
print(dict5)

// Найдите деревенских, но не домашних животных из данных множеств:
 let houseAnimals: Set = ["🐶", "🐱"]
 let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let farmAn = farmAnimals.subtracting(houseAnimals)

// Сделайте из этого словаря новый словарь со средними рейтингами приложений
let appRatings = [
    "Calendar Pro": [1, 5, 5, 4, 2, 1, 5, 4],
    "The Messenger": [5, 4, 2, 5, 4, 1, 1, 2],
    "Socialise": [2, 1, 2, 2, 1, 2, 4, 2]
]
var ratings = appRatings.mapValues{
Double($0.reduce(0,+))/Double($0.count)
}

// Получите строку с названиями приложений из предыдущего задания с рейтингом выше 3
ratings.forEach {
    if $1>3{
        print($0,$1)
    }
}

// Напишите функцию, которая добавляет перед началом переданной строки "Привет, " и выводит результат в консоль
func whereIsTheMoney(name:String) {
    print("Where's the money \(name)?")
}
whereIsTheMoney(name:"Lebowski")


// Напишите функцию, которая принимает имя и фамилию в виде параметров и выводит строку приветствия в консоль
func frstnamescndname(firstname:String, secondname:String){
    print("Hello \(firstname) \(secondname)")
}
frstnamescndname(firstname:"Dude", secondname:"Lebowski")
// Напишите функцию, которая принимает переменное число параметров типа int и возвращает их сумму

func sumall(_ num:Int...) -> Int {
    let totalSum = num.reduce(0, {$0+$1})
    return totalSum
}
print(sumall(1,2,3,4,5,6,7,8,9,10,45))

// Напишите замыкание, которое печатает строку "Привет" и присвойте это замыкание переменной. Вызовите замыкание

let hello = {
        print("Привет")
}
hello()

// Напишите замыкание, которое принимает 2 числа и возвращает их сумму. Присвойте это замыкание переменной и вызовите его
let sum = {
    (a:Int,b:Int)->Int in
    return a+b
}
print(sum(2,3))

// Отсортируйте массив [16, 8, 15, 42, 4, 23] по убыванию
let array = [16, 8, 15, 42, 4, 23]
let sortedArray = array.sorted {$1<$0}
print(sortedArray)

// Из массива [16, 8, 15, 42, 4, 23] сделайте новый массив с числами больше 10
var newArray = [Int]()
array.forEach { number in
    if number > 10 {
        newArray.append(number)
    }
}
print(newArray)

// Напишите функцию, которая принимает замыкание в качестве параметра и вызывает его

func acceptClosure (str:String, using parameter: (String) -> String)->String {
    return parameter(str)
}
acceptClosure(str: "Привет", using: { $0 + " Друг"
})

// Напишите функцию, которая возвращает замыкание, которое что-то печатает в консоль
func printed() {
    print("printed something")
}
printed()

// Напшите функцию, которая повтораяет переданное замыкание заданное число раз


func repeatClosure( number:Int, closure:() -> ()) {
    for _ in 0...number{
        closure()
    }
}
repeatClosure( number: 5, closure:hello)


// Управление памятью
// Уберите утечку памяти
class Employee { var computer: Computer? }
class Computer { var employee: Employee? }
var employee: Employee? = Employee()
var computer: Computer? = Computer()
employee?.computer = computer
computer?.employee = employee

//// Уберите утечку памяти
class Counter {
    var value = 0
    lazy var increase = {
        self.value += 1
        
    }
}
var count = Counter()
count.value = 3
count.increase()
count.value

// Напишите функцию, которая будет принимать строку и возвращать true, если она есть в любом из двух массивое, либо false в противном случае
let animals1 = ["dog", "cat", "bird", "pig"]
let animals2 = ["turtle", "snake", "lizard", "shark"]


func trueOrFalse (array:[Any]) -> Bool {
    var answer = false
    for num in array{
        if num is String{
             answer = true
        }else{
            answer = false
        }
    }
    return answer
}
trueOrFalse(array: array)

// Напишите функцию, которая считает факториал
func factorial (_ n: Int) -> Double {
    if n == 0 {
        return 1
    }
    var a: Double = 1
    for i in 1...n {
        a *= Double(i)
    }
    return a
}
factorial (1)

// Напишите функцию, которая будет считать сколько раз в массиве встречается цифра 2
let ar = [5,5,5,5,2,5,5,5,5,2,1,2]
func how2 (array:[Int])->Int{
    var c:Int = 0
    ar.forEach {
        if $0==2{
            c += 1
        }
    }
    return c
}
how2 (array:ar)

// Напишите функцию, которая будет проверять есть ли среди первых 3 элементов массива цифра 2
func how23 (array:[Int])->Bool{
    var a:Bool=false
    for i in 0...2{
        if array[i] == 2 {
                a=true
            }
        }
    return a
    }
   how23 (array:ar)
// Напишите функцию, которая будет считать количество раз, которое две цифры 5 встречаются рядом в массиве
func nearby (array:[Int])->Int{
    var c:Int = 0
    for i in 0...array.count-1{
            if array[i] == 5 {
                if array[i+1] == 5{
                c+=1
                }
            }
        }
    return c
}
    

nearby(array:ar)


