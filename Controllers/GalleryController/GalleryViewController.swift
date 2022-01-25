//
//  GalleryViewController.swift
//  VKClient_1
//
//  Created by Владимир Глоба on 23.01.2022.
//

import UIKit

class GalleryViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let reuseIdentifierGalleryCell = "reuseIdentifierGalleryCell"
    
    var photoArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: "GalleryCell", bundle: nil), forCellWithReuseIdentifier: reuseIdentifierGalleryCell)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        collectionView.reloadData()
    }
}



extension GalleryViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifierGalleryCell, for: indexPath) as? GalleryCell else {return UICollectionViewCell()}
        
        cell.configure(photoPath: photoArray[indexPath.item], likeCount: indexPath.item)
        return cell
    }
}

extension GalleryViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let heightBottomLikeControl: CGFloat = 50
        let width = collectionView.bounds.width / 3 - 30
        return CGSize(width: width, height: width + heightBottomLikeControl)
    }
}

extension GalleryViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        print(indexPath.item)
        let photoViewController = PhotoViewController()
        photoViewController.configure(photoPath: photoArray[indexPath.item])
        self.navigationController?.pushViewController(photoViewController, animated: true)
    }
}
