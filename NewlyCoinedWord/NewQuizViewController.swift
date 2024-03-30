//
//  NewQuizViewController.swift
//  NewlyCoinedWord
//
//  Created by cho on 12/30/23.
//

import UIKit

class NewQuizViewController: UIViewController {

    @IBOutlet var inputTextField: UITextField!
    @IBOutlet var searchButton: UIButton!
    @IBOutlet var textButton: [UIButton]!
    @IBOutlet var backgroundImage: UIImageView!
    @IBOutlet var resultLabel: UILabel!
    
    let word = ["얼죽아", "내또출", "꾸안꾸", "슬세권", "복세편살", "할매니얼", "가심비", "소확행", "팬아저", "영고", "무물", "쉼포족"]
    let newlyCoinedWord : [String : String] = ["얼죽아" : "'얼어 죽어도 아이스커피'의 줄임말",
                           "내또출" : "'내일 또 출근'의 줄임말",
                           "꾸안꾸" : "'꾸민 듯 안 꾸민 듯'의 줄임말",
                           "슬세권" : "슬리퍼처럼 편한 복장으로 다닐 수 있는 범위의 생활권역을 지칭",
                           "복세편살" : "'복잡한 세상 편하게 살자'의 준말",
                            "할매니얼" : "할머니와 밀레니얼을 합친 신조어. 할머니 문화를 좋아하고 따라 하는 소비 트렌드를 지칭",
                            "가심비" : "가격 대비 심리적 만족도를 뜻함",
                            "소확행" : "'소소하지만 확실한 행복'의 줄임말",
                            "팬아저" : "'팬이 아니어도 저장'의 줄임말",
                            "영고" : "'영원히 고통받는다'의 약자",
                            "무물" : "'무엇이든 물어보세요'의 약자",
                            "쉼포족" : "휴식을 포기할 정도로 바쁘고 고달픈 삶을 사는 현대 직장인을 지칭"
    ]
    let text: String  = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        inputTextField.layer.borderColor = UIColor.black.cgColor
        inputTextField.layer.borderWidth = 1
        inputTextField.placeholder = "영어입력 시, 대소문자 구분하지 않습니다."
        
        searchButton.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        searchButton.setTitle("", for: .normal)
        searchButton.tintColor = .white
        searchButton.backgroundColor = .black
        
        let tmp = word.shuffled()
        for idx in 0...5 {
            textButton[idx].layer.cornerRadius = 4
            textButton[idx].layer.borderColor = UIColor.black.cgColor
            textButton[idx].layer.borderWidth = 1
            textButton[idx].setTitleColor(.black, for: .normal)
            textButton[idx].setTitle(tmp[idx], for: .normal)
        }
        
        backgroundImage.image = .wordLogo
        backgroundImage.contentMode = .scaleToFill
        
        resultLabel.text = ""
        resultLabel.textColor = .black
        resultLabel.numberOfLines = 0
    }
    
    @IBAction func searchButtonTapped(_ sender: UIButton) {
        resultText()
    }
    
    @IBAction func keyboardReturn(_ sender: UITextField) {
        resultText()
    }
    
    @IBAction func textButtonTapped(_ sender: UIButton) {
        inputTextField.text = sender.currentTitle
    }
    
    func resultText() {
        backgroundImage.image = .background
        let text = inputTextField.text?.lowercased()
        if newlyCoinedWord[text!] == nil {
            resultLabel.text = "\(text!)가 존재하지 않습니다."
        } else {
            resultLabel.text = newlyCoinedWord[text!]
        }
    }
}
