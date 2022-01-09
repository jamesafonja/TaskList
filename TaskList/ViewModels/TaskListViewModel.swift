//
//  TaskListViewModel.swift
//  TaskList
//
//  Created by Revive on 1/8/22.
//

import Foundation

// MARK: - TaskListViewModel
class TaskListViewModel: ObservableObject {
    // MARK: Properties
    @Published var tasks: [Task] = [] {
        didSet {
            saveTasks()
        }
    }
    private let tasksKey = "tasksKey"

    // MARK: Initialization
    init() {
        // Get tasks on initialization...
        getTasks()
    }
    
    // MARK: CRUD functions
    func getTasks() {
        guard
            let data = UserDefaults.standard.data(forKey: tasksKey),
            let savedTasks = try? JSONDecoder().decode([Task].self, from: data)
        else { return }
        
        self.tasks.append(contentsOf: savedTasks)
    }
    
    func addTask(title: String) {
        let newTask = Task(title: title, isCompleted: false)
        tasks.append(newTask)
    }
    
    func deleteTask(indexSet: IndexSet) {
        tasks.remove(atOffsets: indexSet)
    }
    
    func moveTask(from: IndexSet, to: Int) {
        tasks.move(fromOffsets: from, toOffset: to)
    }
    
    func saveTasks() {
        guard let encodedData = try? JSONEncoder().encode(tasks) else { return }
        UserDefaults.standard.set(encodedData, forKey: tasksKey)
    }
}
