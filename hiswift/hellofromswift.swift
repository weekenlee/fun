//
//  hellofromswift.swift
//  hiswift
//
//  Created by liweijian on 15/11/16.
//  Copyright © 2015年 liweijian. All rights reserved.
//

import Foundation

class helloer: NSObject {
    var name: String!
    var con: ViewController! {
        didSet {
            print("set my con\n")
        }
    }
    
    func say()->String {
        self.handleSomething("one", complete: self.hadleSomethingComplete)
        
        self.handleSomething("second") {
            (result:String)	 in
            print(result)
            return result
        }
        
        name = "hi"
        if let  s = con.sayfromobjc() {
            print("swift: i have got \"\(s)\"  \n")
        }
        return name + " from helloer in swift"
        
    }
    
    func handleSomething(_ input:String, complete:(_ result:String)	->String) {
        print("do something \(input)")
        print(complete("finish"))
    }
    
    func hadleSomethingComplete(_ result:String) ->String {
        print(result)
        return result
    }
    
}
