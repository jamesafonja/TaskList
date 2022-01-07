//
//  TaskListViewModel.swift
//  TaskList
//
//  Created by Revive on 1/6/22.
//

import Foundation

// MARK: - TaskListViewModel
class TaskListViewModel: ObservableObject {
    // MARK : Properties
    @Published var tasks: [Task] = []
    private let tasksKey = "tasksKey"
    
    // MARK : Initialization
    init() {
        saveTasks()
    }
    
    // MARK : CRUD functions
    func getTasks() {
        guard
            let data = UserDefaults.standard.data(forKey: tasksKey),
            let savedTasks = try? JSONDecoder().decode([Task].self, from: data)
        else { return }
        
        self.tasks.append(contentsOf: savedTasks)
    }
    
    func saveTasks() {
        guard let encodedData = try? JSONEncoder().encode(tasks) else { return }
        UserDefaults.standard.set(encodedData, forKey: tasksKey)
    }
    
    func moveTasks() {
        
    }
    
    func deleteTasks() {
        
    }
    
}
