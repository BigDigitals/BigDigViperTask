//
//  PicturesListPresenter.swift
//  ViperTestTaskBigDig
//
//  Created by Evgeniy Tkachenko on 23.06.17.
//  Copyright © 2017 Big Dig. All rights reserved.
//

import UIKit

class PicturesListPresenter: NSObject {
    
    var picturesListWireFrame: PicturesListWireFrame?
    var picturesListInteractionInputProtocol: PicturesListInteractorInputProtocol?
    var picturesListPresenterProtocol: PicturesListPresenterProtocol?
    
    func getPicturesList() {
        picturesListInteractionInputProtocol?.getPicturesListRequest()
    }
}

// MARK: - SignInInteractorProtocol

extension PicturesListPresenter: PicturesListInteractorOutputProtocol {
    
    func getPicturesListSuccessRequest(pictures: [Picture]) {
        
    }
    
    func getPicturesListFailRequest(error: String) {
        picturesListPresenterProtocol?.showErrorMessage(error)
    }
    
}
