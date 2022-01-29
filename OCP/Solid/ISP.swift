//
//  ISP.swift
//  OCP
//
//  Created by Mac on 29.01.2022.
//

import Foundation
//Interface Segregation Principle
// bacause of machine protocol; OldFashionedPrinter even does not has scaning,faxing features
//must has those function
class Document {
    
}
protocol Machine {
    func print(d:Document) throws
    func scan(d:Document) throws
    func fax(d:Document) throws
}

//this is Ok. But however if a machine only has just printing ability then what can we do?
class MultiFunctionPrinter:Machine{
    func print(d: Document) {
        
    }
    
    func scan(d: Document) {
        
    }
    
    func fax(d: Document) {
        
    }
}
enum NoRequiredFunctionality:Error{
    case doesNotFax
    case doesNotScan
    case doesNotPrint
}
class OldFashionedPrinter:Machine{
    
    func print(d: Document) {
        //this is fine
    }
    
    func scan(d: Document) throws {
        //We are not gonna use this function because this feature not exist in this machine
        throw NoRequiredFunctionality.doesNotScan
    }
    
    func fax(d: Document) throws {
        //We are not gonna use this function because this feature not exist in this machine
        throw NoRequiredFunctionality.doesNotFax
    }
    
  
}
//For interface Segregation principle we can seperate Machine protocol to each functionality;
protocol Printer {
    func print(d:Document)
}
protocol Scanner {
    func scan(d:Document)
}
protocol Fax {
    func fax(d:Document)
}

class OrdinaryPrinter: Printer {
    func print(d: Document) {
        
    }
}
class PhotoCopier:Printer,Scanner{
    func print(d: Document) {
        
    }
    
    func scan(d: Document) {
        
    }
    
    
}
protocol MultiFunctionDevices:Printer,Scanner,Fax {
    
}
class MultiFunctionMachine:MultiFunctionDevices{

    
    let printer : Printer
    let scanner : Scanner
    let fax : Fax
    init(printer: Printer, scanner : Scanner ,fax : Fax) {
        self.printer = printer
        self.scanner = scanner
        self.fax = fax
    }
    
    func print(d: Document) {
        printer.print(d:d) // Decorator pattern
    }

    func scan(d: Document) {
        scanner.scan(d: d)
    }

    func fax(d: Document) {
        fax.fax(d: d)
    }
    
    
}
