//
//  MainPresenter.swift
//  viperProject
//
//  Created by Hamza Jerbi on 11/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit


class MainPresenter: MainViewToPresenterProtocol {
    
    var view: MainPresenterToViewProtocol?
    var interactor: MainPresenterToInteractorProtocol?
    var router: MainPresenterToRouterProtocol?
    
    func updateView() {
    }
}

extension MainPresenter: MainInteractorToPresenterProtocol {
    
}
