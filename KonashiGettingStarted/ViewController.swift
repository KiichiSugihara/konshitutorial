//
//  ViewController.swift
//  KonashiGettingStarted
//
//  Created by Kiichi  on 2018/12/26.
//  Copyright © 2018 Kiichi Sugihara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func konashiFind(_ sender: Any) {
        Konashi.find()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        Konashi.shared().readyHandler = {
            //Set pin mode to ourput
            Konashi.pinMode(KonashiDigitalIOPin.LED2,mode:KonashiPinMode.output)
            //Make LED2 glow
            Konashi.digitalWrite(KonashiDigitalIOPin.LED2, value: KonashiLevel.high)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated
    }


}

