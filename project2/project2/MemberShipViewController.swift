//
//  MemberShipViewController.swift
//  project2
//
//  Created by SWUCOMPUTER on 2017. 10. 14..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class MemberShipViewController: UIViewController {
    
    @IBOutlet var number: UILabel!
    @IBAction func show(_ sender: UISwitch) {
        if sender.isOn{
            number.text = "0192  4243  2959  0329"
        }
        else{
            number.text = "****  ****  ****  0329"
        }
    }
}
