//
//  PicturesListInteractorProtocol.swift
//  ViperTestTaskBigDig
//
//  Created by Evgeniy Tkachenko on 23.06.17.
//  Copyright © 2017 Big Dig. All rights reserved.
//

import Foundation

protocol PicturesListInteractorInputProtocol {
    
    func getPicturesListRequest()
    
}

protocol PicturesListInteractorOutputProtocol {
    
    func getPicturesListSuccessRequest(pictures: [Picture])
    func getPicturesListFailRequest(error: String)
    
}
