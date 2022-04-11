//
//  TaskUserDefaults.swift
//  task-list
//
//  Created by Emerson.Novais on 11/04/22.
//

import UIKit

class TaskUserDefaults {
    
    let keyCode = "listTask"
    var tasks: [String] = []
    
    func remove(index: Int) {
        /* recovery tasks */
        tasks = list()
        
        /* remove tasks */
        tasks.remove(at: index)
        UserDefaults.standard.set(tasks, forKey: keyCode)
    }
    
    func save(task: String) {
        
        /* recovery tasks */
        tasks = list()
        
        /* add tasks */
        tasks.append(task)
        UserDefaults.standard.set(tasks, forKey: keyCode)
    }
    
    func list() -> Array<String> {
        let data = UserDefaults.standard.object(forKey: keyCode)
        
        if data != nil {
            return data as! Array<String>
        } else {
            return []
        }
    }
}
