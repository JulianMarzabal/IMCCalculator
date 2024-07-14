//
//  IMCView.swift
//  SwiftUIProject
//
//  Created by Julian Marzabal on 14/07/2024.
//

import SwiftUI

struct IMCView: View {
    @State var gender:Int = 0
    @State var selectedHeight:Double = 160
    @State var age:Int = 18
    @State var weight:Int = 80
    
    var body: some View {
        VStack
        {
            HStack{
                
                ToggleButtonView(text: "Hombre", imageName: "heart.fill", gender: 0, selectedGender: $gender)
                ToggleButtonView(text: "Mujer", imageName: "star.fill", gender: 1, selectedGender: $gender)
            }//.frame(maxWidth: .infinity,maxHeight: .infinity)
                .padding(.bottom,10)
                .background(.backgroundApp)
            
            HeightCalculatorView(selectedHeight: $selectedHeight)
            
            HStack{
                CounterButtonView(text: "Edad", age: $age)
                CounterButtonView(text: "Peso", age: $weight)
            }.frame(maxWidth: .infinity,maxHeight: .infinity)
                
                .background(.backgroundApp)
            
            IMCCalculateButtonView()

        }.frame(maxWidth: .infinity,maxHeight: .infinity).background(.backgroundApp)
            .navigationBarBackButtonHidden()
          
        
            
        
                

            
    }
}


#Preview {
    IMCView()
    //ToggleButton(text: "Aris", imageName: "heart.fill", index: 0)
}
