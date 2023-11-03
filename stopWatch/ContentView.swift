//
//  ContentView.swift
//  stopWatch
//
//  Created by Ong Eason on 3/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            //First Layer (background)
            Color.black
                .ignoresSafeArea()
            
            
            //Second layer (rest of interface)
            VStack {
                Text("00:09.96")
                    .font(Font.system(size: 90))
                    .fontWeight(.thin)
                    .foregroundStyle(.white)
                ZStack{
                    Circle()
                        .foregroundColor(.gray)
                        .frame(width: 100)
                    
                    Circle()
                        .foregroundColor(.black)
                        .frame(width: 93)
                    
                    Circle()
                        .foregroundColor(.gray)
                        .frame(width: 89)
                    Text("Reset")
                        .foregroundStyle(.white)
                        .font(.title2)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
