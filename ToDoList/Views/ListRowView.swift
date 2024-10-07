//
//  ListRowView.swift
//  ToDoList
//
//  Created by Bari Mehdi77 on 4/9/2024.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel;
    
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundStyle(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 10)
    }
}


#Preview {
    ListRowView(item: ItemModel(title: "This is the first item", isCompleted: false))
}
