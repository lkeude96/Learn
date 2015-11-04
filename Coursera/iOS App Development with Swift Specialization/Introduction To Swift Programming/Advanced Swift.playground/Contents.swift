//: Playground - noun: a place where people can play

import UIKit

class SuperNumber: NSNumber {
    override func getValue(value: UnsafeMutablePointer<Void>) {
        super.getValue(value)
    }
}



protocol dancable {
    func dance()
}

extension NSNumber: dancable {
    func superCoolGetter() -> Int {
        return 5
    }
    
    func dance() {
        
    }
}