import UIKit
import Foundation
import Darwin

enum Taskstatus {
    case completed
    case pending
}

struct TaskItem {
    
    var title: String
    var description: String
    var priority: String
    
}

class ToDoList {
    
    var tasks :[TaskItem]
    init(){
        tasks = []
    }
    
    func addtask(todo:TaskItem) {
        tasks.append(todo)
        print("Addded Succefully")
    }
       
    func removeTask(index : Int) {
        tasks.remove(at: index)
        print("Deleted Succefully")
    }
    
    func readTask(){
        for list in tasks  {
            print("\(list.title) ....  \(list.description)  ....  \(list.priority)")
        }
    }
    
    func updateTask(index :Int , updat: TaskItem ){
     tasks[index] = updat
        print("Task Updated Successfully")
    }
}

var myTask = ToDoList()
var firsttask = TaskItem (title: "go to the university", description: "studying", priority: "completed")
var secondtask = TaskItem  (title: "go to the jym", description: "exercises", priority: "pending")
var thirdtask = TaskItem (title: "appointment", description: "check", priority: "completed")

myTask.addtask(todo: firsttask)
myTask.addtask(todo: secondtask)
myTask.addtask(todo: thirdtask)

myTask.updateTask(index: 2, updat:thirdtask)

//myTask.removeTask(index: 0)
//myTask.removeTask(index: 1)

myTask.readTask()
