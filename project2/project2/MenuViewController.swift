//
//  MenuViewController.swift
//  project1
//
//  Created by SWUCOMPUTER on 2017. 10. 13..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    

    @IBOutlet var display: UILabel!
    @IBOutlet var coffeeImage: UIImageView!
    @IBOutlet var picker: UIPickerView!
    
    let coffee: [String] = ["아메리카노","카페라떼","카페모카","바닐라라떼","녹차라떼","딸기스무디"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return coffee.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return coffee[row]
    }
    
    let coffee1 = UIImage(named: "americano.png")
    let coffee2 = UIImage(named: "latte.png")
    let coffee3 = UIImage(named: "moca.png")
    let coffee4 = UIImage(named: "vanila.png")
    let coffee5 = UIImage(named: "greentea.png")
    let coffee6 = UIImage(named: "strawberry.png")
    
    @IBAction func pressed(_ sender: UIButton) {
        let index = picker.selectedRow(inComponent: 0)
        
        if coffee[index]=="아메리카노" {
            coffeeImage.image = coffee1
            display.text = "kcal: 10"
        }
        else if coffee[index]=="카페라떼" {
            coffeeImage.image = coffee2
            display.text = "kcal: 150"

        }
        else if coffee[index]=="카페모카" {
            coffeeImage.image = coffee3
            display.text = "kcal: 230"

        }
        else if coffee[index]=="바닐라라떼" {
            coffeeImage.image = coffee4
            display.text = "kcal: 235"

        }
        else if coffee[index]=="녹차라떼" {
            coffeeImage.image = coffee5
            display.text = "kcal: 350"

        }
        else if coffee[index]=="딸기스무디" {
            coffeeImage.image = coffee6
            display.text = "kcal: 360"

        }
    }
    
    
}
