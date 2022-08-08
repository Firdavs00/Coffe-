//
//  LaunchViewController.swift
//  Coffe Now App
//
//  Created by Firdavs Boltayev on 28/05/22.
//

import UIKit

class LaunchViewController: UIViewController {

    private lazy var image: UIImageView = {
       let img = UIImageView()
        img.image = UIImage(named: "coffe_time")
        img.layer.cornerRadius = 30
        return img
    }()
    
    private lazy var ellipse: UIView = {
        let stroke = UIView()
        stroke.bounds = view.bounds.insetBy(dx: -2.19, dy: -2.19)
        stroke.center = view.center
        view.addSubview(stroke)
        view.bounds = view.bounds.insetBy(dx: -2.19, dy: -2.19)
        stroke.layer.borderWidth = 4.38
        stroke.layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        return stroke
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        layout()
    }
    
    func layout() {
        view.addSubview(image)
        image.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.top.equalToSuperview()
            make.bottom.equalToSuperview().offset(-221)
        }
        
        view.addSubview(ellipse)
        ellipse.snp.makeConstraints { make in
//            make.top.equalTo(image.snp.bottom).offset(50)
//            make.left.equalTo(image.snp.left)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
    }
}


    
//#if DEBUG
//import SwiftUI
//struct InfoVCRepresentable: UIViewControllerRepresentable {
//    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
//        // leave this empty
//    }
//    @available(iOS 13.0.0, *)
//    func makeUIViewController(context: Context) -> UIViewController {
//        LaunchViewController()
//    }
//}
//@available(iOS 13.0, *)
//struct InfoVCPreview: PreviewProvider {
//    static var previews: some View {
//       InfoVCRepresentable()
//    }
//}
//#endif
