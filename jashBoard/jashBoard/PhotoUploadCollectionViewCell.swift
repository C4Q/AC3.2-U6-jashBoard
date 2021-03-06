//
//  PhotoUploadCollectionViewCell.swift
//  jashBoard
//
//  Created by Ana Ma on 2/6/17.
//  Copyright © 2017 Harichandan Singh. All rights reserved.
//

import UIKit
import SnapKit

class PhotoInUploadCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "photoUploadCellIdentifier"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewHierarchy()
        configureConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViewHierarchy() {
        self.addSubview(imageView)
    }
    
    func configureConstraints() {
        imageView.snp.makeConstraints { (view) in
            view.leading.top.trailing.bottom.equalToSuperview()
        }
    }
    
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
//        imageView.image = #imageLiteral(resourceName: "default-placeholder")
        imageView.layer.masksToBounds = false
        imageView.clipsToBounds = true
        imageView.image = nil
        return imageView
    }()
}
