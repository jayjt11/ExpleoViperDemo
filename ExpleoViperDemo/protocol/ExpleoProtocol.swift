//
//  ExpleoProtocol.swift
//  ExpleoViperDemo
//
//  Created by Jayant Tiwari on 12/03/21.
//  Copyright © 2021 Expleo. All rights reserved.
//
import UIKit


protocol ViewToPresenterProtocol : class{
    
    var view : PresenterToViewProtocol? { get set}
    
    var interacter : PresenterToInteracterProtocol? { get set}
    
    var router : PresenterToRouter? { get set}
    
    func startFetching()
}

protocol PresenterToViewProtocol : class{
    
    func showResponseMsg(result : String)
    func showFailedMsg()
}

protocol PresenterToInteracterProtocol : class {
    
    var presenter : InteracterToPresenterProtocol? { get set}
    func fetchData()
}

protocol InteracterToPresenterProtocol : class {
    
    func getFetchedDataWithSuccess(result : String)
    func getFetchedDataWithFailure()
}

protocol PresenterToRouter : class {
   
    static func createView() -> UIViewController
}


