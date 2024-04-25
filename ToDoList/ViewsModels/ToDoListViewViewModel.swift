//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Luis Gutierrez on 15/04/24.
//
import FirebaseFirestore
import Foundation
import FirebaseAuth

///ViewModel For List Of Items View
///Primary tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    
    /// Delete to do list item 
    /// - Parameter id: id item to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
