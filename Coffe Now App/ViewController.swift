//
//  ViewController.swift
//  Coffe Now App
//
//  Created by Firdavs Boltayev on 28/05/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    private lazy var view1: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.blue
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
        
    }
   private func layout() {
       view.addSubview(view1)
       view1.snp.makeConstraints { make in
           make.edges.equalToSuperview()
       }
    }

}


