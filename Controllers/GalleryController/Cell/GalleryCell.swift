//
//  GalleryCell.swift
//  VKClient_1
//
//  Created by Владимир Глоба on 23.01.2022.
//

import UIKit

class GalleryCell: UICollectionViewCell {

    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func prepareForReuse() {
        photoImageView.image = nil
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func configure(photoPath: String){
        photoImageView.image = UIImage(named: photoPath)
    }

}

