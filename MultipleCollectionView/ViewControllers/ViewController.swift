//
//  ViewController.swift
//  MultipleCollectionView
//
//  Created by Sumayya Siddiqui on 09/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    var images: [String] = ["Fruits", "Organic", "Bakery", "Supermarket", "Fruits", "Organic", "Bakery", "Supermarket"]
        
    
    @IBOutlet weak var roundCollView: UICollectionView!
    @IBOutlet var rectangleCollView: UICollectionView!
    @IBOutlet var squareCollView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}



extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if (collectionView == roundCollView) {
            let cell = roundCollView.dequeueReusableCell(withReuseIdentifier: "RoundCVC", for: indexPath) as! RoundCVC
            cell.myImgOne.image = UIImage(named: images[indexPath.row])
            cell.myImgOne.layer.cornerRadius = cell.frame.size.height/2
            return cell
        } else if (collectionView == rectangleCollView){
            let cell = rectangleCollView.dequeueReusableCell(withReuseIdentifier: "rectangleCVC", for: indexPath) as! rectangleCVC
            cell.myImgTwo.image = UIImage(named: images[indexPath.row])
//            cell.layer.cornerRadius = 8
            return cell
        }else {
            let cell = squareCollView.dequeueReusableCell(withReuseIdentifier: "SquareCVC", for: indexPath) as! SquareCVC
            cell.myImgThree.image = UIImage(named: images[indexPath.row])
            //            cell.layer.cornerRadius = 8
            return cell
        
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if (collectionView == roundCollView) {
            return CGSize(width: 100, height: 100)

        } else if (collectionView == rectangleCollView){
            return CGSize(width: 374, height: 200)
        }else {
            return CGSize(width: 160, height: 200)

        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if (collectionView == roundCollView){
            return UIEdgeInsets(top: 0, left: 10.0, bottom: 0, right: 10.0)
        } else if (collectionView == rectangleCollView){
            return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        } else {
            return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)

        }
    }
    
    
}

