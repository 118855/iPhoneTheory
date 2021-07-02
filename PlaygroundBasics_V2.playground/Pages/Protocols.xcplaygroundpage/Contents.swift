import Foundation
/*:
# Протоколы

В этом разделе ты узнаешь:
- что такое протокол
- какой у него синтакисис
- что значит фраза " класс (структура) удовлетворяет протокол".

Внимательно изучи:
- [Протокол](https://docs.swift.org/swift-book/LanguageGuide/Protocols.html)

Закрепи пройденный материал:
#### Задание 1
 - Объяви протокол _Employee_. Он должен содержать одно свойство _hours_ типа `Int` и один метод _work()_ без параметров и возвращаемого значения.
 */
// Добавь код сюда:
protocol Employee {
    var hours: Int { get }
    func work()
}
/*:
 - Обьяви два класса _Painter_ и _Doctor_.
 - Укажи, что оба этих класса удовлетворяют протоколу.
 - Реализуй протокол в каждом из классов.
 */
// Добавь код сюда:
class Painter: Employee {
    var hours: Int
    
    func work() {
    }
    
    init(hours: Int) {
        self.hours = hours
    }
}

class Doctor: Employee {
    var hours: Int
    
    func work() {
    }
    
    init(hours: Int) {
        self.hours = hours
    }
}
/*:
 - Создай экземпляры каждого из классов.
 - Вызови метод _work_ для каждого из них.
 */
let jack = Painter(hours: 1)
jack.work()
let tom = Doctor(hours: 3)
tom.work()
/*:
---
#### Задание 2
 - Реализуй иерархию классов, представленную на рисунке:
 ![Telephone](Playground.Telephone.Protocols.png)
 - Note: 👆 _Обрати внимание, что классы iOS, androidOS  и windowsOS удовлетворяют протоколу Internetable_
 */
// Добавь код сюда:
protocol Telephone {
    func makeCall()
    func hangUp()
}

protocol Landline: Telephone {
}

protocol Cellular: Telephone {
    func sendSMS()
}

protocol Rotaryable {
    func rotaryInput()
}

protocol PushButtonable {
    func buttonInput()
}

protocol Touchable {
    func touchInput()
}

protocol Internetable {
    func accessInternet()
}

class Rotary: Landline, Rotaryable {
    func rotaryInput() {
    }
    func makeCall() {
    }
    func hangUp() {
    }
}

class PushButton: Landline, PushButtonable {
    func buttonInput() {
    }
    func makeCall() {
    }
    func hangUp() {
    }
}

class NonSmart: PushButtonable, Cellular {
    func sendSMS() {
    }
    func buttonInput() {
    }
    func makeCall() {
    }
    func hangUp() {
    }
}

class iPhone: Cellular {
    func sendSMS() {
    }
    func makeCall() {
    }
    func hangUp() {
    }
}

class IOS: iPhone, Internetable, Touchable {
    func accessInternet() {
    }
    func touchInput() {
    }
}

class AndroidPhone: Cellular {
    func sendSMS() {
    }
    func makeCall() {
    }
    func hangUp() {
    }
}

class AndroidOS: Internetable, Touchable {
    func accessInternet() {
    }
    func touchInput() {
    }
}

class WindowsPhone: Cellular {
    func sendSMS() {
    }
    func makeCall() {
    }
    func hangUp() {
    }
}

class WindowsOS: Internetable, Touchable {
    func accessInternet() {
    }
    func touchInput() {
    }
}
//: [Назад: Структуры и классы](@previous)  |  Страница 11  |  [Вперед: Делегаты](@next)
