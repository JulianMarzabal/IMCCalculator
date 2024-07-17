//
//  IMCResultView.swift
//  SwiftUIProject
//
//  Created by Julian Marzabal on 16/07/2024.
//

import SwiftUI

struct IMCResultView: View {
    let userWeight:Double
    let userHeight:Double
    var body: some View {
        VStack {
            
            Text("Tu resultado").font(.title)
                .bold()
                .foregroundStyle(.white)
            let result = calculate(weight: userWeight, height: userHeight)
            let information = getImcResult(result: result)
            InformationResultView(result: result, title:information.0 , description: information.1, color: information.2)
            
            
            
        }.frame(maxWidth: .infinity,maxHeight: .infinity).background(.backgroundApp)
    }
}
func calculate(weight:Double, height:Double) -> Double {
    let result = weight/((height/100)*(height/100))
    
    return result
}
func getImcResult(result:Double) -> (String,String,Color) {
    let title:String
    let description:String
    let color:Color
    
    switch result {
    case 0.00...19.99:
        title = "Peso bajo"
        description = "Estas por debajo del peso recomendado según el IMC"
        color = Color.yellow
    case 20.00...24.99:
        title = "Peso normal"
        description = "Estás en el peso recomendado según el IMC"
        color = Color.green
    case 25.00...29.99:
        title = "Sobre peso"
        description = "Estas por encima del peso recomendado según el IMC"
        color = Color.orange
    case 30.00...100:
        title = "Obesidad"
        description = "Estás muy por encima del peso recomendado segun el IMC"
        color = Color.red
    default:
        title = "ERROR"
        description = "Ha ocurrido un error"
        color = Color.red
    }
    return (title,description,color)
    
}



#Preview {
    IMCResultView(userWeight: 80, userHeight: 190)
}
