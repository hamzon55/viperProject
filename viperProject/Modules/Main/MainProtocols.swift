//
//  MainProtocols.swift
//  viperProject
//
//  Created by Hamza Jerbi on 11/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit


protocol MainPresenterToViewProtocol: class{
}

protocol MainInteractorToPresenterProtocol: class{
}

protocol MainPresenterToInteractorProtocol: class{
    var presenter: MainInteractorToPresenterProtocol? {get set}
}

protocol MainViewToPresenterProtocol: class{
    var view: MainPresenterToViewProtocol? {get set}
    var interactor: MainPresenterToInteractorProtocol? {get set}
    var router: MainPresenterToRouterProtocol? {get set}
    func updateView()
}

protocol MainPresenterToRouterProtocol: class{
    static func createModule() -> UIViewController
}
