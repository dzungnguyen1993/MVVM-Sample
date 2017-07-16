//
//  GirlCell.swift
//  MVVM-Sample
//
//  Created by Thanh-Dung Nguyen on 7/16/17.
//  Copyright © 2017 Thanh-Dung Nguyen. All rights reserved.
//

import UIKit
import SDWebImage

class GirlCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var girlImageView: UIImageView!    
    var cellId: Int!
    
    @IBOutlet weak var constraintImageRatio: NSLayoutConstraint!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func bindData(girl: Girl) {
        nameLabel.text = girl.name
        
        girlImageView.sd_setImage(with: URL(string: girl.photo))
    }
    
}
