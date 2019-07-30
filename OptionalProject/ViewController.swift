//
//  ViewController.swift
//  OptionalProject
//
//  Created by 星みちる on 2019/07/24.
//  Copyright © 2019 星みちる. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func did(_ sender: UIButton) {
        performSegue(withIdentifier: "Next", sender:textView.text)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! NextViewController
        
        //文字が入力されていたら、文字を渡して
        //から文字の場合はｎｉｌを次の画面に渡す
        let text = sender as! String
        if text == "" {
            nextVC.value = nil
        }else{
            nextVC.value = text
        }
    }
    
}

