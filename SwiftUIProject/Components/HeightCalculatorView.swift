//
//  HeightCalculatorView.swift
//  SwiftUIProject
//
//  Created by Julian Marzabal on 14/07/2024.
//

import SwiftUI

struct HeightCalculatorView: View {
    @Binding var selectedHeight:Double
    var body: some View {
        VStack {
            TitleTextView(text: "Altura")
            InformationTextView(text: "\(Int(selectedHeight)) cm")
            Slider(value:$selectedHeight ,in:100...220,step: 1 ).accentColor(.purple).padding(.horizontal,16)
            
        }.frame(maxWidth: .infinity,maxHeight: .infinity).background(.backgroundComponent)
    }
}

struct HeightCalculator_Previews: PreviewProvider {
    @State static var selectedHeight: Double = 190
    
    static var previews: some View {
        HeightCalculatorView(selectedHeight: $selectedHeight)
    }
}
