//
//  CurrencyTextfield.swift
//  Widow Shopper
//
//  Created by Myke Phillips on 03/09/2018.
//  Copyright © 2018 Myke Phillips. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextfield: UITextField {

    override func prepareForInterfaceBuilder() {
        customizeView()

    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()

    }

    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2507491438)
        layer.cornerRadius = 5.0
        textAlignment = .center

        if let placeHolder = placeholder {
            let place = NSAttributedString(string: placeHolder, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)

        }

    }

}



