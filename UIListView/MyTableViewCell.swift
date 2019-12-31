//
//  MyTableViewCell.swift
//  UIListView
//
//  Created by Tosh  on 1/1/20.
//  Copyright © 2020 Tosh . All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    var images = UIImage()
    var label = ""
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        myLabel.layer.cornerRadius = 10
        myImage.image = images
        myLabel.text = "\(label)"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
