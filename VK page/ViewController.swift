//
//  ViewController.swift
//  VK page
//
//  Created by Sergey Kykhov on 17.05.2022.
//

import UIKit

class ViewController: UIViewController {
    private lazy var status: UILabel = {
        var status = UILabel(frame: CGRect(x: 123, y: 85, width: 300, height: 50))
        status.font = .systemFont(ofSize: 15, weight: .regular)
        status.text = "Установить статус"
        status.textColor = .systemCyan
        return status
    }()

    private lazy var fullName: UILabel = {
        var fullName = UILabel(frame: CGRect(x: 65, y: 60, width: 300, height: 50))
        fullName.font = .systemFont(ofSize: 20, weight: .bold)
        fullName.text = "Александр Петров"
        fullName.textColor = .white
        fullName.textAlignment = .center
        return fullName
    }()

    private lazy var networkActivity: UILabel = {
        var networkActivity = UILabel(frame: CGRect(x: -6, y: 110, width: 300, height: 50))
        networkActivity.font = .systemFont(ofSize: 14, weight: .regular)
        networkActivity.text = "online"
        networkActivity.textColor = .systemGray
        networkActivity.textAlignment = .center
        return networkActivity
    }()

    private lazy var buttonEdit: UIButton = {
        var buttonEdit = UIButton(frame: CGRect(x: 15, y: 160, width: 380, height: 30))
        buttonEdit.setTitle("Редактировать", for: .normal)
        buttonEdit.titleLabel?.font = .systemFont(ofSize: 17, weight: .regular)
        buttonEdit.backgroundColor = .darkGray
        buttonEdit.layer.masksToBounds = true
        buttonEdit.layer.cornerRadius = buttonEdit.frame.height / 3

        return buttonEdit
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        createImageView()
        setupHierarchy()
//        setupLayout()
        // Do any additional setup after loading the view.
    }

    private func setupView() {
        view.backgroundColor = .tertiaryLabel
    }

    private func setupHierarchy() {
        view.addSubview(fullName)
        view.addSubview(status)
        view.addSubview(networkActivity)
        view.addSubview(buttonEdit)
    }

//    private func setupLayout() {
//        lable.translatesAutoresizingMaskIntoConstraints = false
//        lable.centerXAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
//        lable.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
//    }

    private func createImageView() {
        let imageView = UIImageView(frame: CGRect(x: 15, y: 60, width: 90, height: 90))
        imageView.image = UIImage(named: "avatar3")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = imageView.frame.height / 2
        view.addSubview(imageView)

    }
}


