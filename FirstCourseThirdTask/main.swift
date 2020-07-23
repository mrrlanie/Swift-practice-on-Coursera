// Этот файл пуст не по ошибке. В этот раз вам необходимо самостоятельно импортировать необходимые модули и запустить проверку#
import FirstCourseThirdTaskChecker
import Foundation

class queue: ArrayInitializableStorage{
    override var count: Int = 0
    var myQueue: [Int]
    required init(array: [Int]) {
        self.myQueue = array
        super.init()
    }
    required init() {
        fatalError("init() has not been implemented")
    }
    override func push(_ element: Int) {
        myQueue.append(element)
    
    }
    
    
}
class stack: ArrayInitializableStorage {
    override var count: Int {0}
    
}

let checker = Checker()

let queue1 = queue(array: [10])
let stack1 = stack()

checker.checkInheritance(stack: stack1, queue: queue1)
