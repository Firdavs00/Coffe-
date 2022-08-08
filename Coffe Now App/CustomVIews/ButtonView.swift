//
//  ButtonView.swift
//  Coffe Now App
//
//  Created by Firdavs Boltayev on 12/06/22.
//

import UIKit

class ButtonView: UIView {
    
    var type: ButtonType = .login
    
    private lazy var mainView: UIView = {
        let view = UIView()
//        view.frame = CGRect(x: <#T##Double#>, y: <#T##Double#>, width: <#T##Double#>, height: <#T##Double#>)
        return view
    }()
    
    private lazy var button: UIButton = {
       let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: 78/375 * windowWidth)
//        button.backgroundColor = UIColor(hex: "321E0B")
        return button
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        initSetup()
    }
    
    func initSetup() {
        
    }
}

