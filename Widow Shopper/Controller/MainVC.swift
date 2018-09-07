//
//  ViewController.swift
//  Widow Shopper
//
//  Created by Myke Phillips on 01/09/2018.
//  Copyright © 2018 Myke Phillips. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var wageTxt: CurrencyTextfield!
    @IBOutlet weak var priceTxt: CurrencyTextfield!
    
    @IBOutlet weak var resultlbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    override func viewDidLoad() {
   
        super.viewDidLoad()

        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor =  #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)

        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn

        resultlbl.isHidden = true
        hoursLbl.isHidden = true

    }

    @objc func calculate() {
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {

            if let wage = Double(wageTxt), let price = Double(priceTxt) {

                view.endEditing(true)
                resultlbl.isHidden = false
                hoursLbl.isHidden = false
                resultlbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }


    }
    @IBAction func clearCalculatorPressed(_ sender: Any) {

        resultlbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
        
    }


}

