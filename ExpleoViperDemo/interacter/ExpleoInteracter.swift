//
//  ExpleoInteracter.swift
//  ExpleoViperDemo
//
//  Created by Jayant Tiwari on 12/03/21.
//  Copyright © 2021 Expleo. All rights reserved.
//

class ExpleoInteracter : PresenterToInteracterProtocol {
    
    var presenter: InteracterToPresenterProtocol?
    
    func fetchData() {
        
        var company = Company(company_name: "Expleo")
        
        if company.company_name == "Exple" {
            
            presenter?.getFetchedDataWithSuccess(result: company.company_name)
            
        } else {
            
            presenter?.getFetchedDataWithFailure()
        }
    }
}
