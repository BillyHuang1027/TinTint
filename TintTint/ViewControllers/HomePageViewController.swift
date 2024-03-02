//
//  HomePageViewController.swift
//  TintTint
//
//  Created by RD1-Billy on 2024/3/2.
//

import UIKit

class HomePageViewController: UIViewController {

    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Next Page", for: .normal)
        button.tintColor = .white
        button.backgroundColor = .systemBlue
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(button)
        view.backgroundColor = .white
        
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: button, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: button, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }

    @objc private func nextButtonTapped() {
        let nextVC = PhotosViewController()
        navigationController?.pushViewController(nextVC, animated: true)
    }
}
