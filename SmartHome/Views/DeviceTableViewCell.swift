//
//  DeviceTableViewCell.swift
//  SmartHome
//
//  Created by Scott Cox on 5/18/22.
//

import UIKit

class DeviceTableViewCell: UITableViewCell {

    @IBOutlet weak var deviceNameLabel: UILabel!
    @IBOutlet weak var toggleSwitch: UISwitch!
    

    
    func updateViews(device: Device) {
        deviceNameLabel.text = device.name
        toggleSwitch.isOn = device.isOn
        
        
    }
    
    
    
    
} // End of class
