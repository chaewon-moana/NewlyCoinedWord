//
//  NaverViewController.swift
//  NewlyCoinedWord
//
//  Created by cho on 1/2/24.
//

import UIKit

class NaverViewController: UIViewController {
    
    @IBOutlet var searchTextField: UITextField!
    
    @IBOutlet var subLabel: UILabel!
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var image: UIImageView!
    
    @IBOutlet var advertiseImage: UIImageView!
    @IBOutlet var temperateImage: UIImageView!
    @IBOutlet var dustImage: UIImageView!
    @IBOutlet var blogImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBarController?.tabBar.tintColor = .black
        navigationController?.navigationBar.tintColor = .black
        searchTextField.layer.borderWidth = 1
        searchTextField.layer.borderColor = UIColor.systemGreen.cgColor
        searchTextField.layer.cornerRadius = 20
        
        subLabel.text = "새해에 놀러갈 곳을 찾는다면?"
        subLabel.textColor = .gray
        subLabel.font = .systemFont(ofSize: 12, weight: .light)
        subLabel.textAlignment = .right
        
        mainLabel.text = "30개 주제로 추천하는 멋진 공간들"
        mainLabel.textColor = .black
        mainLabel.font = .systemFont(ofSize: 15, weight: .heavy)
        mainLabel.textAlignment = .right
        
        image.image = .party
        image.contentMode = .scaleAspectFill
        
        advertiseImage.image = .advertise
        advertiseImage.contentMode = .scaleAspectFit
       
        temperateImage.image = .temperate
        temperateImage.contentMode = .scaleAspectFit
      
        dustImage.image = .dust
        dustImage.contentMode = .scaleAspectFit
        
        blogImage.image = .blog
        blogImage.contentMode = .scaleToFill
        
    }
    


    
    
    
}
