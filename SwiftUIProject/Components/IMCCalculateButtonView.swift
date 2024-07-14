//
//  IMCCalculateButtonView.swift
//  SwiftUIProject
//
//  Created by Julian Marzabal on 14/07/2024.
//

import SwiftUI

struct IMCCalculateButtonView: View {
    var body: some View {
        NavigationStack {
            NavigationLink(destination: {}) {
                Text("Calcular").font(.title)
                    .bold()
                    .foregroundStyle(.purple)
                    .frame(maxWidth: .infinity,maxHeight: 100)
                    .background(.backgroundComponent)
            }
        }
    }
}

#Preview {
    IMCCalculateButtonView()
}
