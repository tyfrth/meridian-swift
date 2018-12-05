//
//  App_Map_ID.swift
//  meridian-swift
//
//  Created by Tyler Frith on 7/9/18.
//  Copyright © 2018 tyfrith. All rights reserved.
//

import Foundation
import Meridian


////portland
let APP_ID = "5468665088573440"
let MAP_ID = "5653104741580800"
//
// EU: APP_ID and MAP_ID
let APP_ID_EU = "5468665088573440"
let MAP_ID_EU = "5653104741580800"

//CIA 5750085036015616
//NSA 5725332334182400


class App_Map_ID: NSObject {
    @objc dynamic class func appID() -> String {
        if(Meridian.sharedConfig()?.domainConfig.domainRegion == MRDomainRegion.EU){
            return APP_ID_EU;
        }
        return APP_ID;
    }
    @objc dynamic class func mapID() -> String {
        if(Meridian.sharedConfig()?.domainConfig.domainRegion == MRDomainRegion.EU){
            return MAP_ID_EU;
        }
        return MAP_ID;
    }
}


