// Этот файл пуст не по ошибке. В этот раз вам необходимо самостоятельно импортировать необходимые модули и запустить проверку#
import FirstCourseThirdTaskChecker
import Foundation


let checker = Checker()

//TASK #1
class queue: ArrayInitializableStorage{
    
    var counter = 0
    var index = 0
    var index_2 = 0
    var myQueue: [Int]
    
    override var count: Int {
        get{
            return counter
        }
        set{
            counter = newValue
        }
    }
    
        
    required init(array: [Int]) {
        self.myQueue = array
        self.counter = array.count
        super.init()
    }
    
    required init() {
        myQueue = [Int](repeating: 0, count: self.counter)
        super.init()
    }

    override func push(_ element: Int) {
        myQueue.append(element)
        index += 1
        count += 1
    }
        
    override func pop() -> Int {
        let output = myQueue[index_2]
        myQueue[index_2] = 0
        index_2 = index_2 + 1
        count = count - 1
        return output
    }
}

class stack: ArrayInitializableStorage {
    
    var counter = 0
    var index = 0
    var index_2 = 2
    var myStack: [Int]
    
    override var count: Int {
        get{
            return counter
        }
        set{
            counter = newValue
        }
    }
    
    required init(array: [Int]) {
        self.myStack = array
        self.counter = array.count
        super.init()
    }
    
     required init() {
        myStack = [Int](repeating: 0, count: self.counter)
        super.init()
     }

     override func push(_ element: Int) {
        myStack.append(element)
        index += 1
        count += 1
     }
    
     override func pop() -> Int {
        let output = myStack[index_2]
        myStack[index_2] = 0
        index_2 = index_2 - 1
        count = count - 1
        return output
     }
}

let queueClass = queue()
let stackClass = stack()

checker.checkInheritance(stack: stackClass, queue: queueClass)


//TASK #2

struct queue_protocoled: StorageProtocol, ArrayInitializable {
    var Queue: [Int]
    var counter = 0
    var index_2 = 0
    var count: Int {
        get{
            return counter
        }
        set{
            counter = newValue
        }
    }
    
    init() {
        Queue = []
    }
    
    init(array: [Int]) {
        Queue = array
        counter = array.count
    }
    
    mutating func push(_ element: Int) {
        count += 1
        Queue.append(element)
    }

    mutating func pop() -> Int {
        count -= 1
        return Queue.removeFirst()
    }
}

struct stack_protocoled: StorageProtocol, ArrayInitializable {
    var Stack: [Int]
    var counter = 0
    var count: Int {
        get{
            return counter
        }
        set{
            counter = newValue
        }
    }
    
    init(array: [Int]) {
        Stack = array
        counter = array.count
    }
    
    init() {
        Stack = []
       }
    
    mutating func push(_ element: Int) {
        Stack.append(element)
        count += 1
    }
    
    mutating func pop() -> Int {
        count = count - 1
        return Stack.removeLast()
    }
}
let protStack = stack_protocoled()
let protQueue = queue_protocoled()

checker.checkProtocols(stack: protStack, queue: protQueue)


//TASK #3

extension User:JSONInitializable, JSONSerializable {
    public convenience init(JSON: String) {
        self.init()
        let clientsData = JSON.filter {
            char in let myFilter:[Character] = ["\"",":","{","}",","]
            return !myFilter.contains(char)
        }
        var dataArray = clientsData.components(separatedBy: " ")
        self.email = dataArray.last!
        self.fullName = dataArray.remove(at: 0)
        self.fullName = dataArray.remove(at: dataArray.count-1)
        self.fullName = dataArray.remove(at: dataArray.count-1)
        self.fullName = dataArray.joined(separator: " ")
}
    
    public func toJSON() -> String {
        return "{\"fullName\": \""+self.fullName+"\", \"email\": \""+self.email+"\"}"
    }
}

checker.checkExtensions(userType: User.self)
