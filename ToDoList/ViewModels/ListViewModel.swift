//
//  ListViewModel.swift
//  ToDoList
//
//  Created by Bari Mehdi77 on 7/10/2024.
//

import Foundation


class ListViewModel {
    
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "This is the first item", isCompleted: false),
            ItemModel(title: "This is the second item", isCompleted: true),
            ItemModel(title: "This is the third item", isCompleted: true),
            ItemModel(title: "This is the fourth item", isCompleted: false),
            ItemModel(title: "This is the fifth item", isCompleted: true),
        ]
        items.append(contentsOf: newItems)
    }
    
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
}
