//
//  ViewController.swift
//  Permanent Data Storage
//
//  Created by Terry Donaghe on 10/3/16.
//  Copyright © 2016 Donaghe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtPhoneNumber: UITextField!
    @IBOutlet weak var lblStoredPhoneNumber: UILabel!
    
    
    
    @IBAction func btnRemember(_ sender: AnyObject) {
        if !(txtPhoneNumber.text?.isEmpty)! {
            UserDefaults.standard.set(txtPhoneNumber.text, forKey: "phoneNumber")
            lblStoredPhoneNumber.text = txtPhoneNumber.text
        } else {
            lblStoredPhoneNumber.text = "Please enter a phone number above."
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let storedNumberObject = UserDefaults.standard.object(forKey: "phoneNumber")
        if let storedNumber = storedNumberObject as? String {
            lblStoredPhoneNumber.text = storedNumber
        } else {
            lblStoredPhoneNumber.text = ""
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

