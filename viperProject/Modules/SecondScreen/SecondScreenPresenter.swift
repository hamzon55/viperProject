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
    
    private lazy var tableDelegate: SecondScreenTableDelegate = {
        return SecondScreenTableDelegate(actionDelegate: self )
    }()
    private var tableDataSource: SecondScreenTableDataSource?

    
    func updateView() {
        configTable()
    }
    
    private func configTable() {
        view?.tableView.register(UINib(nibName: SecondScreenTableViewCell.cellType, bundle: nil), forCellReuseIdentifier: SecondScreenTableViewCell.cellType)
        view?.tableView.tableFooterView = UIView()
        view?.tableView.delegate = tableDelegate
        tableDataSource = SecondScreenTableDataSource()
        view?.tableView.dataSource = tableDataSource
    }
}

extension SecondScreenPresenter: SecondScreenInteractorToPresenterProtocol {
    
}
extension SecondScreenPresenter : SecondScreenTableActionDelegate{
    func selected(index: Int) {
        
        print("index",index)
    }
    
    
}
