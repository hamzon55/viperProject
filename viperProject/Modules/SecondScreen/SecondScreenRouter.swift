//
//  SecondScreenRouter.swift
//  viperProject
//
//  Created by Hamza Jerbi on 12/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit

class SecondScreenRouter: SecondScreenPresenterToRouterProtocol{
    
    
    
    class func createModule() -> UIViewController{
        
        let view = SecondScreenViewController()
        let presenter: SecondScreenViewToPresenterProtocol & SecondScreenInteractorToPresenterProtocol = SecondScreenPresenter()
        let interactor: SecondScreenPresenterToInteractorProtocol = SecondScreenInteractor()
        let router: SecondScreenPresenterToRouterProtocol = SecondScreenRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return view
    }
}
