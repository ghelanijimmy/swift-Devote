//
//  BlankView.swift
//  Devote
//
//  Created by Jimmy Ghelani on 2023-10-02.
//

import SwiftUI

struct BlankView: View {
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(.black)
        .opacity(0.5)
        .ignoresSafeArea(.all)
    }
}

#Preview {
    BlankView()
}
