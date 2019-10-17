//
//  File Name: ViewController.swift
//  Midterm Exam
//
//  Created by Jae Nigel Miranda on 2019-10-16.
//  Student ID: 301106338
//  Copyright © 2019 Jae Nigel Miranda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Shopping list Label Reference
    @IBOutlet weak var lblListName: UITextField!
    
    //Shopping list item name Label Reference
    @IBOutlet weak var lblItem1: UITextField!
    @IBOutlet weak var lblItem2: UITextField!
    @IBOutlet weak var lblItem3: UITextField!
    @IBOutlet weak var lblItem4: UITextField!
    @IBOutlet weak var lblItem5: UITextField!
    
    //Shopping list quantity Label Reference
    @IBOutlet weak var lblQuantity1: UITextField!
    @IBOutlet weak var lblQuantity2: UITextField!
    @IBOutlet weak var lblQuantity3: UITextField!
    @IBOutlet weak var lblQuantity4: UITextField!
    @IBOutlet weak var lblQuantity5: UITextField!
    
    //5 of the stepper's Reference
    @IBOutlet weak var stepper1: UIStepper!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Action called when + or - is tapped
    @IBAction func stepper1ValueChanged(_ sender: UIStepper) {
        let stepper = sender.tag
        
        
        //Checks which stepper was tapped using tag
        switch(stepper){
            
        case 1:
            //increments or decrements quantity
            lblQuantity1.text = Int(sender.value).description
        case 2:
            lblQuantity2.text = Int(sender.value).description
        case 3:
            lblQuantity3.text = Int(sender.value).description
        case 4:
            lblQuantity4.text = Int(sender.value).description
        case 5:
            lblQuantity5.text = Int(sender.value).description
        default:
            lblQuantity1.text = Int(sender.value).description
    }
}
    
    //This function verifies if the user wants to cancel using UIAlertController
    @IBAction func btnCancel(_ sender: UIButton) {
        let alert = UIAlertController(title: "Are you sure?", message: "All data will be permanently erased", preferredStyle: .alert)

        //Code runs when the button "Yes" is pressed
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { action in
            
            self.lblItem1.text = ""
            self.lblItem2.text = ""
            self.lblItem3.text = ""
            self.lblItem4.text = ""
            self.lblItem5.text = ""
            // Clears all textField
            self.lblQuantity1.text = ""
            self.lblQuantity2.text = ""
            self.lblQuantity3.text = ""
            self.lblQuantity4.text = ""
            self.lblQuantity5.text = ""
        }))
        
        //Does nothing when button "Cancel" is pressed
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))

        
        self.present(alert, animated: true)
    }
    
    
    //This function gives feedback that data has been "saved"
    @IBAction func btnSave(_ sender: UIButton) {
        let alert = UIAlertController(title: "Saved", message: "All changes have been saved", preferredStyle: .alert)

        

        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))

        self.present(alert, animated: true)
        
        //Saves values to local storage
        UserDefaults.standard.set(lblItem1.text!, forKey: "itemName1")
        UserDefaults.standard.set(lblItem2.text!, forKey: "itemName2")
        UserDefaults.standard.set(lblItem3.text!, forKey: "itemName3")
        UserDefaults.standard.set(lblItem4.text!, forKey: "itemName4")
        UserDefaults.standard.set(lblItem5.text!, forKey: "itemName5")
        
        UserDefaults.standard.set(lblQuantity1.text!, forKey: "itemQuantity1")
        UserDefaults.standard.set(lblQuantity2.text!, forKey: "itemQuantity2")
        UserDefaults.standard.set(lblQuantity3.text!, forKey: "itemQuantity3")
        UserDefaults.standard.set(lblQuantity4.text!, forKey: "itemQuantity4")
        UserDefaults.standard.set(lblQuantity5.text!, forKey: "itemQuantity5")
        
    }
}
