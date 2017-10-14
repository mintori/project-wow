//
//  ViewController.swift
//  project1
//
//  Created by SWUCOMPUTER on 2017. 10. 12..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var loginShow: UIButton! //login창으로 넘어가는 button
    @IBOutlet var loginLabel: UILabel! //로고를 보여주는 레이블
    @IBOutlet var menuDisplay: UILabel!
    var loginCor : String!
    var loginOk : Bool = false
    var coffeeName : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if loginOk == true {
            loginLabel.text = loginCor + "고객님"
        }
    } // 메인화면에 로그인한 닉네임이 뜬다.
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let destVC = segue.destination
        let button = sender as! UIButton
        destVC.title = button.titleLabel?.text
        if segue.identifier == "login"{
        }
        else if segue.identifier == "menu"{
        }
        else if segue.identifier == "order"{
        }
        else if segue.identifier == "news"{
        }
        else if segue.identifier == "member"{
        }
    }
}

