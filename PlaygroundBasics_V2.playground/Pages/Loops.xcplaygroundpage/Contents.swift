import Foundation

/*:
# Управление потоком

В этом разределе ты узнаешь:
- что такое управление потоком
- для чего нужны циклы

  `while` _condition_ {\
    _statements_\
   }

  `repeat` {\
    _statements_\
    } _while_ condition


  `for` _value_ `in` _range_ {\
    _statements_\
    }

- что такое условные инструкции
- какие бывают операторы передачи управления
- как проверить доступность API

 Внимательно изучи:
- [Управление потоком](https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html)
- [Цикл For in](https://www.avanderlee.com/swift/loops-swift/)
- [Циклы for, while, repeat](https://www.avanderlee.com/swift/loops-swift/)
- [For each](https://developer.apple.com/documentation/swift/array/1689783-foreach)
- [Statements](https://docs.swift.org/swift-book/ReferenceManual/Statements.html)
- [Conditional Statements](https://learnappmaking.com/swift-conditionals-if-statement-how-to/)
- [Доступность API](https://www.hackingwithswift.com/example-code/language/how-to-use-available-to-check-for-api-availability)

Закрепи пройденный материал:

#### Задание 1
 - Обьяви переменную `n` и проинициализируй ее  любым целочисленными значением.
*/
// Добавь код сюда:
var n = 5
/*:
 - Напиши код, который выведет в консоль фразу _I like Swift!_ `n` раз.
 
 - Note: 👆 _Для решения используй циклы_ `for` _или_ `while`
*/
/*:
 
 - Example: 😉
_Input:_\
var n = 3\
_Output:_\
 I like Swift!\
 I like Swift!\
 I like Swift!
 */

// Добавь код сюда:

while n > 0 {
    print("I like Swift!")
    n -= 1
}

/*:
---
#### Задание 2
 
 - Выведи в консоль первые `n` квадратов чисел (_квадрат - произведение числа на себя, например 4 = 2 * 2_).
 
 - Example: 😉
_Input:_\
n = 5\
 _Output_:\
 1\
 4\
 9\
 16\
 25
*/
// Добавь код сюда:

n = 5
for index in 0...n {
    print(index * index)
}

/*:
 - Выведи в консоль степени числа `2`, которые меньше или равны `n`.
 
 - Example: 😉
 _Input:_\
n = 100\
 _Output:_\
 2\
 4\
 8\
 16\
 32\
 64
 */
 // Добавь код сюда:

n = 100
var index = 2

while index <= n {
    print (index)
    index *= 2
}

/*:
 - Нарисуй в консоли квадрат из `n` на `n` звездочек (⭐)
 - Example: 😉
 _Input:_\
n = 4\
 _Output:_\
 ⭐⭐⭐⭐\
 ⭐⭐⭐⭐\
 ⭐⭐⭐⭐\
 ⭐⭐⭐⭐
 
 */
// Добавь код сюда:

n = 4

for _ in 1...n {
    print(String(Array(repeating: "⭐", count: n)))
}

/*:
 - Нарисуй в консоли треугольник из `n` звездочек (⭐)
 - Example: 😉
 _Input:_\
n = 4\
 _Output:_\
 ⭐\
 ⭐⭐\
 ⭐⭐⭐\
 ⭐⭐⭐⭐
 */
// Добавь код сюда:

n = 4

for index in 1...n {
    print(String(Array(repeating: "⭐", count: index)))
}

/*:
---
#### Задание 3:
 - Создай массив из 20-30 значений любого типа.
 - Сделай линейную сортировку (linear sort).
 - Сделайте сортировку пузырьком (bubble sort).
 - Сделайте быструю сортировку  (quick sort).
*/
// Добавь код сюда:

var someArray = [12, 34, 54, 3222, 5767, 43, 4545, 5555555, 67544, 1, 3, 4, 22, 374, 88, 5, 873, 21, 98, 2198, 33298]

