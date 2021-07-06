import Foundation
/*:
# Универсальные шаблоны

В этом разделе ты узнаешь:
- что такое универсальные шаблоны
- что такое универсальные функции
- что такое универсальные типы
- что такое ограничение типа
- что такое связанные типы

Внимательно изучи:
- [Универсальные типы](https://docs.swift.org/swift-book/LanguageGuide/Generics.html)

Закрепи пройденный материал:
#### Задание 1
 - Оптимизируй приведенный ниже код:
*/

func areIntEqual(x: Int, _ y: Int) -> Bool {
  return x == y
}

func areStringsEqual(x: String, _ y: String) -> Bool {
  return x == y
}

// Добавь код сюда:
func areEqual<T: Equatable>(x: T, _ y: T) -> Bool {
    return x == y
  }
/*:
---
#### Задание 2
 - Оптимизируй приведенный ниже код:
*/
func existsManual(item:String, inArray:[String]) -> Bool {
    var index:Int = 0
    var found = false

    while (index < inArray.count && found == false)
    {
        if item == inArray[index]
        {
            found = true
        }
        else
        {
            index = index + 1
        }
    }

    if found
    {
        return true
    }
    else
    {
        return false
    }
}
/*:
func existsManual(item:String, inArray:[String]) -> Bool
...
func existsManual(item:Int, inArray:[Int]) -> Bool
...
func existsManual(item:Float, inArray:[Float]) -> Bool
...
func existsManual(item:Double, inArray:[Double]) -> Bool
...
// "Person" is a custom class we'll create
func existsManual(item:Person, inArray:[Person]) -> Bool
*/

// Добавь код сюда:
class Person: Equatable {
    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.name == rhs.name && lhs.surname == rhs.surname && lhs.phoneNumber == rhs.phoneNumber
    }
    
    let name: String
    let surname: String
    let phoneNumber: Int
    
    init (name: String, surname: String, phoneNumber: Int) {
        self.name = name
        self.surname = surname
        self.phoneNumber = phoneNumber
    }
}

func existsManual<T: Equatable>(item:T, inArray:[T]) -> Bool {
    for  value in inArray {
    if item == value {
            return true
        }
    }
    return false
}
 
existsManual(item: Person(name: "Mari", surname: "Bilous", phoneNumber: 099), inArray: [Person(name: "Jack", surname: "Sparrow", phoneNumber: 598), Person(name: "Mari", surname: "Bilous", phoneNumber: 099)])

existsManual(item: 3, inArray: [1, 4, 6])

//: [Назад:  Делегаты](@previous)  |  Страница 13]  [Вперед:  Паттерны проектирования](@next)
