//
//  ExpleoRouter.swift
//  ExpleoViperDemo
//
//  Created by Jayant Tiwari on 12/03/21.
//  Copyright © 2021 Expleo. All rights reserved.
//

import UIKit

class ExpleoRouter : PresenterToRouter {
    
    
    static func createView() -> UIViewController {
        
        let storyBoad = UIStoryboard(name: "Main", bundle: nil)
        
        let view = storyBoad.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        let presenter: ViewToPresenterProtocol & InteracterToPresenterProtocol = ExpleoPresenter()
        let interactor: PresenterToInteracterProtocol = ExpleoInteracter()
        let router:PresenterToRouter = ExpleoRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interacter = interactor
        interactor.presenter = presenter
        return view
    }
    
    
}
