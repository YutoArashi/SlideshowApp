//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 嵐陽一 on 2016/11/29.
//  Copyright © 2016年 yuuto.arashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // TODO: 1. タイマーで写真を自動で変える
    // TODO: 2. イメージビューをタップしたらタップしたイメージを次の画面に表示する
    // TODO: 3. オートレイアウトで画面を整える
    
    @IBOutlet weak var imageView: UIImageView!
    
    let imageNameArray = [
        "images.jpg",
        "images-1.jpg",
         ]
    
    var imageIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let imageName = imageNameArray[imageIndex]
        imageView.image = UIImage(named: imageName)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /**
     * 次のボタンが押された時
     */
    @IBAction func pushNextButton(_ sender: Any) {
        if imageIndex == imageNameArray.count - 1 {
            imageIndex = 0
        } else {
            imageIndex += 1
        }
        
        let imageName = imageNameArray[imageIndex]
        imageView.image = UIImage(named: imageName)
    }
    
    /**
     * 戻るボタンが押された時
     */
    @IBAction func pushPrevButton(_ sender: Any) {
        if imageIndex != 0 {
            imageIndex -= 1
        } else {
            imageIndex = 2
        }
        let imageName = imageNameArray[imageIndex]
        imageView.image = UIImage(named: imageName)
    }
}

