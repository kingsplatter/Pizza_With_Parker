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
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

