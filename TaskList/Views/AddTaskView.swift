//
//  AddTaskView.swift
//  TaskList
//
//  Created by Revive on 1/7/22.
//

import SwiftUI

struct AddTaskView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @EnvironmentObject var taskListViewModel: TaskListViewModel
    @State var textFieldText: String = ""
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text("Add a new task 📝")
                .font(.title)
                .fontWeight(.bold)
                .padding(.vertical, 40)
            
            TextField("e.g. Clean the house", text: $textFieldText)
                .font(.subheadline)
                .padding()
                .background(
                    Color(UIColor.systemGray5)
                )
                .cornerRadius(10)
            
            Button {
                saveButtonPressed()
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Save".uppercased())
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        Color.theme.primaryAccentColor
                            .cornerRadius(10)
                    )
            }

            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    // MARK: AddTaskView functions
    func saveButtonPressed() {
        taskListViewModel.addTask(title: textFieldText)
    }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddTaskView()
        }
    }
}
