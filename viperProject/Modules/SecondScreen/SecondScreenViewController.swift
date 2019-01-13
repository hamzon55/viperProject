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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension SecondScreenViewController: SecondScreenPresenterToViewProtocol {

}
