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
    
    // MARK: - Computed Property
    private var devicesURL: URL? {
        guard let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return nil }
        let url = documentsDirectory.appendingPathComponent("devices.json")
        return url
    }
    
    // MARK: - CRUD functions
    func create(name: String) {
        let newDevice = Device(name: name)
        devices.append(newDevice)
        save()
    }
    
    func toggleIsOn(device: Device) {
        device.isOn.toggle()
        save()
    }
    
    func save() {
        guard let url = devicesURL else { return }
        do {
            let jsonData = try JSONEncoder().encode(devices)
            try jsonData.write(to: url)
        } catch {
            print("Error saving the device!")
        }
    }
    
    func load() {
        guard let devicesURL = devicesURL else { return }
        do {
            let data = try Data(contentsOf: devicesURL)
            let devices = try JSONDecoder().decode([Device].self, from: data)
            self.devices = devices
        } catch {
            print("Error loading device!")
        }
    }
    
}
