//
//  InformationResultView.swift
//  SwiftUIProject
//
//  Created by Julian Marzabal on 16/07/2024.
//

import SwiftUI

struct InformationResultView: View {
    let result:Double
    let title:String
    let description:String
    let color: Color
    var body: some View {
        VStack {
            Spacer()
            Text("\(title)")
                .foregroundStyle(color)
                .font(.title)
                .bold()
            Spacer()
            Text("\(result,specifier: "%.2f")").font(.system(size: 80))
                .bold()
                .foregroundStyle(.white)
            Spacer()
            Text("\(description)").foregroundStyle(.white)
                .font(.title2)
                .padding(.horizontal,8)
            Spacer()
            
        }.frame(maxWidth: .infinity,maxHeight: .infinity)
            .foregroundStyle(.backgroundComponent)
            .padding(16)
        
    }
}



#Preview {
    InformationResultView(result: 82.1, title: "Normal", description: "Peso normal segun imc  ", color: .red)
}
