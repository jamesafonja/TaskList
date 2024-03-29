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
            Text(title)
                .padding(.leading, 10)
            
            Spacer()
            
            Button {
                isComplete.toggle()
            } label: {
                Image(systemName: isComplete ? "checkmark.circle" : "circle")
                    .font(.title)
                    .foregroundColor(isComplete ? .green : .red)
            }
        }
        .frame(height: 60)
        .padding(.trailing)
    }
}

struct TaskListRowView_Previews: PreviewProvider {
    @State static var title: String = "Test Title"
    @State static var isComplete: Bool = false
    
    static var previews: some View {
        TaskListRowView(title: title)
            .previewLayout(.sizeThatFits)
    }
}
