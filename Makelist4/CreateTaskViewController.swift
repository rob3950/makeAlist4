//
//  CreateTaskViewController.swift
//  Makelist4
//
//  Created by Mac User on 2/12/17.
//  Copyright © 2017 UglyFish. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var TaskNameTxt: UITextField!
    @IBOutlet weak var ImpSwitch: UISwitch!
    var PreviousVC = TaskViewController()
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func AddBtn(_ sender: Any) {
        
        
        let task104 = Task101()
        task104.name = TaskNameTxt.text!
        task104.important = ImpSwitch.isOn
        
        
        PreviousVC.task102.append(task104)
        PreviousVC.TableView.reloadData()
        navigationController!.popToRootViewController(animated: true)
        
        
        
        
        
    }
    
}
