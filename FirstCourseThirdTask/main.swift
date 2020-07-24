// Этот файл пуст не по ошибке. В этот раз вам необходимо самостоятельно импортировать необходимые модули и запустить проверку#
import FirstCourseThirdTaskChecker
import Foundation

//TBD - BEGINNING
class queue: ArrayInitializableStorage{
    var counter = 0
    override var count: Int {
    get{
        return counter
    }
    set{
        counter = newValue
    }
    }
    var myQueue: [Int]
    
    required init(array: [Int]) {
        self.myQueue = array
        super.init()
    }
    
    required init() {
        self.myQueue = [Int](repeating: 0, count: 0)
        super.init()
    }
   
    override func push(_ element: Int) {
        myQueue.append(element)
        count = myQueue.count
     }
    
     override func pop() -> Int {
        count = myQueue.count - 1
        let output1 = myQueue.first!
        myQueue.remove(at: 0)
        return output1
     }
    
}
///TBD - ENDING

class stack: ArrayInitializableStorage {
    var counter = 0
    var index = 0
    var index_2 = 2
    override var count: Int {
    get{
        return counter
    }
    set{
        counter = newValue
    }
    }
    var myStack: [Int]
    
    required init(array: [Int]) {
       self.myStack = array
       super.init()
    }
     required init() {
        myStack = [Int](repeating: 0, count: 3)
        super.init()
     }

     override func push(_ element: Int) {
        print(element)
        print("////")
        myStack[index] = element
        index += 1
        count += 1
     }
    
     override func pop() -> Int {
        let output = myStack[index_2]
        print(output)
        myStack[index_2] = 0
        index_2 = index_2 - 1
        count = count - 1
        print (myStack)
        return output
     }
    
}

let checker = Checker()

let queue1 = queue()
let stack1 = stack()

checker.checkInheritance(stack: stack1, queue: queue1)
