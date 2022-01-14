//
//  ContentView.swift
//  Colors
//
//  Created by administrator on 14/01/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var red: Double = 0
    @State private var green: Double = 0
    @State private var blue: Double = 0
    
    var body: some View {
        VStack{
            Text("Red")
                .foregroundColor(.red)
            CustemSlider(value: $red, color: .red)
            
            Text("Green")
                .foregroundColor(.green)
            CustemSlider(value: $green, color: .green)
            
            Text("Blue")
                .foregroundColor(.blue)
            CustemSlider(value: $blue, color: .blue)
            
            Text("Reslt:")
            Rectangle()
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(Color(red: red, green: green, blue: blue))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CustemSlider: View {
    
    @Binding var value: Double
    var color: Color
    
    var body: some View {
        Slider(value: $value, in: 0...1)
            .accentColor(color)
            .padding()
    }
}
