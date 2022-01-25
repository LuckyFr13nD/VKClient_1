//
//  GalleryCell.swift
//  VKClient_1
//
//  Created by Владимир Глоба on 23.01.2022.
//

import UIKit

class GalleryCell: UICollectionViewCell {

    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var likeCounterView: LikeCounterControlView!
    
    var likeCount = 0
    
    override func prepareForReuse() {
        photoImageView.image = nil
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        likeCounterView.delegate = self
    }
    
    func configure(photoPath: String, likeCount: Int){
        photoImageView.image = UIImage(named: photoPath)
        self.likeCount = likeCount
        likeCounterView.configure(count: likeCount)
    }

}


extension GalleryCell: LikeCounterControlViewProtocol {
    func countIncrement(count: Int) {
        print(count)
    }
    
    func countDecrement(count: Int) {
        print(count)
    }
    
    func sourceCount() -> Int {
        return self.likeCount
    }
    
}
