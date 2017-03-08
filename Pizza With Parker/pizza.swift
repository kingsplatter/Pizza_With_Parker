//
//  pizza.swift
//  Pizza With Parker
//
//  Created by Parker Erikson on 3/8/17.
//  Copyright © 2017 e. All rights reserved.
//

import Foundation

class Pizza{
    
    var size: String
    var toppings : [String]
    var sauce : String
    var cost : Double
    var crust : String

    init(size: String, toppings: [String], sauce : String, cost: Double, crust : String) {
        self.size = size
        self.toppings = toppings
        self.sauce = sauce
        self.cost = cost
        self.crust = crust
    }
    
    
    static func ==(lhs : Pizza, rhs : Pizza) -> Bool {
        if lhs.size != rhs.size {
            return false
        }
        if lhs.toppings != rhs.toppings {
            return false
        }
        if lhs.sauce != rhs.sauce {
            return false
        }
        if lhs.cost != rhs.cost {
            return false
        }
        if lhs.crust != rhs.crust {
            return false
        }
        return true
    }
    

}
