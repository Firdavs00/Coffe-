//
//  LoginViewController.swift
//  Coffe Now App
//
//  Created by Firdavs Boltayev on 11/06/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    var dataSource: [TextFieldModel] = []
    var buttonItems: [ButtonModel] = []
    //MARK: - VARIABLES
    private lazy var logoView: UIView = {
       let view = LogoView()
        view.frame = CGRect(x: 20, y: (52/375) * windowWidth, width: windowWidth - 40, height: (136/375) * windowWidth)
        view.backgroundColor = .clear
        view.type = .addressSetup
        return view
    }()
    
    private lazy var textFieldCustomView: UIView = {
       let view = CustomTextFieldView()
        view.frame = CGRect(x: 0, y: logoView.frame.maxY + 32, width: windowWidth, height: (77/375) * windowWidth)
        view.type = .email
        return view
    }()
    
    private lazy var tableView: UITableView = {
       let tableView = UITableView()
        tableView.frame = CGRect(x: 0, y: logoView.frame.maxY, width: windowWidth, height: windowHeight - logoView.frame.height)
        
        tableView.register(TextFieldCell.self, forCellReuseIdentifier: "textfield")
        tableView.register(TextFieldCell.self, forCellReuseIdentifier: "textfield")
        tableView.register(ButtonCell.self, forCellReuseIdentifier: "button")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = .none
//        tableView.isScrollEnabled = false
        tableView.backgroundColor = .clear
        return tableView
    }()
    

    
    //MARK: - VIEWDIDLOAD
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initSetup()
    }
    
    //MARK: - FUNCTIONS
    func initSetup() {
        view.backgroundColor = .white
        view.addSubview(logoView)
        view.addSubview(tableView)
       
        self.exampleData()
    }
    
    func exampleData() {
        dataSource.append(TextFieldModel(headerTitle: TextFieldType.email.headerTitle, placeHolder: TextFieldType.email.placeHolder))
        dataSource.append(TextFieldModel(headerTitle: TextFieldType.password.headerTitle, placeHolder: TextFieldType.password.placeHolder))
        buttonItems.append(ButtonModel(title: ButtonType.login.buttonTitle))
//        dataSource.append(TextFieldModel(headerTitle: TextFieldType.phone_number.headerTitle, placeHolder: TextFieldType.phone_number.placeHolder))
    }
}



extension LoginViewController: UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TextFieldCell(dataSource[indexPath.row])
        cell.backgroundColor = .clear
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return (91/375) * windowWidth
    }

}
