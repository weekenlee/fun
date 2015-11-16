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
            print("set")
        }
    }
    
    func say()->String {
        name = "hi"
        if let  s = con.sayfromobjc() {
            print("swift: i have got \"\(s)\"  \n")
        }
        return name + " from helloer in swift"
    }
}
