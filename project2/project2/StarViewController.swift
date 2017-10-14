//
//  StarViewController.swift
//  project2
//
//  Created by SWUCOMPUTER on 2017. 10. 14..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class StarViewController: UIViewController {

    @IBOutlet var display: UILabel!
    @IBOutlet var displayMenu: UILabel!
    @IBOutlet var displayMenu1: UILabel!
    
    var star : Float!
    var progressOK : Bool!
    var syrup : Int!
    var ice : Int!
    var milk : String!
    var coName : String!
    var coffeeName : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if progressOK == true{
            display.text = "별" + String(Int(star)) + "개 적립"
            displayMenu.text = coName + " " + coffeeName
            displayMenu1.text = "시럽" + String(syrup) + "번,  " + milk + "우유,  얼음량" + String(ice) + "%"

        }else{
            display.text = "별" + String(Int(star)) + "개 적립"
            displayMenu.text = "옵션사항없음"
        }
    }
}
