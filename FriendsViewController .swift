//
//  NewScreenViewController.swift
//  NewApp_GB
//
//  Created by Павел Пашков on 23.09.2023.
//

import UIKit

class FriendsViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(CustomContactViewCell.self, forCellReuseIdentifier: "CustomCellIdentifier")
        view.backgroundColor = .white
        
        navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.barTintColor = .white
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1 // Одна секция
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5 // Всегда возвращаем 5 ячеек
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCellIdentifier", for: indexPath) as! CustomContactViewCell
        // Configure the cell here, e.g., set its labels or other properties
        return cell
    }
}

// Some Code
