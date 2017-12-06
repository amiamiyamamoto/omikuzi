//
//  OmikuziViewController.swift
//  omikuzi
//
//  Created by s247 on 2017/11/19.
//  Copyright © 2017年 ami. All rights reserved.
//

import UIKit

class OmikuziViewController: UIViewController {
    //前のページから名前を受け取る
    var name:String? = ""
    var result:[String] = ["大吉", "中吉", "小吉", "凶"]
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            nameLabel.text = name + "さん"
        }
        //ランダムな数値0〜3
        let num = Int(arc4random_uniform(4))
        resultLabel.text = "\(result[num])です！"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    


}
