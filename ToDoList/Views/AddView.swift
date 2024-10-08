//
//  AddView.swift
//  ToDoList
//
//  Created by Bari Mehdi77 on 5/9/2024.
//

import SwiftUI

struct AddView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    @State var taskTitle: String = ""
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type the task title...", text: $taskTitle)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(.black.opacity(0.15))
                    .cornerRadius(10)
                Button(action: {
                    listViewModel.addItem(title: taskTitle)
                    taskTitle = ""
                }, label: {
                    Text("Save".uppercased())
                        .frame(height: 55)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .font(.headline)
                        .foregroundStyle(Color(.white))
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(14)
        }
        .navigationTitle("Add an Item 📝")
    }
}

#Preview {
    NavigationView {
        AddView()
    }
}
