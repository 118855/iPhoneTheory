import Foundation
/*:
# Типы данных

В этом разделе ты узнаешь:
- что такое константы и переменные
- для чего нужны базовые оператор
- почему Swift считается строготипизированным языком программирования
- разберешься чем типы для целых чисел отчиличаются от типов для чисел с плавающей точкой
- что такое логический тип и как он представлен в Swift
- какие бывают строковые типы
- как делать преобразование типов
- что такое опциональны типы

Внимательно изучи:
- [Константы и переменные](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html)
- [Простые типы данных](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html)
- [Базовые операторы](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html)
- [Строки и символы](https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html)
 - 

Закрепи пройденный материал:

#### Задание 1:
 - Объяви две целочисленные однотипные переменные, при этом тип данных первой должен быть задан неявно, а второй — явно. Обеим переменным должны быть присвоены значения.
 - Поменяй значения переменных местами.
 - Выведи получившиеся значения в консоль. При этом в каждом варианте выводимых данных текстом напиши, какую переменную ты выводишь.
*/

// Добавь код сюда:
var firstNumber = 22
var secondNumber: Int = 44
var thirdNumber: Int = 0
thirdNumber = firstNumber
firstNumber = secondNumber
secondNumber = thirdNumber
print("Переменная а равна \(firstNumber), переменная b равна \(secondNumber)")
/*:
---
### Задание 2:
 - Объяви три параметра. Первый из них должен быть константой типа `Float` с произвольным числовым значением, второй — пустой константой типа `Float`, третий — пустой переменной типа `Double`.
 - Установи новое произвольное значение всем параметрам, для которых эта операция возможна.
*/
// Добавь код сюда:
let parameter: Float = 3.3
let parameter2: Float
var parameter3: Double
parameter2 = 3.4
parameter3 = 3.5


/*:
---
#### Задание 3:
 - Объяви три пустые константы: одну типа `Int`, одну типа `Float` и одну типа `Double`.
 - Проинициализируй их следующими значениями: для `Int` значение 18, для `Float` — 16.4,  для `Double` — 5.7.
 - Найди сумму всех трех констант и запишите ее в переменную типа `Float`. Результат выведи в консоль.
*/
// Добавь код сюда:
let first: Int
let second: Float
let third: Double
first = 18
second = 16.4
third = 5.7
var summ: Float = Float(first) + second + Float(third)
print("Сумма констант first, second, third равно \(summ)")

/*:
- Найди произведение всех трех констант и запиши его в переменную типа `Int`. Результат выведи в консоль.
 - Note: 👆 _Помни, что тебе необходимо получить результат с минимальной погрешностью._
*/
// Добавь код сюда:
var multiple: Int = Int(Double(first)*Double(first)*third)
print("Произведение констант first, second, third  равно \(multiple)")
/*:
- Найди остаток от деления константы типа `Float` на константу типа `Double` и запиши ее в переменную типа `Double`. Результат выведи в консоль.
*/
// Добавь код сюда:
var remainder: Double = Double( Int(second) % Int(third))
print ("Остаток от деления second на third равен \(remainder)")

/*:
---
#### Задание 4:
 - Объяви переменную типа `String` и запиши в нее произвольный строковый литерал.
 - Объяви две переменные типа `Int` и запиши в них произвольные значения.
 - Одним выражением объедини в строковый литерал переменную типа `String` и сумму переменных типа `Int`, а результат запиши в новую константу.
 - Выведи в консоль результат.
 */
// Добавь код сюда:
var string = "Hello"
var integer = 25
var secondInteger = 50
let allTogether = string + String( integer + secondInteger)
print(allTogether)
/*:
---
#### Задание 5:
 - Объяви две логические переменные. Значение первой должно быть равно _true_, второй — _false_.
 - Запиши в две константы результат использования их в качестве операндов для операторов логического `И` или `ИЛИ`.
 - Выведи на консоль значения обеих получившихся констант.

 */
// Добавь код сюда:
var logicalTrue = true
var logicalFalse = false
let and = logicalTrue && logicalFalse
let or = logicalTrue || logicalFalse
print("Результат логического И равен \(and), рузельтат ИЛИ равено \(or)")

/*:
---
#### Задание 6:
 - Напиши при помощи строк свое имя, фамилию и дату рождения.
 - Собери эти строки в одну и выведи в консоль получившееся значение.
 - Выведи на консоль значения обеих получившихся констант.

 */
// Добавь код сюда:
let name = "Marina Poliakova-Bilous"
let dateOfBirth = " 20.11.1991"
let allInformation = name + dateOfBirth
print(allInformation)
print(name,dateOfBirth)


/*:
---
## Продвинутый уровень:

#### Задание 7:
 - Создай 5 строк с названием стран.
 - Если в названии страны встречается буква А, выведи ее нзавание в консоль.
*/
// Добавь код сюда:
var country1 = " Ukraine", country2 = "Poland", country3 = "France", country4 = "Italy", country5 = "USA"
var allCountries = [country1, country2, country3, country4, country5]
for country in allCountries {
    if country.contains("A") {
        print(country)
    }
}
/*:
---
#### Задание 8:
 - Создай строку — набор букв кириллицей. Буквы абсолютно любые, но строчные.
 - Замени их, создав отдельную переменную, на заглавные. А потом на строчные латинские.
 - Посчитай индекс,  под которым находится каждая отдельно взятая буква.
 - Выведи его консоль.
*/
// Добавь код сюда:
let someString = "строка"
var changedString = someString.uppercased()
let new = someString.applyingTransform(.toLatin, reverse: false)

for index in someString.indices {
    print(index)
}
for (index, char) in someString.enumerated() {
    print("\(index) - \(char)")
}

// Думала еще такой вариант, но сработало только для первых трех букв
var eng = "a"
var rus = "а"

for scalar in eng.unicodeScalars {
    print(scalar.value)
}
for scalar in rus.unicodeScalars {
    print(scalar.value)
}

var newString = String()
for scalar in someString.unicodeScalars {
    let newWord = scalar.value - (1090 - 116)
    let char = UnicodeScalar(newWord)
    newString.append(String(char!))
}
newString

/*:
---
#### Задание 9:
 - Создай строку — набор букв кириллицей. Буквы абсолютно любые, но строчные.
 - Замени их, создав отдельную переменную, на заглавные. А потом на строчные латинские.
 - Посчитай индекс,  под которым находится каждая отдельно взятая буква.
 - Выведи его консоль.
*/
// Добавь код сюда:
//: [Назад: Playground](@previous)  |  Страница 3  |  [Вперед: Коллекции. Массивы и множества](@next)
