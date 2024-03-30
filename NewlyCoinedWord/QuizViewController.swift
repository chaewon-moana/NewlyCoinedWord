//
//  QuixViewController.swift
//  FirstApp
//
//  Created by cho on 12/28/23.
//

import UIKit

class QuizViewController: UIViewController {
    
    @IBOutlet var searchTextField: UITextField!
    @IBOutlet var searchButton: UIButton!
    
    @IBOutlet var backgroundImage: UIImageView!
    @IBOutlet var resultLabel: UILabel!
    
    @IBOutlet var firstButton: UIButton!
    @IBOutlet var secondButton: UIButton!
    @IBOutlet var thirdButton: UIButton!
    @IBOutlet var forthbutton: UIButton!
    @IBOutlet var fifthbutton: UIButton!
    @IBOutlet var sixthbutton: UIButton!
    
    let newWords : [String] = ["얼죽아", "내또출", "꾸안꾸", "슬세권", "복세편살", "할매니얼"]
    let newWordsdesc : [String] = ["'얼어 죽어도 아이스커피'의 줄임말",
                                   "'내일 또 출근'의 줄임말",
                                   "'꾸민 듯 안 꾸민 듯'의 줄임말",
                                   "슬리퍼처럼 편한 복장으로 다닐 수 있는 범위의 생활권역을 지칭",
    "'복잡한 세상 편하게 살자'의 준말",
    "할머니와 밀레니얼을 합친 신조어. 할머니 문화를 좋아하고 따라 하는 소비 트렌드를 지칭"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.tintColor = .white
        
        backgroundImage.image = .wordLogo
        backgroundImage.contentMode = .scaleAspectFill
        searchTextField.backgroundColor = .white
        searchTextField.textColor = .black
        searchTextField.layer.borderColor = UIColor.black.cgColor
        searchTextField.layer.borderWidth = 1
        resultLabel.text = ""
        
        searchButton.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        searchButton.setTitle("", for: .normal)
        searchButton.backgroundColor = .black
        searchButton.setTitleColor(.black, for: .normal)
        
        resultLabel.textColor = .black
        resultLabel.numberOfLines = 0
        
        setButtonAttribute(firstButton, 0)
        setButtonAttribute(secondButton, 1)
        setButtonAttribute(thirdButton, 2)
        setButtonAttribute(forthbutton, 3)
        setButtonAttribute(fifthbutton, 4)
        setButtonAttribute(sixthbutton, 5)
    }
    
    func setButtonAttribute(_ button: UIButton, _ index: Int) {
        button.backgroundColor = .white
        button.setTitle(newWords[index], for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 8
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.invalidateIntrinsicContentSize()
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        searchTextField.text = sender.currentTitle
    }
    
    @IBAction func searchButtonTapped(_ sender: UIButton) {
        backgroundImage.image = .background
        let tmp = searchTextField.text ?? "내또출"
        resultLabel.text = newWordsdesc[newWords.firstIndex(of: tmp) ?? 0]
    }
 
    @IBAction func searchTextFieldDone(_ sender: UITextField) {
        backgroundImage.image = .background
        let tmp = searchTextField.text ?? "내또출"
        resultLabel.text = newWordsdesc[newWords.firstIndex(of: tmp) ?? 0]
    }
    
    @IBAction func tapGestureTapped(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
}

