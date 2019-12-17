//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation
struct Story {
    var title: String
    var choice1: Choice
    var choice2: Choice
    
    init(title: String, choice1: Choice, choice2: Choice){
        self.title = title
        self.choice1 = choice1
        self.choice2 = choice2
    }
    
}
