//
//  ViewController.swift
//  Switch lesson 2
//
//  Created by Dima on 17.06.22.
//

import UIKit

class ViewController: UIViewController {
    
    //let mySwitch = UISwitch()
    let mySwitch2 = UISwitch()
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Создали свитч
        //self.mySwitch.frame = CGRect(x: 100, y: 100, width: 0, height: 0)
        //self.view.addSubview(self.mySwitch)
        
        //on
        //self.mySwitch.setOn(true, animated: true)
        
        //Проверка
        //if self.mySwitch.isOn {
        //    print("sw on")
        //} else {
        //    print("sw off")
        //}
        
        //self.mySwitch.addTarget(self, action: #selector(switcChange(paramTarget:)), for: .valueChanged)
        
        self.mySwitch2.frame = CGRect.zero
        
        self.mySwitch2.center = self.view.center
        self.view.addSubview(self.mySwitch2)
        
        //off
        self.mySwitch2.tintColor = UIColor.green
        
        //рычажок
        self.mySwitch2.thumbTintColor = UIColor.red
        
        //on
        self.mySwitch2.onTintColor = UIColor.blue
        
        
        self.button.frame = CGRect(x: 100, y: 200, width: 200, height: 100)
        self.button.backgroundColor = UIColor.orange
        self.button.setTitle("OK", for: .normal)
        self.button.setTitle("Button push", for: .highlighted)
        
        self.view.addSubview(self.button)

        self.mySwitch2.addTarget(self, action: #selector(isOn(target:)), for: .valueChanged)
    }

    //@objc func switcChange(paramTarget: UISwitch) {
     //   print("param is =", paramTarget)
        
     //   if paramTarget.isOn {
     //       print("sw on")
      //  } else {
      //      print("sw off")
      //  }
    
   // }
    
    @objc func isOn(target: UISwitch) {
        if target.isOn {
            self.button.isUserInteractionEnabled = false
        } else {
            self.button.isUserInteractionEnabled = true
        }
    }
}

