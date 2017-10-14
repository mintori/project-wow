//
//  OrderdetViewController.swift
//  project2
//
//  Created by SWUCOMPUTER on 2017. 10. 13..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class OrderdetViewController: UIViewController {
    
    
    @IBOutlet var label: UILabel!
    var coffeeName: String!
    
    @IBOutlet var milkChoice: UIView!
    @IBOutlet var syrupChoice: UIView!
    @IBOutlet var iceChoice: UIView!
    @IBOutlet var mlikChoiceSeg: UISegmentedControl!
    @IBOutlet var syrupChoiceSl: UISlider!
    @IBOutlet var iceChoiceSl: UISlider!
    
    var syrup : Int=0
    var milk : String="일반"
    var ice : Int=0
    var coName : String!

    @IBOutlet var button: UIButton!
    
    @IBOutlet var hotCold: UISegmentedControl!
    @IBOutlet var option: UISegmentedControl!
    
    var orderOK : Bool = false
    
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    @IBAction func coffeeMaking(_ sender: Any) {
        coName = hotCold.titleForSegment(at: hotCold.selectedSegmentIndex)
        let opt = option.titleForSegment(at: option.selectedSegmentIndex)
        activityIndicator.startAnimating() // 옵션 고르는동안 indicator 활성
        syrupChoice.isHidden = true
        iceChoice.isHidden = true
        milkChoice.isHidden = true
        
        if coName == "Hot"{
            if opt == "syrup"{
                syrupChoice.isHidden = false
            }
            else if opt == "milk"{
                milkChoice.isHidden = false
            }
        }
        else{
            if opt == "syrup"{
                syrupChoice.isHidden = false
            }
            else if opt == "milk"{
                milkChoice.isHidden = false
            }
            else if opt == "ice"{
                iceChoice.isHidden = false
            }
        }
    }

    @IBAction func slider(_ sender: UISlider) {
        syrup = Int(sender.value*10)
        label.text =  "시럽 " + String(syrup) + "번 선택하셨습니다"
        activityIndicator.stopAnimating()
    }
    @IBAction func iceSlider(_ sender: UISlider) {
        ice = Int(sender.value*100)
        label.text = "얼음 " + String(ice) + "% 선택하셨습니다"
        activityIndicator.stopAnimating()
    }
    @IBAction func milkSeg(_ sender: UISegmentedControl) {
        milk = mlikChoiceSeg.titleForSegment(at: sender.selectedSegmentIndex)!
        activityIndicator.stopAnimating()
        label.text = milk + "우유를 선택하셨습니다"
    }
    
    
    @IBAction func success(_ sender: Any) {
        syrupChoice.isHidden = true
        iceChoice.isHidden = true
        milkChoice.isHidden = true
        label.text = coffeeName+" compelete!"
        orderOK = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! StarViewController
        let button = sender as! UIButton
        destVC.title = button.titleLabel?.text
        destVC.syrup = syrup
        destVC.milk = milk
        destVC.ice = ice
        destVC.coName = coName //hot or cold?
        destVC.coffeeName = coffeeName
        if orderOK == true && coName != nil {
            destVC.star = 1
            destVC.progressOK = true
        }
        else{
            destVC.star = 0
            destVC.progressOK = false
        }
    }
}
