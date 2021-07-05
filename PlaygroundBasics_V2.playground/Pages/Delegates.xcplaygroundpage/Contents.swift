import Foundation
/*:
 # Делегаты

 Делегирование - это шаблон, который позволяет классу или структуре передавать (или делегировать) некоторую ответственность экземпляру другого типа. Этот шаблон реализуется определением протокола, который инкапсулирует делегируемые полномочия, таким образом, что соответствующий протоколу тип (делегат) гарантировано получит функциональность, которая была ему делегирована. Делегирование может быть использовано для ответа на конкретное действие или для получения данных из внешнего источника без необходимости знания типа источника.
 */
/*:
 Более подробно ты можешь прочитать [тут.](https://docs.google.com/document/d/1ZRHiPgmIqsOQIihG8Ad0WPgyajWR2zKux-EKt0pYQwQ/edit?usp=sharing)
 */

/*:
 ---
 ## Задание 1
 
 Ты завел будильник и после того как он зазвонит, тебе надо его выключить. Напиши программный код. Схематически это выглядит так:\
  ![Delegate.Task1](Playground.Delegate.Task1.png)
 */

// Добавь код сюда:
class User {
    
    func setAlarm () {
        
        let alarm = Alarm()
        alarm.delegate = self
        alarm.turnON()
    }
    
}

extension User: AlarmDelegate {
    func alarmDidRang() {
        print("User: I heard the alarm and woke up.")
    }
}
    
protocol AlarmDelegate: class {
    func alarmDidRang()
}

class Alarm{
    
    weak var delegate: AlarmDelegate?
    
    func turnON(){
        
        print("Alarm: The alarm is ringing")
        delegate?.alarmDidRang()
    }
}


let user = User()
user.setAlarm()
/*:
---
## Задание 2

Ты решил сделать ремонт у себя в комнате и  нанял строителя. После того как строитель выполнит подготовительные работы, он должен позвонить тебе с определенным вопросом. Получив от тебя ответ на вопрос, строитель продолжит свою работу. Через некоторое время он позвонит тебе еще раз и сообщит, что закончил ремонт. Опиши эту ситуацию программно. Схематически это выглядит так:\
![Delegate.Task2](Playground.Delegate.Task2.png)
*/
// Добавь код сюда:
class Client {
   func startRenovation() {
        
        let worker = Worker()
        worker.delegate = self
        worker.startWork()
        worker.finishRenovation()
   }
}

extension Client: WorkerDetegate {
    
    func workerDidPaintWalls() {
        print("Client: Black color.")
    }
    func workerDidEndRenovation() {
        print("Client: Good job.")
    }
}

protocol WorkerDetegate: class {
   
    func workerDidPaintWalls()
    func workerDidEndRenovation()
}

class Worker {
    
    weak var delegate: WorkerDetegate?
    
   
    func startWork () {
        print("Worker: Prepearing works are finished.")
        print("Worker: What color of walls do you want?")
        delegate?.workerDidPaintWalls()
    }
    
    func finishRenovation () {
        print("Worker: Renovation is end.")
        delegate?.workerDidEndRenovation()
    }
}


let client = Client()
client.startRenovation()
//: [Назад: Протоколы](@previous)  |  Страница 12]  [Вперед:  Универсальные шаблоны](@next)
