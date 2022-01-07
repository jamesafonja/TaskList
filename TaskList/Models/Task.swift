//
//  Task.swift
//  TaskList
//
//  Created by Revive on 1/5/22.
//

import Foundation

struct Task: Identifiable, Codable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
}

let testData: [Task] = [
    Task(title: "Buy groceries", isCompleted: false),
    Task(title: "Do laundry", isCompleted: true),
    Task(title: "Meal prep", isCompleted: false)
]
