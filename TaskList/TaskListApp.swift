//
//  TaskListApp.swift
//  TaskList
//
//  Created by Revive on 1/5/22.
//

import SwiftUI

@main
struct TaskListApp: App {
    @StateObject var taskListViewModel: TaskListViewModel = TaskListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView { // NavigationView added here to avoid repetition
                NoTasksView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(taskListViewModel)
            /* ^Makes taskListViewModel available to all views in the NavigationView
             and helps avoid repetition */
        }
    }
}
