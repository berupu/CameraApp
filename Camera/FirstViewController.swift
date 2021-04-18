//
//  ViewController.swift
//  Camera
//
//  Created by be RUPU on 18/4/21.
//

import UIKit

class ViewController: UIViewController {
    
    let photoLibraryButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.setTitle("Photos", for: .normal)
        button.addTarget(self, action: #selector(handlePhotos), for: .touchUpInside)
        return button
    }()
    
    @objc func handlePhotos(){

        let layout = UICollectionViewFlowLayout()
        let photoSelectorController = PhotoSelectorController(collectionViewLayout: layout)
        let navController = UINavigationController(rootViewController: photoSelectorController)
        navController.modalPresentationStyle = .fullScreen
        present(navController, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        
        view.addSubview(photoLibraryButton)
        photoLibraryButton.anchor(top: nil, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 12, paddingBottom: 82, paddingRight: 12, width: 80, height: 80)
    }
   
}

