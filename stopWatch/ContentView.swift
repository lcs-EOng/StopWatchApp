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
                
                Spacer()
                
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
                    
                    Group{
                        HStack{
                            Text("Lap 5")
                            Spacer()
                            Text("00:00.98")
                        }
                        HStack{
                            Text("Lap 4")
                                .foregroundStyle(Color("Dark Red"))
                            Spacer()
                            Text("00:04.08")
                                .foregroundStyle(Color(("Dark Red")))
                        }
                        HStack{
                            Text("Lap 3")
                                .foregroundStyle(Color("Green"))
                            Spacer()
                            Text("00:00.96")
                                .foregroundStyle(Color("Green"))
                        }
                        HStack{
                            Text("Lap 2")
                            Spacer()
                            Text("00:02.76")
                        }
                        HStack{
                            Text("Lap 1")
                            Spacer()
                            Text("00:01.16")
                        }
                    }
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                }
                .frame(height: 300)
                .listStyle(.plain)
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
        
        
        
        
    }
    //Change the accent color for the currently active tab item
    .accentColor(.orange)
    .preferredColorScheme(.dark)
}
