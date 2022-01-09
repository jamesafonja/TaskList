//
//  TaskListView.swift
//  TaskList
//
//  Created by Revive on 1/5/22.
//

import SwiftUI

struct TaskListView: View {
    @EnvironmentObject var taskListViewModel: TaskListViewModel
    
    var body: some View {
        // TODO: Show NoTaskView if zero tasks available
        ZStack {
            if taskListViewModel.tasks.isEmpty {
                NoTasksView()
                    .transition(AnyTransition.opacity.animation(.easeIn))
            } else {
                List {
                    ForEach(taskListViewModel.tasks) { data in
                        TaskListRowView(title: data.title)
                    }
                }
                .listStyle(PlainListStyle())
            }
        }
        .navigationTitle("Tasks 🕗")
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TaskListView()
        }
        .environmentObject(TaskListViewModel())
    }
}
