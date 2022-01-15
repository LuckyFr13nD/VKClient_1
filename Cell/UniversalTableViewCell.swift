//
//  UniversalTableViewCell.swift
//  VKClient_1
//
//  Created by Владимир Глоба on 13.01.2022.
//

import UIKit

class UniversalTableViewCell: UITableViewCell {

    
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var surnameLabel: UILabel!
    
    
    override func prepareForReuse() {
        mainImageView.image = nil
        nameLabel.text = nil
        surnameLabel.text = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configure(image: UIImage?, name: String?, surname: String?) {
        mainImageView.image = image
        nameLabel.text = name
        surnameLabel.text = surname
    }
    
}
