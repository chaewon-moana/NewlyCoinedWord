//
//  MagazineViewController.swift
//  NewlyCoinedWord
//
//  Created by cho on 1/1/24.
//

import UIKit

class MagazineViewController: UIViewController {
    
    
    @IBOutlet var mainView: UIImageView!
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var firstButton: UIButton!
    @IBOutlet var secondButton: UIButton!
    
    @IBOutlet var subImage1: UIImageView!
    @IBOutlet var subImage2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBarController?.tabBar.layer.borderColor = UIColor.gray.cgColor
        tabBarController?.tabBar.layer.borderWidth = 1
        
        view.backgroundColor = .white
        
        mainView.image = .magazineView
        
        mainLabel.text = "뉴 이어, 뉴 루틴 만들기"
        mainLabel.font = .systemFont(ofSize: 18, weight: .bold)
        
        setButtonAttribute(firstButton, title: " 새해엔 뉴-루틴 ", active: true)
        setButtonAttribute(secondButton, title: " 화장대 리뉴얼 ", active: false)
        
        subImage1.image = .magazineImage1
        subImage1.contentMode = .scaleAspectFill
        subImage1.layer.borderWidth = 1
        subImage1.layer.borderColor = UIColor.black.cgColor
        subImage2.image = .magazineImage2
        subImage2.contentMode = .scaleAspectFill
        subImage2.layer.borderWidth = 1
        subImage2.layer.borderColor = UIColor.black.cgColor
    }
    
    func setButtonAttribute(_ button: UIButton, title: String, active: Bool) {
        button.setTitle(title, for: .normal)
        button.layer.cornerRadius = 15
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.borderWidth = 1
        
        if active {
            button.backgroundColor = .black
            button.setTitleColor(.white, for: .normal)
        } else {
            button.backgroundColor = .white
            button.setTitleColor(.black, for: .normal)
        }
    }
    
   
    @IBAction func buttonTapped(_ sender: UIButton) {
        
    }
    
   
}
