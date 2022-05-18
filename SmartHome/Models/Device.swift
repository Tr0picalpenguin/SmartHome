//
//  Device.swift
//  SmartHome
//
//  Created by Scott Cox on 5/18/22.
//

import Foundation


class Device: Codable {
    let name: String
    var isOn: Bool
    
    init(name: String, isOn: Bool = false) {
        self.name = name
        self.isOn = isOn
    }
    
} // End of Class

