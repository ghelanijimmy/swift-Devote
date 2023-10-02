//
//  HideKeyboardExtension.swift
//  Devote
//
//  Created by Jimmy Ghelani on 2023-10-01.
//

import SwiftUI

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
