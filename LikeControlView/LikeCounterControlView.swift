//
//  likeCounterControlView.swift
//  VKClient_1
//
//  Created by Владимир Глоба on 25.01.2022.
//

import UIKit

protocol LikeCounterControlViewProtocol: AnyObject {
    func countIncrement(count: Int)
    func countDecrement(count: Int)
    func sourceCount() -> Int
}


@IBDesignable class LikeCounterControlView: UIView {
    
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    
    weak var delegate: LikeCounterControlViewProtocol?
    
    private var view: UIView!
    
    var likeCounter = 0
    var isLikeEmpty = true
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func loadFromXib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let xib = UINib(nibName: "LikeCounterControlView", bundle: bundle)
        guard let view = xib.instantiate(withOwner: self, options: nil).first as? UIView else {return UIView()}
        return view
    }
    
    func setup () {
        self.view = loadFromXib()
        self.view.frame = bounds
        self.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(self.view)
//        if let sourceCount = self.delegate?.sourceCount() {
//            self.likeCounter = sourceCount
//        }
        countLabel.text = String(self.likeCounter)
    }
    
    func configure(count: Int) {
        self.likeCounter = count
        countLabel.text = String(self.likeCounter)
    }
    
    @IBAction func pressLikeButton(_ sender: Any) {
        if isLikeEmpty {
            self.likeCounter += 1
            likeButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
            self.delegate?.countIncrement(count: self.likeCounter)
        } else {
            self.likeCounter -= 1
            likeButton.setImage(UIImage(systemName: "heart"), for: .normal)
            self.delegate?.countDecrement(count: self.likeCounter)
        }
        countLabel.text = String(likeCounter)
        isLikeEmpty = !isLikeEmpty
    }
    
    
}
