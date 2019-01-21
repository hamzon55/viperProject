//
//  SecondScreenTableDataSource.swift
//  viperProject
//
//  Created by Hamza Jerbi on 21/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit

final class SecondScreenTableDataSource: NSObject, UITableViewDataSource {
    
    var arrayExple = [ "element1","element2"]
    convenience init(arrayExple: [String]) {
        self.init()
        self.arrayExple = arrayExple
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayExple.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SecondScreenTableViewCell.cellType, for: indexPath) as? SecondScreenTableViewCell
            else{ return UITableViewCell()}
        return cell
    }
    
    
    
}
