//
//  BackgroundImageView.swift
//  Devote
//
//  Created by Jimmy Ghelani on 2023-10-02.
//

import SwiftUI

struct BackgroundImageView: View {
    var body: some View {
        Image(.rocket)
            .antialiased(true)
            .resizable()
            .scaledToFill()
            .ignoresSafeArea(.all)
    }
}

#Preview {
    BackgroundImageView()
}
