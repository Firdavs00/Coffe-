//
//  LogoView.swift
//  Coffe Now App
//
//  Created by Firdavs Boltayev on 11/06/22.
//

import UIKit

class LogoView: UIView {
    
    var type: LogoType = .login
    
    private lazy var iconImages: UIImageView = {
        let image = UIImageView()
        image.frame =  CGRect(x: 0, y: 0, width: self.frame.width, height: (88/375) * windowWidth)
        image.image = type.image
        image.contentMode = .center
        image.backgroundColor = .clear
        return image
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: iconImages.frame.maxY + 16, width: self.frame.width, height: 36)
        label.text = type.titleLabel
        label.textColor = .black
        label.textAlignment = .center
        label.backgroundColor = .clear
        return label
    }()
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.initSetup()
        
    }
    
    func initSetup() {
        self.addSubview(iconImages)
        self.addSubview(titleLabel)
    }
}
