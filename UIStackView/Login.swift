//
//  Login.swift
//  UIStackView
//
//  Created by Temirlan Idrissov on 02.05.2022.
//

import Foundation
import UIKit
import SnapKit

class Login: UIViewController {
    
    lazy var stackView: UIStackView = {
       let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .fill
        stack.spacing = 10.0
        stack.distribution = .fillEqually
        [self.usernameLabel,
         self.usernameTextField,
         self.userPassword,
         self.userPasswordTextField,
         self.keepLoginStackView,
         self.logInButton].forEach { stack.addArrangedSubview($0) }
        return stack
    }()
    
    lazy var usernameLabel: UILabel = {
       let label = UILabel()
        label.text = "Username"
        label.font = .systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    
    lazy var usernameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Username"
        return textField
    }()
    
    lazy var userPassword: UILabel = {
       let label = UILabel()
        label.text = "Password"
        label.font = .systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    
    lazy var userPasswordTextField: UITextField = {
       let textField = UITextField()
        textField.placeholder = "Password"
        return textField
    }()
    
    lazy var keepLabel: UITextField = {
       let textField = UITextField()
        textField.placeholder = "Keep me in Log in"
        return textField
    }()
    
    lazy var switchThings: UISwitch = {
       let switchThing = UISwitch()
        switchThing.isOn = true
            switchThing.setOn(true, animated: false)
        return switchThing
    }()
    
    lazy var logInButton: UIButton = {
      let button = UIButton()
        button.setTitle("Log In", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 16
        return button
    }()
    
    lazy var keepLoginStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .trailing
        stackView.distribution = .fill
        [self.keepLabel,
            self.switchThings].forEach { stackView.addArrangedSubview($0) }
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    func setUI() {
        view.addSubview(stackView)
        stackView.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
        }
        
//        view.addSubview(logInButton)
//        logInButton.snp.makeConstraints { make in
//            make.centerX.equalToSuperview()
//            make.bottom.equalToSuperview().offset(-50)
//        }
    }
    
}
