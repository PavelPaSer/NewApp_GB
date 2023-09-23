//
//  CustomContactViewCell.swift
//  NewApp_GB
//
//  Created by Павел Пашков on 23.09.2023.
//


import UIKit

final class CustomGruopViewCell: UITableViewCell {
    private var circle = UIImageView(image: UIImage(systemName: "person.2.circle"))
    
    private var customTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Наименование"
        label.textColor = .black
        return label
    }()
    private var customTextLabel2: UILabel = {
        let label = UILabel()
        label.text = "Группы"

        label.textColor = .black
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        setupViews()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        addSubview(circle)
        addSubview(customTextLabel)
        addSubview(customTextLabel2)
   
        circle.translatesAutoresizingMaskIntoConstraints = false
        customTextLabel.translatesAutoresizingMaskIntoConstraints = false
        customTextLabel2.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            // Настройка circle
            circle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            circle.centerYAnchor.constraint(equalTo: centerYAnchor),
            circle.widthAnchor.constraint(equalToConstant: 30),
            circle.heightAnchor.constraint(equalToConstant: 30),
            
            // Настройка customTextLabel
            customTextLabel.leadingAnchor.constraint(equalTo: circle.trailingAnchor, constant: 16),
            customTextLabel2.topAnchor.constraint(equalTo: customTextLabel.bottomAnchor, constant: 0),
            customTextLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
  

            customTextLabel2.leadingAnchor.constraint(equalTo: customTextLabel.leadingAnchor),
            customTextLabel2.trailingAnchor.constraint(equalTo: customTextLabel.trailingAnchor),
            customTextLabel2.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0),

        ])
    }
}
// Some Code
