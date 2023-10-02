//
//  ListRowItemView.swift
//  Devote
//
//  Created by Jimmy Ghelani on 2023-10-02.
//

import SwiftUI

struct ListRowItemView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @ObservedObject var item: Item
    
    var body: some View {
        Toggle(isOn: $item.completion) {
            Text(item.task ?? "")
                .font(.system(.title2, design: .rounded))
                .fontWeight(.heavy)
                .foregroundStyle(item.completion ? .pink : .primary)
                .padding(.vertical, 12)
                .animation(.default, value: item.completion)
        } //: TOGGLE
        .toggleStyle(CheckboxStyle())
        .onReceive(item.objectWillChange, perform: { _ in
            if self.viewContext.hasChanges {
                try? self.viewContext.save()
            }
        })
    }
}

#Preview {
    let context = PersistenceController.preview.container.viewContext
    let newItem = Item(context: context)
    newItem.id = UUID()
    newItem.timestamp = Date()
    newItem.task = "Sample Task No. 1"
    newItem.completion = false
    
    do {
        try context.save()
    } catch {
        print(error)
    }

    return ListRowItemView(item: newItem)
}
