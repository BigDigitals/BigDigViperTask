//
//  PicturesListInteractor.swift
//  ViperTestTaskBigDig
//
//  Created by Evgeniy Tkachenko on 23.06.17.
//  Copyright © 2017 Big Dig. All rights reserved.
//

import Foundation

import Foundation
import Alamofire
import SwiftyJSON
import CryptoSwift

class PicturesListInteractor: NSObject {
    
    var picturesListInteractorOutputProtocol: PicturesListInteractorOutputProtocol?
    
}

// MARK: - PicturesListInteractorProtocol

extension PicturesListInteractor: PicturesListInteractorInputProtocol {
    
    func getPicturesListRequest() {
        
    }
    
}
