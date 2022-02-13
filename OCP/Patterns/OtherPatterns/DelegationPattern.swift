//
//  DelegationPattern.swift
//  OCP
//
//  Created by Macintosh on 13.02.2022.
//

import Foundation

//This pattern thematizes that an object delegates a task to another object, instead of doing a task itself,the task done by another object.
// delegates and delegated object must adobt same protocol.
//delegates object must contain a property that has type from that protocol
//So with this property assigned object can be delegeted a task.

protocol Delegation
{
    func Task()
}
class A:Delegation
{
    func Task() {
        print("Task done by A Object")
    }
}
class B:Delegation
{
    func Task() {
        print("Task done by B Object")
    }
}
class C:Delegation
{
    var delegate:Delegation?
    func ToDelegation(delegate:Delegation) {
        self.delegate = delegate
    }
    func Task() {
        self.delegate!.Task()
    }
}

//Example 2. Delegation pattern;
protocol TaskCompletion
{
    func ChangeStatus(task:Taskx,status:Bool)
}
class Project: TaskCompletion
{
    var name:String = ""
    var Tasks = [Taskx]()
    
    func ChangeStatus(task: Taskx,status:Bool) {
        var s = "\(task.Description) "
        if task.Status {
            s += "Complated"
        }
        else{
            s+="continues"
        }
        print(s)
    }

}
class Taskx{
    var Description:String = ""
    var Delegate:TaskCompletion?
    private var status:Bool = false
    var Status:Bool
    {
        get{
            return status
        }
        set(val){
            status = val
            self.Delegate?.ChangeStatus(task: self,status: status)
        }
    }
}
