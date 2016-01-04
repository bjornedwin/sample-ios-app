//
//  ViewController.swift
//  bjorn-sample
//
//  Created by Edwin, Bjorn on 12/1/15.
//  Copyright (c) 2015 Edwin, Bjorn. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var txtMyDevice: UITextField!
    @IBOutlet weak var btnSubmit: UIButton!
    @IBOutlet weak var lblConfirmation: UILabel!
    @IBOutlet weak var pkrFavDevice: UIPickerView!
    
    var arrDeviceList = ["AppleWatch","AppleTV","iPhone","iPad","iPod","MacBook","iMac"]
    
    var myselection = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pkrFavDevice.delegate = self
        pkrFavDevice.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func SubmitChoice(sender: UIButton) {
        var mychoice = txtMyDevice.text
        if mychoice == "" {
            self.lblConfirmation.text = "ERROR: Enter your name first"
        }
        else {
        self.lblConfirmation.text = "\(mychoice), your favorite is \(myselection)"
        }
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return arrDeviceList[row]
        
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrDeviceList.count
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        myselection = arrDeviceList[row]
        
    }

}

