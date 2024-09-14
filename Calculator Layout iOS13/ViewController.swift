//
//  ViewController.swift
//  Calculator Layout iOS13
//
//  Created by Angela Yu on 01/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let topView = UIView()
    private let label = UILabel()
    
    let leftStackView = UIStackView()
    let mainStackView = UIStackView()
    
    private let threeButtonStackView = UIStackView()
    private let acButton = UIButton()
    private let signButton = UIButton()
    private let percentButton = UIButton()
    
    private let operationsStackView = UIStackView()
    private let divideButton = UIButton()
    private let multiplyButton = UIButton()
    private let minusButton = UIButton()
    private let plusButton = UIButton()
    private let equalButton = UIButton()
    
    private let numbersStackView = UIStackView()
    
    private let numsStackViewOne = UIStackView()
    private let dotButton = UIButton()
    private let zeroButton = UIButton()
    
    private let numsStackViewTwo = UIStackView()
    private let oneButton = UIButton()
    private let twoButton = UIButton()
    private let threeButton = UIButton()
    
    private let numsStackViewThree = UIStackView()
    private let fourButton = UIButton()
    private let fiveButton = UIButton()
    private let sixButton = UIButton()
    
    private let numsStackViewFour = UIStackView()
    private let sevenButton = UIButton()
    private let eightButton = UIButton()
    private let nineButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTopView()
        setupThreeButton()
        setupOperationButtons()
        setupNumberButtons()
        setupMainStackViews()
    }
    
    func setupTopView() {
        topView.backgroundColor = .darkGray
        topView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(topView)
        
        label.text = "0"
        label.textAlignment = .right
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 60, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        topView.addSubview(label)
        
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            topView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            topView.heightAnchor.constraint(equalToConstant: 120),
            
            label.centerYAnchor.constraint(equalTo: topView.centerYAnchor),
            label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            label.leadingAnchor.constraint(lessThanOrEqualTo: topView.leadingAnchor, constant: 500)
        ])
    }
    
    func setupThreeButton() {
        threeButtonStackView.axis = .horizontal
        threeButtonStackView.spacing = 0
        threeButtonStackView.alignment = .fill
        threeButtonStackView.distribution = .fillEqually
        threeButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        
        acButton.setTitle("AC", for: .normal)
        acButton.backgroundColor = .gray
        acButton.titleLabel?.font = UIFont.systemFont(ofSize: 26)
        acButton.layer.borderWidth = 1
        acButton.layer.borderColor = UIColor.black.cgColor
        threeButtonStackView.addArrangedSubview(acButton)
        
        signButton.setTitle("+/-", for: .normal)
        signButton.backgroundColor = .gray
        signButton.titleLabel?.font = UIFont.systemFont(ofSize: 26)
        signButton.layer.borderWidth = 1
        signButton.layer.borderColor = UIColor.black.cgColor
        threeButtonStackView.addArrangedSubview(signButton)
        
        percentButton.setTitle("%", for: .normal)
        percentButton.backgroundColor = .gray
        percentButton.titleLabel?.font = UIFont.systemFont(ofSize: 26)
        percentButton.layer.borderWidth = 1
        percentButton.layer.borderColor = UIColor.black.cgColor
        threeButtonStackView.addArrangedSubview(percentButton)
    }
    
    func setupOperationButtons() {
        operationsStackView.axis = .vertical
        operationsStackView.spacing = 0
        operationsStackView.alignment = .fill
        operationsStackView.distribution = .fillEqually
        operationsStackView.translatesAutoresizingMaskIntoConstraints = false
        
        divideButton.setTitle("/", for: .normal)
        divideButton.backgroundColor = .orange
        divideButton.titleLabel?.font = UIFont.systemFont(ofSize: 26)
        divideButton.layer.borderWidth = 1
        divideButton.layer.borderColor = UIColor.black.cgColor
        operationsStackView.addArrangedSubview(divideButton)
        
        multiplyButton.setTitle("*", for: .normal)
        multiplyButton.backgroundColor = .orange
        multiplyButton.titleLabel?.font = UIFont.systemFont(ofSize: 26)
        multiplyButton.layer.borderWidth = 1
        multiplyButton.layer.borderColor = UIColor.black.cgColor
        operationsStackView.addArrangedSubview(multiplyButton)
        
        minusButton.setTitle("-", for: .normal)
        minusButton.backgroundColor = .orange
        minusButton.titleLabel?.font = UIFont.systemFont(ofSize: 26)
        minusButton.layer.borderWidth = 1
        minusButton.layer.borderColor = UIColor.black.cgColor
        operationsStackView.addArrangedSubview(minusButton)
        
        plusButton.setTitle("+", for: .normal)
        plusButton.backgroundColor = .orange
        plusButton.titleLabel?.font = UIFont.systemFont(ofSize: 26)
        plusButton.layer.borderWidth = 1
        plusButton.layer.borderColor = UIColor.black.cgColor
        operationsStackView.addArrangedSubview(plusButton)
        
        equalButton.setTitle("=", for: .normal)
        equalButton.backgroundColor = .orange
        equalButton.titleLabel?.font = UIFont.systemFont(ofSize: 26)
        equalButton.layer.borderWidth = 1
        equalButton.layer.borderColor = UIColor.black.cgColor
        operationsStackView.addArrangedSubview(equalButton)
    }
    
    func setupNumberButtons() {
        numbersStackView.axis = .vertical
        numbersStackView.spacing = 0
        numbersStackView.alignment = .fill
        numbersStackView.distribution = .fillEqually
        numbersStackView.translatesAutoresizingMaskIntoConstraints = false
        
        numsStackViewFour.axis = .horizontal
        numsStackViewFour.distribution = .fillEqually
        numbersStackView.addArrangedSubview(numsStackViewFour)
        
        sevenButton.setTitle("7", for: .normal)
        sevenButton.titleLabel?.textColor = .white
        sevenButton.titleLabel?.font = UIFont.systemFont(ofSize: 26)
        sevenButton.backgroundColor = .systemBlue
        sevenButton.layer.borderWidth = 1
        sevenButton.layer.borderColor = UIColor.black.cgColor
        sevenButton.translatesAutoresizingMaskIntoConstraints = false
        numsStackViewFour.addArrangedSubview(sevenButton)
        
        eightButton.setTitle("8", for: .normal)
        eightButton.titleLabel?.textColor = .white
        eightButton.titleLabel?.font = UIFont.systemFont(ofSize: 26)
        eightButton.backgroundColor = .systemBlue
        eightButton.layer.borderWidth = 1
        eightButton.layer.borderColor = UIColor.black.cgColor
        eightButton.translatesAutoresizingMaskIntoConstraints = false
        numsStackViewFour.addArrangedSubview(eightButton)
        
        nineButton.setTitle("9", for: .normal)
        nineButton.titleLabel?.textColor = .white
        nineButton.titleLabel?.font = UIFont.systemFont(ofSize: 26)
        nineButton.backgroundColor = .systemBlue
        nineButton.layer.borderWidth = 1
        nineButton.layer.borderColor = UIColor.black.cgColor
        nineButton.translatesAutoresizingMaskIntoConstraints = false
        numsStackViewFour.addArrangedSubview(nineButton)
        
        numsStackViewThree.axis = .horizontal
        numsStackViewThree.distribution = .fillEqually
        numbersStackView.addArrangedSubview(numsStackViewThree)
        
        fourButton.setTitle("4", for: .normal)
        fourButton.titleLabel?.textColor = .white
        fourButton.titleLabel?.font = UIFont.systemFont(ofSize: 26)
        fourButton.backgroundColor = .systemBlue
        fourButton.layer.borderWidth = 1
        fourButton.layer.borderColor = UIColor.black.cgColor
        fourButton.translatesAutoresizingMaskIntoConstraints = false
        numsStackViewThree.addArrangedSubview(fourButton)
        
        fiveButton.setTitle("5", for: .normal)
        fiveButton.titleLabel?.textColor = .white
        fiveButton.titleLabel?.font = UIFont.systemFont(ofSize: 26)
        fiveButton.backgroundColor = .systemBlue
        fiveButton.layer.borderWidth = 1
        fiveButton.layer.borderColor = UIColor.black.cgColor
        fiveButton.translatesAutoresizingMaskIntoConstraints = false
        numsStackViewThree.addArrangedSubview(fiveButton)
        
        sixButton.setTitle("6", for: .normal)
        sixButton.titleLabel?.textColor = .white
        sixButton.titleLabel?.font = UIFont.systemFont(ofSize: 26)
        sixButton.backgroundColor = .systemBlue
        sixButton.layer.borderWidth = 1
        sixButton.layer.borderColor = UIColor.black.cgColor
        sixButton.translatesAutoresizingMaskIntoConstraints = false
        numsStackViewThree.addArrangedSubview(sixButton)
        
        numsStackViewTwo.axis = .horizontal
        numsStackViewTwo.distribution = .fillEqually
        numbersStackView.addArrangedSubview(numsStackViewTwo)
        
        oneButton.setTitle("1", for: .normal)
        oneButton.titleLabel?.textColor = .white
        oneButton.titleLabel?.font = UIFont.systemFont(ofSize: 26)
        oneButton.backgroundColor = .systemBlue
        oneButton.layer.borderWidth = 1
        oneButton.layer.borderColor = UIColor.black.cgColor
        oneButton.translatesAutoresizingMaskIntoConstraints = false
        numsStackViewTwo.addArrangedSubview(oneButton)
        
        twoButton.setTitle("2", for: .normal)
        twoButton.titleLabel?.textColor = .white
        twoButton.titleLabel?.font = UIFont.systemFont(ofSize: 26)
        twoButton.backgroundColor = .systemBlue
        twoButton.layer.borderWidth = 1
        twoButton.layer.borderColor = UIColor.black.cgColor
        twoButton.translatesAutoresizingMaskIntoConstraints = false
        numsStackViewTwo.addArrangedSubview(twoButton)
        
        threeButton.setTitle("3", for: .normal)
        threeButton.titleLabel?.textColor = .white
        threeButton.titleLabel?.font = UIFont.systemFont(ofSize: 26)
        threeButton.backgroundColor = .systemBlue
        threeButton.layer.borderWidth = 1
        threeButton.layer.borderColor = UIColor.black.cgColor
        threeButton.translatesAutoresizingMaskIntoConstraints = false
        numsStackViewTwo.addArrangedSubview(threeButton)
        
        numsStackViewOne.axis = .horizontal
        numsStackViewOne.distribution = .fillProportionally
        numbersStackView.addArrangedSubview(numsStackViewOne)
        
        zeroButton.setTitle("0", for: .normal)
        zeroButton.titleLabel?.textColor = .white
        zeroButton.titleLabel?.font = UIFont.systemFont(ofSize: 26)
        zeroButton.backgroundColor = .systemBlue
        zeroButton.layer.borderWidth = 1
        zeroButton.layer.borderColor = UIColor.black.cgColor
        zeroButton.translatesAutoresizingMaskIntoConstraints = false
        numsStackViewOne.addArrangedSubview(zeroButton)
        
        dotButton.setTitle(".", for: .normal)
        dotButton.titleLabel?.textColor = .white
        dotButton.titleLabel?.font = UIFont.systemFont(ofSize: 26)
        dotButton.backgroundColor = .systemBlue
        dotButton.layer.borderWidth = 1
        dotButton.layer.borderColor = UIColor.black.cgColor
        dotButton.translatesAutoresizingMaskIntoConstraints = false
        numsStackViewOne.addArrangedSubview(dotButton)
        
        zeroButton.widthAnchor.constraint(equalTo: dotButton.widthAnchor, multiplier: 2).isActive = true
    }
    
    func setupMainStackViews() {
        // Настройка leftStackView
        leftStackView.axis = .vertical
        leftStackView.translatesAutoresizingMaskIntoConstraints = false
        leftStackView.addArrangedSubview(threeButtonStackView)
        leftStackView.addArrangedSubview(numbersStackView)
        
        // Настройка mainStackView
        mainStackView.axis = .horizontal
        mainStackView.spacing = 0
        mainStackView.alignment = .fill
        mainStackView.distribution = .fill
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        mainStackView.addArrangedSubview(leftStackView)
        mainStackView.addArrangedSubview(operationsStackView)
        
        view.addSubview(mainStackView)
        
        // Установка ограничений для пропорций
        NSLayoutConstraint.activate([
            threeButtonStackView.heightAnchor.constraint(equalTo: numbersStackView.heightAnchor, multiplier: 0.25),
            leftStackView.widthAnchor.constraint(equalTo: operationsStackView.widthAnchor, multiplier: 3),
            
            mainStackView.topAnchor.constraint(equalTo: topView.bottomAnchor),
            mainStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            mainStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
