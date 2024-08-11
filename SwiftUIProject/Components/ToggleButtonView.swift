//
//  ToggleButtonView.swift
//  SwiftUIProject
//
//  Created by Julian Marzabal on 14/07/2024.
//

import SwiftUI

struct ToggleButtonView:View {
    let text:String
    let imageName:String
    let gender:Int
    @Binding var selectedGender:Int
    
   
    
    var body: some View {
        VStack {
            let color = (gender == selectedGender) ? Color.backgroundComponentSelected : Color.backgroundComponent
            Button {
                selectedGender = gender
                
            } label: {
                VStack {
                    Image(systemName: imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 100)
                        .foregroundColor(.white)
                    InformationTextView(text: text)
                        
                        
                }.frame(maxWidth: .infinity,maxHeight: .infinity).background(color)
                
            }
        }
        .background(.backgroundComponent)

    }
        
    
    
}


struct ToggleButtonView_Previews: PreviewProvider {
    @State static var gender: Int = 0
    
    static var previews: some View {
        ToggleButtonView(text: "Hombre", imageName: "heart.fill", gender: 0, selectedGender: $gender)
    }
}

/*#Preview {
    
    ToggleButtonView(text: "Hombre", imageName: "heart.fill", gender: 0, selectedGender: $gender)
}
 */

