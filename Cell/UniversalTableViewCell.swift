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
    
    var completion: (()->Void)?
    
    override func prepareForReuse() {
        mainImageView.image = nil
        nameLabel.text = nil
        surnameLabel.text = nil
        self.completion = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configure(image: UIImage?, name: String?, description: String?) {
        
        nameLabel.text = name
        surnameLabel.text = description
        mainImageView.image = image
    }
    
    func configure(friend: Friend, completion: @escaping ()->Void) {
        self.completion = completion
        mainImageView.image = UIImage(named: friend.avatar)
        nameLabel.text = friend.name
        surnameLabel.text = String()
    }
    
    func configure(group: Group) {
        mainImageView.image = nil //UIImage(named: group.avatar)
        nameLabel.text = group.name
        surnameLabel.text = group.discription
    }
    
    
    
    @IBAction func pressToViewButton(_ sender: Any) {
        UIView.animate(withDuration: 1) { [weak self] in
            self?.mainImageView.frame = CGRect.zero
        } completion: { [weak self] _ in
            self?.completion?()
        }

        
        
        
        
    }
    
}
