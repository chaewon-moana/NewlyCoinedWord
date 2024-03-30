//
//  OliveyoungViewController.swift
//  NewlyCoinedWord
//
//  Created by cho on 1/1/24.
//

import UIKit

class OliveyoungViewController: UIViewController {

    
    @IBOutlet var logo: UIButton!
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var menuButton: UIButton!
    @IBOutlet var cartButton: UIButton!
    @IBOutlet var collectionButton: [UIButton]!
    @IBOutlet var textLabel: UILabel!
    @IBOutlet var mainImageView: UIImageView!
    
    @IBOutlet var image1: UIImageView!
    @IBOutlet var image2: UIImageView!
    @IBOutlet var image3: UIImageView!
    @IBOutlet var image4: UIImageView!
    @IBOutlet var image5: UIImageView!
    @IBOutlet var image6: UIImageView!
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var label4: UILabel!
    @IBOutlet var label5: UILabel!
    @IBOutlet var label6: UILabel!
    
    @IBOutlet var subImageView: UIImageView!
    @IBOutlet var subTextLabel: UILabel!
    
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var moreButton: UIButton!
    @IBOutlet var imageList: [UIImageView]!
    
    let collectionButtonNames = ["홈", "오특", "랭킹", "LUXE EDIT", "기획전", "이벤트"]
    override func viewDidLoad() {
        super.viewDidLoad()
        setAttribute()
    }
    
    func setAttribute() {
        view.tintColor = .black
        navigationController?.navigationBar.isHidden = true
        tabBarController?.tabBar.layer.borderColor = UIColor.gray.cgColor
        tabBarController?.tabBar.layer.borderWidth = 1

        setButtonWithImage(logo, title: "", image: UIImage(systemName: "heart.fill")!)
        searchBar.placeholder = "검색어를 입력해주세요"
        searchBar.tintColor = .gray
        
        setButtonWithImage(menuButton, title: "", image: UIImage(systemName: "line.3.horizontal")!)
        setButtonWithImage(cartButton, title: "", image: UIImage(systemName: "bag.fill")!)
        
        for idx in 0...collectionButton.count-1 {
            setButton(collectionButton[idx], title: collectionButtonNames[idx])
        }
        collectionButton[0].setTitleColor(.black, for: .normal)
        
        imageViewLayer(mainImageView)
        textLabel.text = "\(collectionButtonNames[0]) 뷰입니다"
        
        imageLikeButton("우먼케어", image: UIImage(systemName: "w.circle.fill")!, imageView: image1, label: label1)
        imageLikeButton("라이브", image: UIImage(systemName: "play.square")!, imageView: image2, label: label2)
        imageLikeButton("선물하기", image: UIImage(systemName: "gift.fill")!, imageView: image3, label: label3)
        imageLikeButton("세일", image: UIImage(systemName: "percent")!, imageView: image4, label: label4)
        imageLikeButton("멤버십/쿠폰", image: UIImage(systemName: "bag.circle")!, imageView: image5, label: label5)
        imageLikeButton("기프트카드", image: UIImage(systemName: "creditcard")!, imageView: image6, label: label6)
        
        imageViewLayer(subImageView)
        
        for image in imageList {
            imageViewLayer(image)
        }
        
        userNameLabel.text = "채원님을 위한 상품"
        userNameLabel.textColor = .black
        userNameLabel.textAlignment = .left
        userNameLabel.font = .systemFont(ofSize: 16)
        
        moreButton.setTitle("더보기 >", for: .normal)
        moreButton.setTitleColor(.gray, for: .normal)

    }
    
    func setButtonWithImage(_ button: UIButton, title: String, image: UIImage) {
        button.setTitle(title, for: .normal)
        button.setImage(image, for: .normal)
        button.contentMode = .scaleToFill
        button.backgroundColor = .white
    }
    
    func setButton(_ button: UIButton, title: String) {
        button.setTitle(title, for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.gray, for: .normal)
        button.setTitleColor(.black, for: .selected)
        button.titleLabel?.font = .systemFont(ofSize: 14, weight: .semibold)
    }

    func imageLikeButton(_ title: String, image: UIImage, imageView: UIImageView, label: UILabel) {
        label.text = title
        label.textColor = .gray
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 11, weight: .light)
        
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
    }
    
    func imageViewLayer(_ image: UIImageView) {
        image.layer.borderColor = UIColor.black.cgColor
        image.layer.borderWidth = 1
    }
    
    @IBAction func collectionButtonTapped(_ sender: UIButton) {
        for idx in 0...collectionButton.count-1 {
            if collectionButton[idx] == sender {
                textLabel.text = "\(collectionButtonNames[idx]) 뷰입니다"
                collectionButton[idx].setTitleColor(.black, for: .normal)
            } else {
                collectionButton[idx].setTitleColor(.gray, for: .normal)
            }
        }
    }
    
    

}
