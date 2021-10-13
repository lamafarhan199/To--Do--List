import Foundation



enum Taskstatus {
    case completed
    case pending
}

struct TaskItem {
    
    var title: String
    var description: String
    var priority: String
    var taskstatus:Taskstatus
    
}

struct List {
    var title: String
    var items: [TaskItem] = []
    
    mutating func addtask(task:TaskItem) {
        self.items.append(task)
        print("Addded Succefully")
    }
    mutating func updateTaskFromList(index :Int , update: TaskItem ){
        if (self.items.count > index){
            self.items[index] = update
            print("Task Updated Successfully")
        } else {
            print("Cannot find task")
        }

        
    }
    mutating func removeTaskFromList(index: Int){
        if (self.items.count > index){
        self.items.remove(at: index)
        print("Task Deleted Successfully")
        } else {
            print("Item cannot be deleted")
        }
    }
}
class Todolist {
    var list1 : [List]  = []
    func removeTask(Listindex : Int, TaskItemindex : Int) {
        print("Deleted Succefully")
    }
    
    func readTask() {
        for item in list1 {
            print(item.title)
            for task in item.items {
                print(task.title, task.description, task.priority)
            }
        }
    }
    

    func addtask(add:List) {
        self.list1.append(add)
        print("added succefully")
    }
}

//             

var zerotask = TaskItem(title: "appointment", description: "check", priority: "high", taskstatus: .completed)
var firsttask = TaskItem (title: "go to the university", description: "studying", priority: "med", taskstatus: .pending)
var secondtask = TaskItem  (title: "go to the jym", description: "exercises", priority: "med", taskstatus: .pending)
var thirdtask = TaskItem (title: "appointment", description: "check", priority: "high", taskstatus: .pending)

var myTask = List(title: "list1", items: [zerotask,firsttask])
var ourtask = List(title: "list2", items:[secondtask,thirdtask])

var myList = Todolist()
myList.addtask(add: myTask)
myList.addtask(add: ourtask)
 

myList.list1[0].removeTaskFromList(index: 1)
myList.readTask()
