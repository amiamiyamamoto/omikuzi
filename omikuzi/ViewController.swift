//
//  ViewController.swift
//  omikuzi
//
//  Created by s247 on 2017/11/19.
//  Copyright © 2017年 ami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    
    //前の画面から戻った時に、フィールドの値を初期化する
    @IBAction func restart(_ segue: UIStoryboardSegue) {
        nameField.text = ""
        ageField.text = ""
    }
    
    //名前のテキストフィールドに文字が入力されるたびにユーザデフォルトに保存する
    @IBAction func nameFieldAction(_ sender: Any) {
        let ud = UserDefaults.standard
        if let name = nameField.text {
            ud.set(name, forKey: "name")
            ud.synchronize()
        }
    }
    
    //年齢のテキストフィールドに文字が入力されるたびにユーザデフォルトに保存する
    @IBAction func ageFieldAction(_ sender: Any) {
        let ud = UserDefaults.standard
        if let age = ageField.text {
            ud.set(age, forKey: "age")
            ud.synchronize()
        }
    }
    
    
    //次の画面に名前を渡す処理
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let omikuziController = segue.destination as! OmikuziViewController
        
        //名前を渡す
        if let name = nameField.text {
            omikuziController.name = name
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let ud = UserDefaults.standard
        let name = ud.string(forKey: "name")
        if let name = name {
            nameField.text = name
        }
        let age = ud.string(forKey: "age")
        if let age = age {
            ageField.text = age
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

