//
//  ViewController.swift
//  Lot-caliculator
//
//  Created by 細川聖矢 on 2019/09/17.
//  Copyright © 2019 Seiya. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.InputA.keyboardType = UIKeyboardType.numberPad
        self.InputB.keyboardType = UIKeyboardType.numberPad
        self.InputE.keyboardType = UIKeyboardType.numberPad
        self.InputD.keyboardType = UIKeyboardType.numberPad
        
        lottButtonLabel.backgroundColor = UIColor.blue
        lottButtonLabel.layer.cornerRadius = 10.0
        lottButtonLabel.setTitleColor(UIColor.white, for: .normal)
        
        InputA.text = ""
        InputB.text = ""
        InputC.text = "未計算"
        InputE.text = ""
        InputD.text = ""
        InputF.text = "未計算"
        
        bannerView.adUnitID = "ca-app-pub-4439113960692957/8673486771"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
    }

    func Loss(){
        if InputA.text! == ""||InputB.text! == ""{
            InputC.text = "入力漏れ有り｡"
        }
        else if Double(InputB.text!)! > 100{
            InputC.text = "損切は100以下"
        }
        else{
        InputC.text =  String(Double(InputA.text!)!*Double(InputB.text!)!/100)
        }
    }
    
    func Lott(){
        if InputA.text! == ""||InputB.text! == ""||InputE.text! == ""||InputD.text! == ""{
            InputF.text = "入力漏れ有り｡"
        }
        else if Double(InputB.text!)! > 100{
            InputF.text = "損切は100以下"
        }
        else{
        InputF.text = String(Double(InputA.text!)!*Double(InputB.text!)!/1000/Double(InputE.text!)!/Double(InputD.text!)!)
        }
    }
    
   
    @IBOutlet weak var InputA: UITextField!
    @IBOutlet weak var InputB: UITextField!
    @IBOutlet weak var InputE: UITextField!
    @IBOutlet weak var InputD: UITextField!
    
    @IBOutlet weak var InputC: UILabel!
    @IBOutlet weak var InputF: UILabel!
    @IBAction func lottCaliculate(_ sender: Any) {
        Loss()
        Lott()
    }
    @IBOutlet weak var lottButtonLabel: UIButton!
    @IBAction func tapScreen(_ sender: Any) {
        self.view.endEditing(true)
    }
    @IBOutlet weak var bannerView: GADBannerView!
    
}

