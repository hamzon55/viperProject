//
//  SecondScreenPresenter.swift
//  viperProject
//
//  Created by Hamza Jerbi on 12/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit


class SecondScreenPresenter: SecondScreenViewToPresenterProtocol {
    
    var view: SecondScreenPresenterToViewProtocol?
    var interactor: SecondScreenPresenterToInteractorProtocol?
    var router: SecondScreenPresenterToRouterProtocol?
    func updateView() {
    }
}

extension SecondScreenPresenter: SecondScreenInteractorToPresenterProtocol {
    
}
