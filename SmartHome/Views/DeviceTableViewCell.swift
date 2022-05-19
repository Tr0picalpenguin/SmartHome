//
//  DeviceTableViewCell.swift
//  SmartHome
//
//  Created by Scott Cox on 5/18/22.
//

import UIKit

protocol DeviceTableViewCellDelegate: AnyObject {
    func isOnSwitchToggled(_ cell: DeviceTableViewCell)
}

class DeviceTableViewCell: UITableViewCell {

    @IBOutlet weak var deviceNameLabel: UILabel!
    @IBOutlet weak var toggleSwitch: UISwitch!
    

    weak var delegate: DeviceTableViewCellDelegate?
    
    
    func updateViews(device: Device) {
        deviceNameLabel.text = device.name
        toggleSwitch.isOn = device.isOn
    }
    
    @IBAction func deviceIsOnSwitchButton(_ sender: Any) {
        delegate?.isOnSwitchToggled(self)
    }
    
    
    
} // End of class
