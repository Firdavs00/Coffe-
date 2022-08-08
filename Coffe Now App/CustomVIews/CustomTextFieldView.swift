//
//  CustomTextFieldView.swift
//  Coffe Now App
//
//  Created by Firdavs Boltayev on 11/06/22.
//

import UIKit

class CustomTextFieldView: UIView {
    
    var type: TextFieldType = .email
//    var model: TextFieldModel = TextFieldModel()
    
    private lazy var mainView: UIView = {
        let view = UIView()
        view.frame = CGRect(x: 20, y: 0, width: windowWidth - 40, height: (77/375) * windowWidth)
        view.backgroundColor = .clear
        return view
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: mainView.frame.width, height: 21)
        label.text = type.headerTitle
        label.textColor = .darkGray
        label.textAlignment = .left
        label.backgroundColor = .clear
        return label
    }()
    
//    private lazy var tableVIew :UITableViewCell = {
//        let tableVIew = UITableViewCell()
//        tableVIew.selectionStyle = .none
//        return tableVIew
//    }()
//
    private lazy var customTexrField: UITextField  = {
        let tf = UITextField()
        tf.frame = CGRect(x: 0, y: titleLabel.frame.maxY + 6, width: mainView.frame.width, height: (50/375) * windowWidth)
        tf.placeholder = type.placeHolder
        tf.layer.borderWidth = 1
        tf.layer.borderColor = UIColor.black.cgColor
        tf.layer.cornerRadius = 10
        return tf
    }()
    
    private lazy var hideBtn: UIButton = {
        let btn = UIButton()
        btn.frame = CGRect(x: mainView.frame.width - 44, y: 13, width: 24, height: 24)
        btn.setImage(UIImage(named: "hide"), for: .normal)
        btn.backgroundColor = .orange
        return btn
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.initSetup()
    }
    
    func initSetup() {
        self.addSubview(mainView)
        mainView.addSubview(titleLabel)
        mainView.addSubview(customTexrField)
        if type == .password {
            customTexrField.addSubview(hideBtn)
            
        }
    }
}
