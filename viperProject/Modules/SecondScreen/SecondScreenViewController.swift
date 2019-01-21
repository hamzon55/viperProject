//
//  SecondScreenViewController.swift
//  viperProject
//
//  Created by Hamza Jerbi on 11/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit


class SecondScreenViewController: UIViewController {
    
    var presenter: SecondScreenViewToPresenterProtocol?
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.updateView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension SecondScreenViewController: SecondScreenPresenterToViewProtocol {

}
