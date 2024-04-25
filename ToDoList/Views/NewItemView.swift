//
//  NewItemView.swift
//  ToDoList
//
//  Created by Luis Gutierrez on 18/04/24.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemsViewViewModel()
    @Binding var newItemPresented: Bool
     
    var body: some View {
        VStack {
            Text("New item")
                .font(.system(size: 32))
                .bold()
                .padding(.top, 50)
            
            Form {
                //title
                TextField("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                //Due date
                DatePicker("Due Date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
              
                //Button
                TLButton(title: "save",
                         background: .pink
                ) {
                    if viewModel.canSave {
                        viewModel.save()
                        newItemPresented = false
                    } else {
                        viewModel.showAlert = true
                    }
                }
                .padding()
            }
            .alert(isPresented: $viewModel.showAlert) {
                Alert(title: Text("Error"),
                      message: Text("Please fill in all fields and select due data that is today or newer."))
            }
        }
    }
}

#Preview {
    NewItemView(newItemPresented: Binding(get: {
        return true}, set: { _ in
            
    }))
  }

