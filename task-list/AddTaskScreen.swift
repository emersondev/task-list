//
//  AddTaskScreen.swift
//  task-list
//
//  Created by Emerson.Novais on 11/04/22.
//

import UIKit

class AddTaskScreen: UIViewController {
    
    @IBOutlet weak var addTaskField: UITextField!
    
    @IBAction func addTask(_ sender: Any) {
        
        if let textWrited = addTaskField.text {
            let task = TaskUserDefaults()
            task.save(task: textWrited)
            addTaskField.text = ""
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
