//
//  DIP.swift
//  OCP
//
//  Created by Mac on 29.01.2022.
//

import Foundation
//High level module should not depend on low level module both should depend on abstructions
//abstructions should not depend on Detail and Detail should depend on abstruction
enum Relationship{
    case parent
    case child
    case sibling
}

class Person{
    var name = " "
    init(_ name: String) {
        self.name = name
    }
}

//class Relationships // Low-level Module
//{
//    var relations = [(Person,Relationship,Person)]()
//    func addParentAndChild(_ p:Person, _ c: Person) {
//        relations.append((p , .parent , c))
//        relations.append((c,.child,p))
//    }
//}
//class Research // High-Level Module
//{
//    init(_ relationships : Relationships) {
//        let relations = relationships.relations
//        for r in relations where r.0.name == "John" && r.1 == .parent {
//            print("John has child called \(r.2.name)")
//        }
//    }
//}

// here we are violating Dependency Inversion because High level module depends on Low level Module directly

protocol RelationshipBrowser {
   func findAllChildrenOf(_ name:String)->[Person]
}
class Relationships:RelationshipBrowser// Low-level Module
{
    
    var relations = [(Person,Relationship,Person)]()
    func addParentAndChild(_ p:Person, _ c: Person) {
        relations.append((p , .parent , c))
        relations.append((c,.child,p))
    }
    
    func findAllChildrenOf(_ name: String) -> [Person] {
        return relations.filter{$0.name == name && $1 == .parent && $2 === $2}
            .map{$2}
    }
}
class Research // High-Level Module
{
    init(_ browser: RelationshipBrowser) {
        for p in  browser.findAllChildrenOf("John")
        {
            print("John has child called \(p.name)")
        }
    }
}
