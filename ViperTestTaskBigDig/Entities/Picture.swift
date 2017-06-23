//
//  Picture.swift
//  ViperTestTaskBigDig
//
//  Created by Evgeniy Tkachenko on 23.06.17.
//  Copyright © 2017 Big Dig. All rights reserved.
//

import Foundation
import SwiftyJSON

class Picture: NSObject {
    
    var url: String = ""
    var weather: String = ""
    var address: String = ""
    
    init(json: JSON) {
        super.init()

        
    }
    
}
