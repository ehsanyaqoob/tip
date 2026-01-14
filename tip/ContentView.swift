//
//  ContentView.swift
//  tip
//
//  Created by Ehsan Yaqoob on 14/01/2026.
//

import SwiftUI

struct ContentView: View {
    // var for total amount
    @State var total = ""
    @State var tipPercent  = 15.0
    
    var body: some View {
        
        ZStack{
            Color(.systemMint)
                .ignoresSafeArea()
            VStack{

                VStack(alignment: .leading, spacing: 30) {
                    HStack{
                        Image(systemName: "dollarsign.circle.fill")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                            .font(.title)
                        Text("Tip Calculator")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }
                    
                    HStack{
                        Text("$")
                        TextField("Amount", text: $total)
                            .keyboardType(.decimalPad)
                    }
                    HStack{
                        Slider(value: $tipPercent, in: 1...30, step: 1.0)
                        Text("\(Int(tipPercent))")
                        Text("%")
                    }
                    if let totalNum = Double(total) {
                        let tip = totalNum * tipPercent * 0.01
                        Text("Tip Amount is: $\(tip, specifier: "%.2f")")
                    }
                    else{
                        Text("Please enter the Numeric Value for Amount.")
                    }
                }
            }
            .padding()
            .background(.white)
            .cornerRadius(30.0)
            .shadow(radius: 10.0)
            .padding()
        }
        
        }
}

#Preview {
    ContentView()
}
