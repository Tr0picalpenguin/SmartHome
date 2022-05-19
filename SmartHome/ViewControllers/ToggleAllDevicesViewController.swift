//
//  ToggleAllDevicesViewController.swift
//  SmartHome
//
//  Created by Scott Cox on 5/19/22.
//

import UIKit

// Global Properties
let TurnAllOnNotificationName = Notification.Name(rawValue: "TurnOnAllDevicesNotification")

let TurnAllOffNotificationName = Notification.Name(rawValue: "TurnOffAllNotification")

class ToggleAllDevicesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func turnAllOnButtonTapped(_ sender: Any) {
        NotificationCenter.default.post(name: TurnAllOnNotificationName, object: nil)
    }
    @IBAction func turnAllOffButtonTapped(_ sender: Any) {
        NotificationCenter.default.post(name: TurnAllOffNotificationName, object: nil)
    }
    
    
}
