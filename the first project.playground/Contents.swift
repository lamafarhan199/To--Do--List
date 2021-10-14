import UIKit
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
  mutating func showlist(){
    for f in items {
      print("\(f.title) \(f.description ) \(f.priority) \(f.taskstatus)")
    }
  }
}
class Todolist {
  var lists : [List] = []
  func createList(list: List){
    self.lists.append(list)
  }
  func readTask() {
    for item in lists {
      print(item.title)
      for task in item.items {
        print(task.title, task.description, task.priority)
      }
    }
  }
}
//
var myLists = Todolist()
var zerotask = TaskItem(title: "appointment", description: "check", priority: "high", taskstatus: .completed)
var firsttask = TaskItem (title: "go to the university", description: "studying", priority: "med", taskstatus: .pending)
var secondtask = TaskItem (title: "go to the jym", description: "exercises", priority: "med", taskstatus: .pending)
var thirdtask = TaskItem (title: "appointment", description: "check", priority: "high", taskstatus: .pending)
myLists.createList(list: List(title: "Work", items: [zerotask, firsttask, secondtask, thirdtask]))
myLists.readTask()


myLists.lists[0].updateTaskFromList(index: 0, update: TaskItem(title: "visit", description: "visit my family", priority: "high", taskstatus: .completed))
myLists.readTask()

myLists.lists[0].removeTaskFromList(index: 0)
myLists.readTask()

