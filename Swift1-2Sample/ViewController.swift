//
//  ViewController.swift
//  Swift1-2Sample
//
//  Created by Kenta Akimoto on 2015/07/03.
//  Copyright (c) 2015年 KentaAkimoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var str:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        #if DEBUG
            str = "DEBUG"
            #else
            str = "ETC"
        #endif
        
        NSLog(str)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

