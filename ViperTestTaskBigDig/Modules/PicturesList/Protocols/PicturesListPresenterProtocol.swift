//
//  PicturesListPresenterProtocol.swift
//  ViperTestTaskBigDig
//
//  Created by Evgeniy Tkachenko on 23.06.17.
//  Copyright © 2017 Big Dig. All rights reserved.
//

import Foundation

protocol PicturesListPresenterProtocol {
    
    func successGetPicturesList(pictures: [Picture])
    func showErrorMessage(_ message: String)
    
}
