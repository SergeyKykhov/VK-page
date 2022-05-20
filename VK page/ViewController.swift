//
//  ViewController.swift
//  VK page
//
//  Created by Sergey Kykhov on 17.05.2022.
//

import UIKit

class ViewController: UIViewController {

    private lazy var avatar = createImageAvatar()

    private lazy var fullName = createLable(text: "Александр Петров", frame: CGRect(x: 123, y: 65, width: 200, height: 33), color: .white, ofSizeFont: 20, weightFont: .bold)

    private lazy var status = createLable(text: "Установить статус", frame: CGRect(x: 123, y: 92, width: 140, height: 30), color: .systemCyan, ofSizeFont: 16, weightFont: .regular)

    private lazy var networkActivity = createLable(text: "online", frame: CGRect(x: 123, y: 120, width: 45, height: 20), color: .systemGray, ofSizeFont: 14, weightFont: .regular)


    private lazy var buttonEdit: UIButton = {
        var buttonEdit = UIButton(frame: CGRect(x: 15, y: 160, width: 380, height: 30))
        buttonEdit.setTitle("Редактировать", for: .normal)
        buttonEdit.titleLabel?.font = .systemFont(ofSize: 17, weight: .regular)
        buttonEdit.backgroundColor = .darkGray
        buttonEdit.layer.masksToBounds = true
        buttonEdit.layer.cornerRadius = buttonEdit.frame.height / 3

        return buttonEdit
    }()

    private lazy var history = createLable(text: "История", frame: CGRect(x: 40, y: 230, width: 200, height: 30), color: .systemCyan, ofSizeFont: 17, weightFont: .regular)

    private lazy var record = createLable(text: "Запись", frame: CGRect(x: 140, y: 230, width: 200, height: 30), color: .systemCyan, ofSizeFont: 17, weightFont: .regular)

    private lazy var photo = createLable(text: "Фото", frame: CGRect(x: 230, y: 230, width: 200, height: 30), color: .systemCyan, ofSizeFont: 17, weightFont: .regular)

    private lazy var clips = createLable(text: "Клипы", frame: CGRect(x: 310, y: 230, width: 200, height: 30), color: .systemCyan, ofSizeFont: 17, weightFont: .regular)

    private lazy var city = createLable(text: "Город: Москва", frame: CGRect(x: 40, y: 280, width: 200, height: 30), color: .systemGray, ofSizeFont: 17, weightFont: .regular)

    private lazy var followers = createLable(text: "35 подписчиков", frame: CGRect(x: 40, y: 310, width: 200, height: 30), color: .systemGray, ofSizeFont: 17, weightFont: .regular)

    private lazy var placeOfWork = createLable(text: "Указать место работы", frame: CGRect(x: 40, y: 340, width: 200, height: 30), color: .systemCyan, ofSizeFont: 17, weightFont: .regular)

    private lazy var  receiveGift = createLable(text: "Получить подарок", frame: CGRect(x: 40, y: 370, width: 200, height: 30), color: .systemIndigo, ofSizeFont: 17, weightFont: .regular)

    private lazy var  detailedInformation = createLable(text: "Подробная информация", frame: CGRect(x: 40, y: 400, width: 200, height: 30), color: .white, ofSizeFont: 17, weightFont: .regular)


    private lazy var networkActivitySimbol = createSimbolsSF(systemName: "iphone.homebutton", frame: CGRect(x: 165, y: 123, width: 11, height: 12), color: .systemGray)

    private lazy var historySimbol = createSimbolsSF(systemName: "camera", frame: CGRect(x: 58, y: 200, width: 30, height: 27), color: .systemCyan)

    private lazy var recordSimbol = createSimbolsSF(systemName: "square.and.pencil", frame: CGRect(x: 150, y: 200, width: 30, height: 27), color: .systemCyan)

    private lazy var photoSimbol = createSimbolsSF(systemName: "photo", frame: CGRect(x: 235, y: 200, width: 30, height: 27), color: .systemCyan)

    private lazy var clipsSimbol = createSimbolsSF(systemName: "play", frame: CGRect(x: 320, y: 200, width: 30, height: 22), color: .systemCyan)

    private lazy var citySimbol = createSimbolsSF(systemName: "house", frame: CGRect(x: 15, y: 282, width: 20, height: 20), color: .systemGray)

    private lazy var followersSimbol = createSimbolsSF(systemName: "dot.radiowaves.up.forward", frame: CGRect(x: 15, y: 312, width: 20, height: 20), color: .systemGray)

    private lazy var workSimbol = createSimbolsSF(systemName: "bag", frame: CGRect(x: 15, y: 342, width: 20, height: 20), color: .systemCyan)

    private lazy var giftSimbol = createSimbolsSF(systemName: "snowflake", frame: CGRect(x: 15, y: 372, width: 20, height: 20), color: .systemIndigo)

    private lazy var infoSimbol = createSimbolsSF(systemName: "info.circle.fill", frame: CGRect(x: 15, y: 402, width: 20, height: 20), color: .white)

    private lazy var lineSimbol = createSimbolsSF(systemName: "minus", frame: CGRect(x: -35, y: 270, width: 480, height: 1), color: .systemGray)


    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }

    private func setupView() {
        view.backgroundColor = .tertiaryLabel
    }

    private func setupHierarchy() {
        view.addSubview(avatar)
        view.addSubview(fullName)
        view.addSubview(status)
        view.addSubview(networkActivity)
        view.addSubview(networkActivitySimbol)
        view.addSubview(buttonEdit)
        view.addSubview(history)
        view.addSubview(historySimbol)
        view.addSubview(record)
        view.addSubview(recordSimbol)
        view.addSubview(photo)
        view.addSubview(photoSimbol)
        view.addSubview(clips)
        view.addSubview(clipsSimbol)
        view.addSubview(city)
        view.addSubview(citySimbol)
        view.addSubview(followers)
        view.addSubview(followersSimbol)
        view.addSubview(placeOfWork)
        view.addSubview(workSimbol)
        view.addSubview(receiveGift)
        view.addSubview(giftSimbol)
        view.addSubview(detailedInformation)
        view.addSubview(infoSimbol)
        view.addSubview(lineSimbol)
    }

    private func createImageAvatar() -> UIImageView {
        let avatar = UIImageView(frame: CGRect(x: 15, y: 60, width: 90, height: 90))
        avatar.image = UIImage(named: "avatar3")
        avatar.contentMode = .scaleAspectFit
        avatar.layer.masksToBounds = true
        avatar.layer.cornerRadius = avatar.frame.height / 2
        view.addSubview(avatar)
        return avatar
    }

    private func setupLayout() {


    }

    private func createLable(text: String, frame: CGRect, color: UIColor, ofSizeFont: CGFloat, weightFont: UIFont.Weight) -> UILabel  {
        let lable = UILabel(frame: frame)
        lable.font = .systemFont(ofSize: ofSizeFont, weight: weightFont)
        lable.text = text
        lable.textColor = color
        return lable
    }

    private func createSimbolsSF(systemName: String, frame: CGRect, color: UIColor) -> UIImageView {
        let image = UIImage(systemName: systemName)
        let simbolsSF = UIImageView(frame: frame)
        simbolsSF.image = image
        simbolsSF.tintColor = color
        return simbolsSF
    }

}
