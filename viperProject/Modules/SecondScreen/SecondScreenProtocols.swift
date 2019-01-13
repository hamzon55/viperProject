//
//  SecondScreenProtocols.swift
//  viperProject
//
//  Created by Hamza Jerbi on 12/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit


protocol SecondScreenPresenterToViewProtocol: class{
}

protocol SecondScreenInteractorToPresenterProtocol: class{
}

protocol SecondScreenPresenterToInteractorProtocol: class{
    var presenter: SecondScreenInteractorToPresenterProtocol? {get set}
}

protocol SecondScreenViewToPresenterProtocol: class{
    var view: SecondScreenPresenterToViewProtocol? {get set}
    var interactor: SecondScreenPresenterToInteractorProtocol? {get set}
    var router: SecondScreenPresenterToRouterProtocol? {get set}
}

protocol SecondScreenPresenterToRouterProtocol: class{
    static func createModule() -> UIViewController
    
}
