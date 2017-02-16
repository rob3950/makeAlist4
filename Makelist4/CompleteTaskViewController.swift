//
//  CompleteTaskViewController.swift
//  Makelist4
//
//  Created by Mac User on 2/14/17.
//  Copyright © 2017 UglyFish. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    
    @IBOutlet weak var lblCompleteTask: UILabel!
    var PreviousVC = TaskViewController()
    
     var task107 = Task101 ()
  
    override func viewDidLoad() {
        super.viewDidLoad()

        if task107.important {
            lblCompleteTask.text = "😇\(task107.name)"
        } else {
            lblCompleteTask.text = task107.name
        }

        
        
    }

    @IBAction func completeButton(_ sender: Any) {
        PreviousVC.task102.remove (at:PreviousVC.selectedIndex)
        PreviousVC.TableView.reloadData()
        navigationController!.popToRootViewController(animated: true)
        
    }
}
