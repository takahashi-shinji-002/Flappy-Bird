//
//  ViewController.swift
//  Flappy Bird
//
//  Created by 高橋信次 on 2020/02/05.
//  Copyright © 2020 高橋信次. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // SkViewに型を変換する
        let skView = self.view as! SKView
        
        // FPSを表示する
        skView.showsFPS = true
        
        //  ノードの数を表示する
        skView.showsNodeCount = true
        
        // ビューと同じサイズでシーンを作成する
        let Scene = GameScene(size:skView.frame.size)
        
        //  ビューにシーンを表示する
        skView.presentScene(Scene)
    }
    
    //  Statesを消す
    override var prefersStatusBarHidden: Bool{
        get {
            return true
        }
    }
}
