//
//  ViewController.swift
//  Pizza With Parker
//
//  Created by Andrew Strange on 3/8/17.
//  Copyright © 2017 e. All rights reserved.
//

import UIKit
protocol PizzaMaker {
    //im assuming you made your class "Pizza"
    func orderPizza(pizza:[Pizza])->Int
    func cookPizza(pizzas:[Pizza])->Void
}
class ViewController: UIViewController, PizzaMaker {
    
    var pizzas : [Pizza] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        let p1 = Pizza(size: "Large", toppings: ["BBQ Beef", "Bacon", "Jalepenos"], sauce: "Normal", cost: 2.99, crust: "Pan")
        let p2 = Pizza(size: "Medium", toppings: ["Cheeeeezzzeee"], sauce: "cheesy", cost: 33.00, crust: "cheese")
        
        print("Your order will take \(orderPizza(pizza: [p1, p2])) minutes")
        cookPizza(pizzas: [p1])
        print(pizzas.count)
        cookPizza(pizzas: [p2])
        print(pizzas.count)
    }
    
    func orderPizza(pizza: [Pizza]) -> Int {
        for pzza in pizza {
            pizzas.append(pzza)
        }
        return 10 * pizzas.count
    }
    
    func cookPizza(pizzas: [Pizza]) {
        for (i, p) in pizzas.enumerated() {
            for pp in self.pizzas {
                if pp == p {
                    self.pizzas.remove(at: i)
                }
            }
        }
    }
    
}
