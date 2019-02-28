//
//  wage.swift
//  shopping_app
//
//  Created by Peter Paul on 27/02/19.
//  Copyright © 2019 Emilda pvt. ltd. All rights reserved.
//

import Foundation
class wage{
    class func gethours(forWage wage:Double, andPrice price: Double) -> Int{
        return Int(ceil(price / wage))
        
    }
}
