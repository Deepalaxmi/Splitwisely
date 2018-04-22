//
//  User.swift
//  Splitwise
//
//  Created by Kh. Deepalaxmi on 21/04/18.
//  Copyright © 2018 Kh. Deepalaxmi. All rights reserved.
//

import Foundation

class User: Copying {
    required init(original: User) {
        id = original.id
        name = original.name
        dueAmountPerTransaction = original.dueAmountPerTransaction
        masterDueAmountPerTransactionWithRespectToA = original.masterDueAmountPerTransactionWithRespectToA
        overallMasterDueAmountWithRespectToA = original.overallMasterDueAmountWithRespectToA
    }
    
    var id: Int = 0
    var name: String = ""
    var dueAmountPerTransaction: Int = 0
    var paidAmountPerTransaction: Int = 0
    var masterDueAmountPerTransactionWithRespectToA: Int = 0
    var overallMasterDueAmountWithRespectToA: Int = 0
    
    init(name: String, id: Int) {
        self.name = name
        self.id = id
    }
}
