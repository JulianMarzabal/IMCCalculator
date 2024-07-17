//
//  IMCCalculateButtonView.swift
//  SwiftUIProject
//
//  Created by Julian Marzabal on 14/07/2024.
//

import SwiftUI

struct IMCCalculateButtonView: View {
    let userWeight:Double
    let userHeight:Double
    var body: some View {
        NavigationStack {
            NavigationLink(destination: {IMCResultView(userWeight: userWeight, userHeight: userHeight)}) {
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
    IMCCalculateButtonView(userWeight: 80, userHeight: 190)
}
