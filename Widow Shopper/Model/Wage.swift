//
//  Wage.swift
//  Widow Shopper
//
//  Created by Myke Phillips on 07/09/2018.
//  Copyright © 2018 Myke Phillips. All rights reserved.
//

import Foundation

class Wage {

    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {

        return Int(ceil(price / wage))

    }
}
