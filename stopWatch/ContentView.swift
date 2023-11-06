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
                
                //Creat a circular button
                HStack{
                    CircleButtonView(buttonColor: Color("Dark Grey"), label: "Restart", labelColor: .white)
                    Spacer()
                    CircleButtonView(buttonColor: Color("Dark Green"), label: "Start", labelColor: .green)
                }
                //List of items
                List{
                    Text("1")
                    Text("2")
                    Text("3")
                    Text("4")
                    Text("5")
                }
            }
            .padding()
        }
    }
}

#Preview {
        TabView(selection: Binding.constant(3)){
        Text("World Clock")
            .tabItem {
                Image(systemName: "alarm.fill")
                Text("World Clock")
            }
        
        Text("Alarm")
            .tabItem {
                Image(systemName: "alarm.fill")
                Text("Alarm")
            }
        
        ContentView()
            .tabItem {
                Image(systemName: "stopwatch.fill")
                Text("Stopwatch")
            }
        
        Text("Timer")
            .tabItem {
                Image(systemName: "timer")
                Text("Timer")
            }
        
        //Change the accent color for the currently active tab item
            .accentColor(.orange)
            .preferredColorScheme(.dark)
        
        
    }
}
