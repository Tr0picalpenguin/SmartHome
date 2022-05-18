//
//  DeviceController.swift
//  SmartHome
//
//  Created by Scott Cox on 5/18/22.
//

import Foundation

class DeviceController {
    
    // MARK: - Singleton
    static let sharedInstance = DeviceController()
    
    // MARK: - Source of Truth
    var devices: [Device] = []
    
    
    // MARK: - Initializers
    init() {
        load()
    }
    
    
    // MARK: - CRUD functions
    func create(name: String) {
        let newDevice = Device(name: name)
        devices.append(newDevice)
        save()
    }
    
    func toggleIsOn() {
        
    }
    
    func save() {
        
    }
    
    func load() {
        
    }
    
}
