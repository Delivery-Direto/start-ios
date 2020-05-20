//
//  GenericCell.swift
//  restaurant-ios
//
//  Created by Abraao on 19/05/20.
//  Copyright © 2020 Abraao. All rights reserved.
//

import UIKit
import Kingfisher

class GenericCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setImage(url: String?) {
        accessoryView = nil

        if let imageUrl = url {
            let processor = DownsamplingImageProcessor(size: CGSize(width: 100, height: 100))
                |> CroppingImageProcessor(size: CGSize(width: 42, height: 42), anchor: CGPoint(x: 0.5, y: 0.5))
                |> RoundCornerImageProcessor(cornerRadius: 5)
            
            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 42, height: 42))
            imageView.kf.setImage(with: URL(string: imageUrl), options: [.processor(processor)])
            
            accessoryView = imageView
        }
    }
    
}
