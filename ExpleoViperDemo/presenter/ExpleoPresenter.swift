//
//  ExpleoPresenter.swift
//  ExpleoViperDemo
//
//  Created by Jayant Tiwari on 12/03/21.
//  Copyright © 2021 Expleo. All rights reserved.
//

class ExpleoPresenter: ViewToPresenterProtocol {
    
    var view: PresenterToViewProtocol?
    
    var interacter: PresenterToInteracterProtocol?
    
    var router: PresenterToRouter?
    
    func startFetching() {
        
        interacter?.fetchData()
    }
}

extension ExpleoPresenter : InteracterToPresenterProtocol {
    
    func getFetchedDataWithSuccess(result: String) {
        
        view?.showResponseMsg(result: result)
    }
    
    func getFetchedDataWithFailure() {
        view?.showFailedMsg()
    }
    
    
    
}
