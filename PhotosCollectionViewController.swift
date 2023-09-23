//
//  PhotosCollectionViewController.swift
//  NewApp_GB
//
//  Created by Павел Пашков on 23.09.2023.
//

import UIKit

class PhotosCollectionViewController: UICollectionViewController {
    
    let numberOfItems = 6 // Количество ячеек
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Зарегистрируем класс ячейки
        self.collectionView.register(PhotosViewController.self, forCellWithReuseIdentifier: "cell")
        
        // Настройте макет для UICollectionView, например, используя UICollectionViewFlowLayout
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.itemSize = CGSize(width: view.frame.size.width / 2, height: view.frame.size.width / 2)
        }
    }
    
    // Далее реализуйте методы для работы с данными и отображения ячеек
    // Например, numberOfSections, collectionView(_:numberOfItemsInSection:), collectionView(_:cellForItemAt:), и другие
    // Также можете настроить интерфейс и данные в методе viewDidLoad
}
