//
//  ViewController.swift
//  shopping_app
//
//  Created by Peter Paul on 27/02/19.
//  Copyright © 2019 Emilda pvt. ltd. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBAction func ClearCalculator(_ sender: Any) {
        resultLbl.isHidden = true
        hourLbl.isHidden = true
        wageTxt.text = " "
        pricetxt.text = " "
    }
    @IBOutlet weak var hourLbl: UILabel!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var pricetxt: textFeild!
    @IBOutlet weak var wageTxt: textFeild!
    override func viewDidLoad() {
        super.viewDidLoad()
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9614412723, green: 0.3519428879, blue: 0.187894902, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        wageTxt.inputAccessoryView = calcBtn
        pricetxt.inputAccessoryView = calcBtn
        resultLbl.isHidden = true
        hourLbl.isHidden = true
    }
    
    @objc func calculate(){
        if let wagetxtval = wageTxt.text, let pricetxtval = pricetxt.text{
            if let wageval = Double(wagetxtval), let priceval = Double(pricetxtval){
                view.endEditing(true)
                resultLbl.isHidden = false
                hourLbl.isHidden = false
                resultLbl.text = "\(wage.gethours(forWage: wageval, andPrice: priceval))"
            }
            
        }
        
    }

}

