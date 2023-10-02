//
//  CheckboxStyle.swift
//  Devote
//
//  Created by Jimmy Ghelani on 2023-10-02.
//

import SwiftUI

struct CheckboxStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        return HStack {
            Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
                .foregroundStyle(configuration.isOn ? .pink : .primary)
                .font(.system(size: 30, weight: .semibold, design: .rounded))
                .onTapGesture(perform: {
                    configuration.isOn.toggle()
                })
            
            configuration.label
        } //: HSTACK
    }
}

#Preview {
    Toggle("Placeholder label", isOn: .constant(false))
        .toggleStyle(CheckboxStyle())
        .padding()
}

#Preview("Toggled") {
    Toggle("Placeholder label", isOn: .constant(true))
        .toggleStyle(CheckboxStyle())
        .padding()
}
