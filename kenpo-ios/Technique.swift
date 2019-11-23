//
//  Technique.swift
//  kenpo-ios
//
//  Created by Todd Sedano on 11/22/19.
//  Copyright © 2019 Kenpo. All rights reserved.

import UIKit


class Technique {
    
    //MARK: Properties
    
    var name: String
    var belt: String
    var attack: String
    
    //MARK: Initialization
    
    init?(name: String, belt: String, attack: String) {

        guard !name.isEmpty else {
            return nil
        }

        self.name = name
        self.belt = belt
        self.attack = attack        
    }
}
