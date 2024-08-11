//
//  InformationTextView.swift
//  SwiftUIProject
//
//  Created by Julian Marzabal on 14/07/2024.
//

import SwiftUI

struct InformationTextView: View {
    let text:String
    var body: some View {
        VStack {
            Text(text)
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
        }.frame(maxWidth: .infinity,maxHeight: .infinity)
            //.background(.backgroundComponent)
    }
}

#Preview {
    InformationTextView(text: "Hola")
}
