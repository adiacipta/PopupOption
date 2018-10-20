//
//  ViewController.swift
//  PopupOption
//
//  Created by I Ketut AC Pratama on 10/20/18.
//  Copyright © 2018 I Ketut AC Pratama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var countryCodeButton: UIButton!
    @IBOutlet weak var mobileField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var mobileLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var changeLangButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countryCodeButton.layer.cornerRadius = 6.0
        loginButton.layer.cornerRadius = 8.0
    }

    @IBAction func countryCodeTapAction(_ sender: UIButton) {
        print("IKT-Country code button tapped...")
    }
    
    @IBAction func loginTapAction(_ sender: UIButton) {
        print("IKT-Login button tapped...")
    }
    
    @IBAction func changeLangTapAction(_ sender: UIButton) {
        print("IKT-Change language button tapped...")
    }
    
}

