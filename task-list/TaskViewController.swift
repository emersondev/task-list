//
//  TaskViewController.swift
//  task-list
//
//  Created by Emerson.Novais on 11/04/22.
//

import UIKit

class TaskViewController: UITableViewController {
    
    var tasks: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCell.EditingStyle.delete {
            let task = TaskUserDefaults()
            task.remove(index: indexPath.row)
            updateTasks()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        updateTasks()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "taskCell", for: indexPath)
        
        cell.textLabel?.text = tasks[ indexPath.row ]
        return cell
    }
    
    func updateTasks() {
        let task = TaskUserDefaults()
        tasks = task.list()
        tableView.reloadData()
    }
    
    
}
