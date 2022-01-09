//
//  NoTasksView.swift
//  TaskList
//
//  Created by Revive on 1/7/22.
//

import SwiftUI

struct NoTasksView: View {
    @State var animate: Bool = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 40) {
                Text("No tasks to view ☹️")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("Got things to do? Click the add button to create a new task")
                    .font(.title3)
                    .padding()
                
                NavigationLink(
                    destination: AddTaskView(),
                    label: {
                        Text("Add a Task")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 55)
                            .background(
                                animate ?
                                    Color.theme.primaryAccentColor :
                                    Color.theme.secondaryAccentColor
                            )
                            .cornerRadius(10.0)
                    })
                    .padding(.horizontal, animate ? 30 : 50)
                    .shadow(
                        color: animate ?
                            Color.theme.primaryAccentColor.opacity(0.7) :
                            Color.theme.secondaryAccentColor.opacity(0.7),
                        radius: animate ? 30 : 10,
                        x: 0.0,
                        y: animate ? 50 : 30
                    )
                    .scaleEffect(animate ? 1.1 : 1.0)
                    .offset(y: animate ? -7 : 0)
            }
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimation)
        }
    }
    
    func addAnimation() {
        /* The guard statement ensures the animation only runs
            once and not every time the user visits this screen.*/
        
        guard !animate else { return }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(
                Animation
                    .easeInOut(duration: 2.0)
                    .repeatForever()
            ) {
                animate.toggle()
            }
        }
    }
}

struct NoTasksView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NoTasksView()
                .navigationTitle("Title")
        }
    }
}
