//
//  TaskListView.swift
//  TaskList
//
//  Created by Revive on 1/5/22.
//

import SwiftUI

struct TaskListView: View {
    var body: some View {
        // TODO: Show NoTaskView if zero tasks available
        
        List {
            ForEach(testData) { data in
                TaskListRowView(title: data.title)
            }
        }
        .navigationTitle("Tasks")
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}
