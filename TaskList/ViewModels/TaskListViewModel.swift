//
//  TaskListViewModel.swift
//  TaskList
//
//  Created by Revive on 1/8/22.
//

import Foundation

class TaskListViewModel: ObservableObject {
    // MARK: TaskListViewModel properties
    @Published var tasks: [Task] = []
    private let itemsKey = "itemsKey"

    // MARK: Initialization
    init() {
        // Get tasks on initialization...
        getItems()
    }
    
    // MARK: CRUD functions
    func getItems() {
        let testData: [Task] = [
            Task(title: "Buy groceries", isCompleted: false),
            Task(title: "Do laundry", isCompleted: true),
            Task(title: "Meal prep", isCompleted: false),
            Task(title: "Wash the car", isCompleted: false)
        ]
        
        tasks.append(contentsOf: testData)
    }
    
    // TODO: Add functions for adding, moving and deleting tasks

}
