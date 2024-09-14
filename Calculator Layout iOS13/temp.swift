//
//  temp.swift
//  Calculator Layout iOS13
//
//  Created by Bakgeldi Alkhabay on 14.09.2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit

class temp: UIViewController {

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
        // Do any additional setup after loading the view.
        
        setupTopView()
        setupThreeButton()
        setupOperationButtons()
        setupNumberButtons()
        //setupMainStackViews()
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
        leftStackView.axis = .vertical
        threeButtonStackView.spacing = 0
        threeButtonStackView.alignment = .fill
        threeButtonStackView.distribution = .fillEqually
        threeButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(threeButtonStackView)
        
        threeButtonStackView.axis = .horizontal
        threeButtonStackView.spacing = 0
        threeButtonStackView.alignment = .fill
        threeButtonStackView.distribution = .fillEqually
        threeButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(threeButtonStackView)
        
        acButton.setTitle("AC", for: .normal)
        acButton.titleLabel?.textColor = .white
        acButton.titleLabel?.font = UIFont.systemFont(ofSize: 26)
        acButton.backgroundColor = .gray
        acButton.layer.borderWidth = 1
        acButton.layer.borderColor = UIColor.black.cgColor
        acButton.translatesAutoresizingMaskIntoConstraints = false
        threeButtonStackView.addArrangedSubview(acButton)
        
        signButton.setTitle("+/-", for: .normal)
        signButton.titleLabel?.textColor = .white
        signButton.titleLabel?.font = UIFont.systemFont(ofSize: 26)
        signButton.backgroundColor = .gray
        signButton.layer.borderWidth = 1
        signButton.layer.borderColor = UIColor.black.cgColor
        signButton.translatesAutoresizingMaskIntoConstraints = false
        threeButtonStackView.addArrangedSubview(signButton)
        
        percentButton.setTitle("%", for: .normal)
        percentButton.titleLabel?.textColor = .white
        percentButton.titleLabel?.font = UIFont.systemFont(ofSize: 26)
        percentButton.backgroundColor = .gray
        percentButton.layer.borderWidth = 1
        percentButton.layer.borderColor = UIColor.black.cgColor
        percentButton.translatesAutoresizingMaskIntoConstraints = false
        threeButtonStackView.addArrangedSubview(percentButton)
        
        NSLayoutConstraint.activate([
            threeButtonStackView.topAnchor.constraint(equalTo: topView.bottomAnchor),
            threeButtonStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            threeButtonStackView.heightAnchor.constraint(equalToConstant: 128),
            threeButtonStackView.widthAnchor.constraint(equalToConstant: 300),
        ])
        
    }
    
    func setupOperationButtons() {
        operationsStackView.axis = .vertical
        operationsStackView.spacing = 0
        operationsStackView.alignment = .fill
        operationsStackView.distribution = .fillEqually
        operationsStackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(operationsStackView)
        
        divideButton.setTitle("/", for: .normal)
        divideButton.titleLabel?.textColor = .white
        divideButton.titleLabel?.font = UIFont.systemFont(ofSize: 26)
        divideButton.backgroundColor = .orange
        divideButton.layer.borderWidth = 1
        divideButton.layer.borderColor = UIColor.black.cgColor
        divideButton.translatesAutoresizingMaskIntoConstraints = false
        operationsStackView.addArrangedSubview(divideButton)
        
        multiplyButton.setTitle("/", for: .normal)
        multiplyButton.titleLabel?.textColor = .white
        multiplyButton.titleLabel?.font = UIFont.systemFont(ofSize: 26)
        multiplyButton.backgroundColor = .orange
        multiplyButton.layer.borderWidth = 1
        multiplyButton.layer.borderColor = UIColor.black.cgColor
        multiplyButton.translatesAutoresizingMaskIntoConstraints = false
        operationsStackView.addArrangedSubview(multiplyButton)
        
        minusButton.setTitle("-", for: .normal)
        minusButton.titleLabel?.textColor = .white
        minusButton.titleLabel?.font = UIFont.systemFont(ofSize: 26)
        minusButton.backgroundColor = .orange
        minusButton.layer.borderWidth = 1
        minusButton.layer.borderColor = UIColor.black.cgColor
        minusButton.translatesAutoresizingMaskIntoConstraints = false
        operationsStackView.addArrangedSubview(minusButton)
        
        plusButton.setTitle("-", for: .normal)
        plusButton.titleLabel?.textColor = .white
        plusButton.titleLabel?.font = UIFont.systemFont(ofSize: 26)
        plusButton.backgroundColor = .orange
        plusButton.layer.borderWidth = 1
        plusButton.layer.borderColor = UIColor.black.cgColor
        plusButton.translatesAutoresizingMaskIntoConstraints = false
        operationsStackView.addArrangedSubview(plusButton)
        
        equalButton.setTitle("=", for: .normal)
        equalButton.titleLabel?.textColor = .white
        equalButton.titleLabel?.font = UIFont.systemFont(ofSize: 26)
        equalButton.backgroundColor = .orange
        equalButton.layer.borderWidth = 1
        equalButton.layer.borderColor = UIColor.black.cgColor
        equalButton.translatesAutoresizingMaskIntoConstraints = false
        operationsStackView.addArrangedSubview(equalButton)
        
        
        NSLayoutConstraint.activate([
            operationsStackView.topAnchor.constraint(equalTo: topView.bottomAnchor),
            operationsStackView.leadingAnchor.constraint(equalTo: threeButtonStackView.trailingAnchor),
            operationsStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            operationsStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    func setupNumberButtons() {
        numbersStackView.axis = .vertical
        numbersStackView.spacing = 0
        numbersStackView.alignment = .fill
        numbersStackView.backgroundColor = .black
        numbersStackView.distribution = .fillEqually
        numbersStackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(numbersStackView)
        
        numsStackViewFour.axis = .horizontal
        numsStackViewFour.spacing = 0
        numsStackViewFour.alignment = .fill
        numsStackViewFour.backgroundColor = .white
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
        numsStackViewThree.spacing = 0
        numsStackViewThree.alignment = .fill
        numsStackViewThree.backgroundColor = .white
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
        numsStackViewTwo.spacing = 0
        numsStackViewTwo.alignment = .fill
        numsStackViewTwo.backgroundColor = .white
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
        numsStackViewOne.spacing = 0
        numsStackViewOne.alignment = .fill
        numsStackViewOne.backgroundColor = .white
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
        
        
        NSLayoutConstraint.activate([
            numbersStackView.topAnchor.constraint(equalTo: threeButtonStackView.bottomAnchor),
            numbersStackView.trailingAnchor.constraint(equalTo: operationsStackView.leadingAnchor),
            numbersStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            numbersStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            numsStackViewFour.topAnchor.constraint(equalTo: numbersStackView.topAnchor),
            numsStackViewFour.leadingAnchor.constraint(equalTo: numbersStackView.leadingAnchor),
            numsStackViewFour.trailingAnchor.constraint(equalTo: numbersStackView.trailingAnchor),
            
            zeroButton.widthAnchor.constraint(equalTo: dotButton.widthAnchor, multiplier: 2),
        ])
    }
}
