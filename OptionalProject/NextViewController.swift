//
//  NextViewController.swift
//  OptionalProject
//
//  Created by 星みちる on 2019/07/24.
//  Copyright © 2019 星みちる. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
   
    //nilを入れることができる
    var value:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(value)
        
        
        //変数valueがnilなら、「nilです」と表示する
        if let text = value{

        //変数valueがnil以外の時、変数textに値が入ります
        label.text = text
        }else{
            //変数valueがnilの時
            label.text = "nilです"
        }
    

   

}
}
