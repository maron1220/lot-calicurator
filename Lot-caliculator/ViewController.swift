//
//  ViewController.swift
//  Lot-caliculator
//
//  Created by 細川聖矢 on 2019/09/17.
//  Copyright © 2019 Seiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.InputA.keyboardType = UIKeyboardType.numberPad
        self.InputB.keyboardType = UIKeyboardType.numberPad
        self.InputE.keyboardType = UIKeyboardType.numberPad
        self.InputD.keyboardType = UIKeyboardType.numberPad
        
        InputA.text = ""
        InputB.text = ""
        InputC.text = ""
        InputE.text = ""
        InputD.text = ""
        InputF.text = ""
    }

    func Loss(){
        if InputA.text! == ""||InputB.text! == ""{
            InputC.text = "資金or損切(%)入力漏れ｡"
            print("good")
        }else{
            print(InputA.text)
            print(InputB.text)
            print("bad")
        InputC.text =  "\(String(Double(InputA.text!)!*Double(InputB.text!)!/100))円"
        }
    }
    
    func Lott(){
        if InputA.text! == ""||InputB.text! == ""||InputE.text! == ""||InputD.text! == ""{
            InputF.text = "入力漏れ有り｡"
        }else{
        InputF.text = "\(String(Double(InputA.text!)!*Double(InputB.text!)!/100/Double(InputE.text!)!/Double(InputD.text!)!))Lot"
        }
    }
    
   
    @IBOutlet weak var InputA: UITextField!
    @IBOutlet weak var InputB: UITextField!
    @IBOutlet weak var InputE: UITextField!
    @IBOutlet weak var InputD: UITextField!
    @IBAction func lossCaliculateButton(_ sender: Any) {
        Loss()
    }
    @IBOutlet weak var lossButtonLabel: UIButton!
    @IBOutlet weak var InputC: UILabel!
    @IBOutlet weak var InputF: UILabel!
    @IBAction func lottCaliculate(_ sender: Any) {
        Lott()
    }
    
}

