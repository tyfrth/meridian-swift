//
//  CampaignToggleButton.swift
//  meridian-swift
//
//  Created by Tyler Frith on 6/4/19.
//  Copyright © 2019 tyfrith. All rights reserved.
//

import UIKit
import Meridian
import UserNotifications

class CampaignToggleButton: UIButton, MRCampaignManagerDelegate {
    
    // MARK: - Campaign manager stuff
    private lazy var campaignManager: MRCampaignManager = {
        let campaignManager = MRCampaignManager.init(app: MREditorKey(identifier: App_Map_ID.appID()))
        campaignManager.delegate = self
        return campaignManager
    }()
    
    // MARK: - MRCampaignManagerDelegate
    
    func campaignManager(_ manager: MRCampaignManager, shouldGenerateNotificationForCampaign campaignInfo: [AnyHashable: Any]) -> Bool {
        print("About to trigger campaign with title \(campaignInfo["title"] as? String ?? "No Title")")
        // We could return false or create our own UIAlert or NSNotification based on the contents of campaignInfo if we wished.
        // Returning true will cause the default behavior, typically a local notification.
        
        // Since we don't want to pollute our app delegate with logic to generate an alert if we're foregrounded, we'll handle
        // that case here.
        if UIApplication.shared.applicationState == .active {
            let alertController = UIAlertController(title: "Campaign Triggered", message: campaignInfo["message"] as? String, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "OK", style: .cancel)
            alertController.addAction(cancelAction)
           // present(alertController, animated: true)
            
            // we handled it so MRCampaignManager doesn't have to.
            return false
        } else {
            // allow MRCampaignManager to handle it the usual way (posting a local notification)
            return true
        }
    }
    
    func campaignManager(_ manager: MRCampaignManager, didFailWithError error: Error) {
        print("Campaign manager failed with error: " + error.localizedDescription)
        let alertController = UIAlertController(title: "Campaign Error", message: error.localizedDescription, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "OK", style: .cancel)
        alertController.addAction(cancelAction)
      //  present(alertController, animated: true)
    }

    
    
    // MARK: - Button stuff
    
    var isOn = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initButton()
    }
    
    func initButton() {
        layer.borderWidth = 2.0
        layer.borderColor = Colors.meridianBlue.cgColor
        layer.cornerRadius = frame.size.height/2
        
        
        setTitleColor(Colors.meridianBlue, for: .normal)
        addTarget(self, action: #selector(CampaignToggleButton.buttonPressed), for: .touchUpInside)
    }
    
    @objc func buttonPressed() {
        activateButton(bool: !isOn)
    }
    
    func activateButton(bool: Bool) {
        
        isOn = bool
        
        if isOn {
            campaignManager.stopMonitoring()
        } else {
            campaignManager.startMonitoring()
        }
        
        //ternary operators
        let color = bool ? Colors.meridianBlue : .clear
        let title = bool ? "Stop Monitoring" : "Start Monitoring"
        let titleColor = bool ? UIColor.white : Colors.meridianBlue
        
        setTitle(title, for: .normal)
        setTitleColor(titleColor, for: .normal)
        backgroundColor = color
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
