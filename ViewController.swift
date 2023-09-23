//
//  ViewController.swift
//  Lesson_1
//
//  Created by Павел Пашков on 20.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private let logoImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(systemName: "person"))
        return imageView
    }()
    private let AuthoregTextField: UITextField = {
        let textField = UITextField()
        textField.text = "Авторизация"
        textField.textAlignment = .center
        return textField
    }()
    private let loginTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Логин"
        textField.borderStyle = .roundedRect
        return textField
    }()
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Пароль"
        textField.borderStyle = .roundedRect
        return textField
    }()
    var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Войти", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        return button
    }()
    private var isTap = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        loginButton.addTarget(self, action: #selector(tap), for: .touchUpInside)
        setupView()
    }
    
    func setupView() {
        view.addSubview(logoImageView)
        view.addSubview(AuthoregTextField)
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        setupConsraints()
    }
    func setupConsraints() {
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        AuthoregTextField.translatesAutoresizingMaskIntoConstraints = false
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            logoImageView.widthAnchor.constraint(equalToConstant: 100),
            logoImageView.heightAnchor.constraint(equalToConstant: 100),
            
            AuthoregTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            AuthoregTextField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 20),
            AuthoregTextField.widthAnchor.constraint(equalToConstant: 120),
            AuthoregTextField.heightAnchor.constraint(equalToConstant: 100),
            
            loginTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginTextField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 100),
            loginTextField.widthAnchor.constraint(equalToConstant: 200),
            loginTextField.heightAnchor.constraint(equalToConstant: 40),
            
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 20),
            passwordTextField.widthAnchor.constraint(equalToConstant: 200),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40),
            
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            loginButton.widthAnchor.constraint(equalToConstant: 200),
            loginButton.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
    @objc private func tap() {
        let tab1 = UINavigationController(rootViewController: FriendsViewController())
        let tab2 = UINavigationController(rootViewController: GroupsViewController())
        let tab3 = UINavigationController(rootViewController: PhotosViewController())
        
        tab1.tabBarItem.title = "Друзья"
        tab2.tabBarItem.title = "Группы"
        tab3.tabBarItem.title = "Фото"
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [tab1, tab2, tab3]
        
        // Present the tab bar controller
        navigationController?.pushViewController(tabBarController, animated: true)
    }
}

// Some Code
