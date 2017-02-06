//
//  CategoryTableViewCell.swift
//  jashdraft
//
//  Created by Sabrina Ip on 2/6/17.
//  Copyright © 2017 Sabrina. All rights reserved.
//

import UIKit
import SnapKit
class CategoryTableViewCell: UITableViewCell {
    static let cellIdentifier = "CategoryCell"
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(cellBackgroundImage)
        self.addSubview(cellTint)
        self.addSubview(categoryTitleLabel)
        self.backgroundColor = .green
    
        self.cellBackgroundImage.snp.makeConstraints { (view) in
            view.top.equalTo(self.snp.top)
            view.bottom.equalTo(self.snp.bottom)
            view.leading.equalTo(self.snp.leading)
            view.trailing.equalTo(self.snp.trailing)
            view.height.equalTo(200)
        }
        
        self.cellTint.snp.makeConstraints { (view) in
            view.top.equalTo(self.snp.top)
            view.bottom.equalTo(self.snp.bottom)
            view.leading.equalTo(self.snp.leading)
            view.trailing.equalTo(self.snp.trailing)
        }
        self.categoryTitleLabel.snp.makeConstraints { (view) in
            view.centerX.equalTo(self.snp.centerX)
            view.centerY.equalTo(self.snp.centerY)
            view.height.equalTo(self.snp.height).multipliedBy(0.3)
            view.width.equalTo(self.snp.width).multipliedBy(0.5)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //Background image for cell
    let cellBackgroundImage: UIImageView = {
        let imageView: UIImageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named: "siberian-tiger-profile")
        return imageView
    }()
    //Adds ting to cell so categories label is more visable
    let cellTint: UIView = {
        let view:UIView = UIView()
        view.backgroundColor = .black
        view.alpha = 0.3
        return view
    }()
    //Category label
    let categoryTitleLabel: UILabel = {
        let label: UILabel = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20, weight: 10)
        label.layer.borderColor = UIColor.white.cgColor
        label.layer.borderWidth = 2
        label.textAlignment = .center
        return label
    }()
    
}
