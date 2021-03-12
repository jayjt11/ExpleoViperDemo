//
//  ViewController.swift
//  ExpleoViperDemo
//
//  Created by Jayant Tiwari on 12/03/21.
//  Copyright © 2021 Expleo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblName: UILabel!
    
    var presenter : ViewToPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // custom listener
    
    
    @IBAction func btnFetchClicked(_ sender: Any) {
        
        presenter?.startFetching()
    }
}

extension ViewController : PresenterToViewProtocol {
   
    
    func showResponseMsg(result: String) {
        
        lblName.text = result
        print("Success")
    }
    func showFailedMsg() {
        print("Failed")
    }
}



