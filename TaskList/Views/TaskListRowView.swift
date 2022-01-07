//
//  TaskListRowView.swift
//  TaskList
//
//  Created by Revive on 1/5/22.
//

import SwiftUI

struct TaskListRowView: View {
    @State var title: String
    @State var isComplete: Bool = false
    
    var body: some View {
        HStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct TaskListRowView_Previews: PreviewProvider {
    @State static var title: String = "Test Title"
    @State static var isComplete: Bool = false
    
    static var previews: some View {
        TaskListRowView(title: title)
    }
}
