//
//  IteratorCursorPattern.swift
//  OCP
//
//  Created by Mac on 3.02.2022.
//

import Foundation
//Iterator (Cursor) pattern uses for complex types like array and dictionary Object carier while
//calling from client. without they know which complex type and how iteration doing, they can invoked.
class Worker
{
    private var _workerName : String
    private var _title : String
    
    init(workerName:String,title:String) {
        self._workerName = workerName
        self._title = title
    }
    
   func String()->String {
        return _workerName + " " + _title
    }
}
protocol Iterator {
func next() -> Bool
func getItem()-> Worker
}
class ArrayIterator: Iterator {
    private var saleDprt:SaleDepartment = SaleDepartment()
    private var index:Int = 0
    
    func next() -> Bool {
        if index < saleDprt.getWorkers().count {
                    return true
        }else{
            return false
        }
    }
    
    func getItem() -> Worker {
        var w:Worker = saleDprt.getWorkers()[index]
        index += 1
        return w
    }
}
extension Dictionary
{
     subscript(index:Int) -> Worker {
        get{
            var t:Worker?
            var i:Int = 0
            for (k,v) in self
            {
            if i == index{
                t = v as! Worker
                break
            }
            i += 1
            }
            return t!
        }
    }
}

class DictionaryIterator:Iterator{
    private var hrDprt:HRDepartment = HRDepartment()
    private var index:Int = 0
    
    func next() -> Bool {
        if index < hrDprt.getWorkers().count {
                    return true
        }else{
            return false
        }
    }
    
    func getItem() -> Worker {
        var w:Worker = hrDprt.getWorkers()[index]
        index += 1
        return w
    }
}
protocol Iterable {
    func getIterator() -> Iterator
}
class HRDepartment: Iterable {
    private var worker = Dictionary<String,Worker>()
    init() {
        worker["1"] = Worker(workerName: "Zafer Demirkol", title: "Intern")
        worker["2"] = Worker(workerName: "Aykut Taşdelen", title: "Teacher")
        worker["3"] = Worker(workerName: "Erim Baç", title: "Manager")
    }
    func getWorkers() -> Dictionary<String,Worker> {
        return worker
    }
    func getIterator() -> Iterator {
        return DictionaryIterator()
    }
}
class SaleDepartment: Iterable {
    private var worker:[Worker]
    init() {
        worker = [Worker]()
        worker.append(Worker(workerName: "Mustafa Ercan", title: "Expert"))
        worker.append(Worker(workerName: "Eren Baç", title: "Intern"))
        worker.append(Worker(workerName: "Ercan Sezer", title: "Consultant"))
    }
    func getWorkers() -> [Worker] {
        return worker
    }
    func getIterator() -> Iterator {
        return ArrayIterator()
    }
}
