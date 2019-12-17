//
//  Choice.swift
//  Destini-iOS13
//
//  Created by Dylan Perry on 12/17/19.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Choice {
    var choice: String
    var destination: Int
    init(choice:String, destination:Int) {
        self.choice = choice
        self.destination = destination
    }
}
