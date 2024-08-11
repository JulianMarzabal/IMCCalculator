//
//  CounterButtonView.swift
//  SwiftUIProject
//
//  Created by Julian Marzabal on 14/07/2024.
//

import SwiftUI

struct CounterButtonView: View {
    let text:String
    @Binding var age:Int
    var body: some View {
        VStack {
            TitleTextView(text: text)
            InformationTextView(text: String(age))
            HStack {
                Button(action: {
                    if age > 0 && age <= 100 {
                        age -= 1
                    }
                   
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 70,height: 70)
                            .foregroundColor(.purple)
                        Image(systemName: "minus")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.white)
                            
                            .frame(width: 25,height: 25)
                    }
                }
                Button(action: {
                    if age > 0 && age < 100 {
                        age += 1
                    }
                    
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 70,height: 70)
                            .foregroundColor(.purple)
                        Image(systemName: "plus")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.white)
                            
                            .frame(width: 25,height: 25)
                    }
                }
            }
        }.frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(.backgroundComponent)
    }
}


struct CounterButton_Previews: PreviewProvider {
    @State static var age: Int = 25
    
    static var previews: some View {
        CounterButtonView(text: "Edad", age: $age)
    }
}

