//
//  TaskViewController.swift
//  Makelist4
//
//  Created by Mac User on 1/12/17.
//  Copyright © 2017 UglyFish. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var TableView: UITableView!
    
    var task102 : [Task101] = []
    var selectedIndex = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        task102 = makeTask()
        
        TableView.delegate = self
        TableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return task102.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        let task103 = task102[indexPath.row]
        if task103.important {
            cell.textLabel?.text = "😇\(task103.name)"
        } else {
            cell.textLabel?.text = task103.name
        }
        
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       selectedIndex = indexPath.row
        
        let task105 = task102[indexPath.row]
        performSegue(withIdentifier: "SelectTask", sender: task105)
    }
    
    func makeTask()-> [Task101]{
        let task1 = Task101()
        task1.name = "cheese"
        task1.important = false
        
        let task2 = Task101()
        task2.name = "paneer"
        task2.important = true
        
        let task3 = Task101()
        task3.name = "matar"
        task3.important = false
        
        return [task1,task2,task3]
        
        
        
        
    }
    
    @IBAction func PlusTab(_ sender: Any) {
        performSegue(withIdentifier: "addSegueNew", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if segue.identifier == "addSegueNew"{
        let NextVc =  segue.destination as! CreateTaskViewController
        NextVc.PreviousVC = self
        
    }
        if segue.identifier == "SelectTask" {
            let NextVc = segue.destination as! CompleteTaskViewController
            NextVc.task107 = sender as! Task101
            NextVc.PreviousVC = self
            
            
            
        }
        
}
    
}

