//
//  ContentView.swift
//  SwiftUIProject
//
//  Created by Julian Marzabal on 07/07/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack {
                NavigationLink(destination:IMCView())  {
                    Text("IMC Calculator")
                }
            }
        }



    }
}
                                       
#Preview {
    ContentView()
}
