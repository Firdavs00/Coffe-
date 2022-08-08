//
//  ButtonCell.swift
//  Coffe Now App
//
//  Created by Firdavs Boltayev on 05/07/22.
//

import Foundation
import UIKit

class ButtonCell: UITableViewCell {
    
    
    private lazy var mainView: UIView = {
        var view = UIView()
        view.frame = CGRect(x: 20, y: 0 , width: windowWidth - 40 , height: 94/375 * windowWidth)
        view.backgroundColor = .red
        return view
    }()
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.backgroundColor = UIColor(red: 0.969, green: 0.973, blue: 0.98, alpha: 1)
       initSetup()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initSetup() {
        self.addSubview(mainView)
    }
}
