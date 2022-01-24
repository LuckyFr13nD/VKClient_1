//
//  PhotoViewController.swift
//  VKClient_1
//
//  Created by Владимир Глоба on 23.01.2022.
//

import UIKit

class PhotoViewController: UIViewController {
    
    private var photo = String()
    
    func configure(photoPath: String){
        photo = photoPath
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        let imageView = UIImageView(frame: CGRect(x: 0, y: self.view.bounds.height / 2 - self.view.bounds.width / 2, width: self.view.bounds.width, height: self.view.bounds.width))
        self.view.addSubview(imageView)
        imageView.image = UIImage(named: photo)
    }
    


}
