//
//  SecondScreenTableDelegate.swift
//  viperProject
//
//  Created by Hamza Jerbi on 21/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit


protocol SecondScreenTableActionDelegate: class {
    func selected(index: Int)
}
final class SecondScreenTableDelegate: NSObject, UITableViewDelegate {
    
    weak var delegate: SecondScreenTableActionDelegate?
    
    init(actionDelegate: SecondScreenTableActionDelegate) {
        super.init()
        self.delegate = actionDelegate
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.selected(index: indexPath.row)
    }
}

