//
//  MainRouter.swift
//  viperProject
//
//  Created by Hamza Jerbi on 11/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit

class MainRouter: MainPresenterToRouterProtocol{
    
    class func createModule() -> UIViewController{
        
        let view: MainViewController = Storyboard.MainViewController.instantiateViewController()
        let presenter: MainViewToPresenterProtocol & MainInteractorToPresenterProtocol = MainPresenter()
        let interactor: MainPresenterToInteractorProtocol = MainInteractor()
        let router: MainPresenterToRouterProtocol = MainRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return view
}
}
