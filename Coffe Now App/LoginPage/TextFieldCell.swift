//
//  TextFieldCell.swift
//  Coffe Now App
//
//  Created by Firdavs Boltayev on 11/06/22.
//

import UIKit

class TextFieldCell: UITableViewCell {
    
    private var model: TextFieldModel!
    var type: TextFieldType = .email
    
    
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
        btn.setImage(UIImage(named: "ic_hide"), for: .normal)
        btn.backgroundColor = .orange
        return btn
    }()
    
//    private lazy var forgotPasswordText: UILabel = {
//        let label = UILabel()
//        label.frame = CGRect(x: 245  , y: mainView.frame.maxY + 9, width: 110, height: 18)
//        label.text = "Forgot Password ?"
//        return label
//    }()
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    init(_ model: TextFieldModel) {
        super.init(style: .default, reuseIdentifier: "textfield")
        self.model = model
        self.initSetup()
        self.initData()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initSetup() {
        
        self.addSubview(mainView)
//        self.addSubview(forgotPasswordText)
        mainView.addSubview(titleLabel)
        mainView.addSubview(customTexrField)

        if type == .password {
            customTexrField.addSubview(hideBtn)
        }
    }
    
    func initData() {
        self.titleLabel.text = model.headerTitle
        self.customTexrField.placeholder = model.placeHolder
    }
}
