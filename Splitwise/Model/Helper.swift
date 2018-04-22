//
//  Helper.swift
//  Splitwise
//
//  Created by Kh. Deepalaxmi on 22/04/18.
//  Copyright © 2018 Kh. Deepalaxmi. All rights reserved.
//

import Foundation

class Helper {
    class func getCurrentDate(format: String) -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        let dateString = dateFormatter.string(from: Date())
        return dateString
    }
}
