//
//  ViewController.swift
//  VK page
//
//  Created by Sergey Kykhov on 17.05.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        createImageView()
        // Do any additional setup after loading the view.
    }

    private func setupView() {
        view.backgroundColor = .tertiaryLabel
    }
    private func createImageView() {
        let imageView = UIImageView(frame: CGRect(x: 15, y: 60, width: 100, height: 100))
        imageView.image = UIImage(named: "avatar3")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = imageView.frame.height / 2
        self.view.addSubview(imageView)

    }
}


