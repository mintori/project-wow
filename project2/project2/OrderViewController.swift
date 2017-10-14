//
//  OrderViewController.swift
//  project2
//
//  Created by SWUCOMPUTER on 2017. 10. 13..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! OrderdetViewController
        let button = sender as! UIButton
        destVC.title = button.titleLabel?.text
        destVC.coffeeName = button.titleLabel?.text
    }

}
