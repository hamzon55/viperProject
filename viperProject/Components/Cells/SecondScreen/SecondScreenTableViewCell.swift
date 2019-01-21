//
//  SecondScreenTableViewCell.swift
//  viperProject
//
//  Created by Hamza Jerbi on 20/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit


class SecondScreenTableViewCell : UITableViewCell {
    
    
    @IBOutlet weak var cellView: UIView!

    @IBOutlet weak var artisteName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    static var cellType: String{
        return String(describing: self)
    }
}
