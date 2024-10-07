//
//  ItemModel.swift
//  ToDoList
//
//  Created by Bari Mehdi77 on 7/10/2024.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
