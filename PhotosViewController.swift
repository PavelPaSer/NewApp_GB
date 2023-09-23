//
//  NewScreenViewController.swift
//  NewApp_GB
//
//  Created by Павел Пашков on 23.09.2023.
//
import UIKit


class PhotosViewController: UIViewController {
    
    private var imageView1: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "free-icon-development-993531") 
        return imageView
    }()
    
    private var imageView2: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "free-icon-customer-engagement-8157713")
        return imageView
    }()
    
    private var imageView3: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "free-icon-problem-solving-8124658")
        return imageView
    }()
    
    private var imageView4: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "free-icon-shake-hands-6086767")
        return imageView
    }()
    
    private var imageView5: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "free-icon-remote-working-7548898")
        return imageView
    }()
    
    private var imageView6: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "free-icon-salary-4593146")
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Фото"
        setupViews()
    }
    
    private func setupViews() {
        view.addSubview(imageView1)
        view.addSubview(imageView2)
        view.addSubview(imageView3)
        view.addSubview(imageView4)
        view.addSubview(imageView5)
        view.addSubview(imageView6)
        setupConstraints()
    }
    
    private func setupConstraints() {
        imageView1.translatesAutoresizingMaskIntoConstraints = false
        imageView2.translatesAutoresizingMaskIntoConstraints = false
        imageView3.translatesAutoresizingMaskIntoConstraints = false
        imageView4.translatesAutoresizingMaskIntoConstraints = false
        imageView5.translatesAutoresizingMaskIntoConstraints = false
        imageView6.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            imageView1.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -5),
            imageView1.heightAnchor.constraint(equalToConstant: view.frame.size.width/3),
            imageView1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            
            imageView2.topAnchor.constraint(equalTo: imageView1.topAnchor),
            imageView2.widthAnchor.constraint(equalTo: imageView1.widthAnchor),
            imageView2.heightAnchor.constraint(equalTo: imageView1.heightAnchor),
            imageView2.leadingAnchor.constraint(equalTo: imageView1.trailingAnchor, constant: 5),
            
            imageView3.topAnchor.constraint(equalTo: imageView1.bottomAnchor, constant: 10),
            imageView3.widthAnchor.constraint(equalTo: imageView1.widthAnchor),
            imageView3.heightAnchor.constraint(equalTo: imageView1.heightAnchor),
            imageView3.leadingAnchor.constraint(equalTo: imageView1.leadingAnchor),
            
            imageView4.topAnchor.constraint(equalTo: imageView3.topAnchor),
            imageView4.widthAnchor.constraint(equalTo: imageView1.widthAnchor),
            imageView4.heightAnchor.constraint(equalTo: imageView1.heightAnchor),
            imageView4.leadingAnchor.constraint(equalTo: imageView3.trailingAnchor, constant: 5),
            
            imageView5.topAnchor.constraint(equalTo: imageView3.bottomAnchor, constant: 10),
            imageView5.widthAnchor.constraint(equalTo: imageView1.widthAnchor),
            imageView5.heightAnchor.constraint(equalTo: imageView1.heightAnchor),
            imageView5.leadingAnchor.constraint(equalTo: imageView1.leadingAnchor),
            
            imageView6.topAnchor.constraint(equalTo: imageView5.topAnchor),
            imageView6.widthAnchor.constraint(equalTo: imageView1.widthAnchor),
            imageView6.heightAnchor.constraint(equalTo: imageView1.heightAnchor),
            imageView6.leadingAnchor.constraint(equalTo: imageView5.trailingAnchor, constant: 5),
        ])
    }
}
// Some Code