//linear sort
func linearSort (array:  inout [Int]) -> [Int] {
    guard array.count > 1 else {return array}
    for min in 0..<array.count {
            for j in min..<array.count {
                if array[j] < array[min] {
                    let temp = array[min]
                    array[min] = array[j]
                    array[j] = temp
                }
            }
        }
    return array
}
print(linearSort(array: &someArray))

    
    

//bubble sort
func bubleSort (array:  inout [Int]) -> [Int] {
    for i in 0..<array.count {
    
        let index = (array.count - 1) - i
    
        for j in 0..<index {
            var number = array[j]
            var numberTwo = array[j + 1]
            if number > numberTwo {
            number = array[j + 1]
            numberTwo = array[j]
        }
    }
  }
    return array
}
bubleSort(array: &someArray)


//quick sort
func quickSort (array:[Int]) -> [Int] {
    if array.count == 0 {
        return []
    }
    let comparableNumber = array[0]
    let comparableArray = array.count > 1 ? array[1..<array.count] : []
    let smallerArray = comparableArray.filter({$0 <= comparableNumber})
    let greaterArray = comparableArray.filter({$0 > comparableNumber})
    
    return quickSort(array: smallerArray) + [comparableNumber] + quickSort(array: greaterArray)
}

quickSort(array: someArray)




/*:
---
### Продвинутый уровень:

#### Задание 4:
 - Создай 10 строковых переменных с названиями стран. Объяви массив, элементами которого будут строки.
 - Проверь строки: если в строке более 5 символов — добавь её в массив. Но если строка содержит букву А - замени эту букву на другую и добавь изменённую строку в массив.
 - Выведи в консоль полученный массив.
*/
// Добавь код сюда:

//Такое же задание было в Arrays

var ukraine = "Ukraine", poland = "Poland", france = "France", italy = "Italy", spain = "Spain", greece = "Greece", hungary = "Hungary", china = "China", brasil = "Brasil", albania = "Albania"

var allCountries = [ukraine, poland, france, italy, spain, greece, hungary, china, brasil, albania]

var sortedArray = [String]()

for (_, value) in allCountries.enumerated() {
    if value.count > 5 && !value.contains("A") {
        sortedArray.append(value)
    }
    if value.contains("A") {
        let newValue = value.replacingOccurrences(of: "A", with: "O")
        sortedArray.append(newValue)
        }
    }

print(sortedArray)
/*:
---
#### Задание 5:
 - Создай строковую константу word и проинициализируй ее любым словом.
 - Выведи в консоль True, если строка является изограммой и false, если нет
*/
/*:
- Note: 👆 _Изограмма - это слово или фраза, в которой нет повторяющихся букв_\
*/
/*:
- Example: 😉\
_Input:_\
let word ="Password"\
_Output:_\
false
*/
/*:
- Example: 😉\
_Input:_\
let word ="Algorism"\
_Output:_\
 True
*/
// Добавь код сюда:
let word = "Apple"
let wordLovercased = word.lowercased()
wordLovercased.count == Set(wordLovercased).count ? print("true") : print("false")

/*:
---
#### Задание 5:
 - Создай строковую константу word и проинициализируй ее любым значением.
 - Повтори в новой строке каждую букву исходной по 3 раза.
 - Полученный результат выведи в консоль.
 */
/*:
- Example: 😉\
_Input:_\
let word ="Hello"\
_Output:_\
 "hhheeellllllooo"
*/
// Добавь код сюда:
var newWord = String()

word.forEach{
    for _ in 0..<3 {
    newWord.append($0)
    }
}
print(newWord)
/*:
---
#### Задание 6:
 - Обьяви массив, состояющий из строк и целых чисел.
 - Удали из массива все строки.
 - Полученный результат выведи в консоль.
 */
/*:
- Example: 😉\
_Input:_\
let array =[1, 2, "a", "b"] \
_Output:_\
 [1, 2]
*/
// Добавь код сюда:
var array: [Any] = [1, 2, "a", "b"]

var newArray = array.compactMap({$0 as? Int})
print(newArray)

//: [Назад: Коллекции. Массивы и множества](@previous)  |  Страница 5  |  [Вперед:  Функции](@next)
