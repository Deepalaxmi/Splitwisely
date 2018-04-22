//
//  Copying.swift
//  Splitwise
//
//  Created by Kh. Deepalaxmi on 22/04/18.
//  Copyright © 2018 Kh. Deepalaxmi. All rights reserved.
//

import Foundation

protocol Copying {
    init(original: Self)
}

extension Copying {
    func copy() -> Self {
        return Self.init(original: self)
    }
}

