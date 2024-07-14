//
//  TitleTextView.swift
//  SwiftUIProject
//
//  Created by Julian Marzabal on 14/07/2024.
//

import SwiftUI

struct TitleTextView: View {
    let text:String
    var body: some View {
        Text(text)
            .font(.title2)
            .foregroundColor(.gray)
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(.backgroundComponent)
    }
}
#Preview {
    TitleTextView(text: "Altura")
}
