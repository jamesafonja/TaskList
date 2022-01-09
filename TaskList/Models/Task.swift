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
    
    func updateCompletion() -> Task {
        /*
         To maintain immutable struct, a new Task is created and used
         to update a tasks completion. All other values of the
         task are identical.
         */
        return Task(id: id, title: title, isCompleted: !isCompleted)
    }
}

