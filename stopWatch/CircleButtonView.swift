//
//  CircleButtonView.swift
//  stopWatch
//
//  Created by Ong Eason on 3/11/2023.
//

import SwiftUI

struct CircleButtonView: View {
    
    let buttonColor: Color
    let label: String
    let labelColor: Color
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(buttonColor)
                .frame(width: 100)
            
            Circle()
                .foregroundColor(.black)
                .frame(width: 93)
            
            Circle()
                .foregroundColor(buttonColor)
                .frame(width: 89)
            
            Text(label)
                .font(.title2)
                .foregroundStyle(labelColor)
        }    }
}

struct CircleButtonView_Previews : PreviewProvider {
    static var previews: some View {
        CircleButtonView(
            buttonColor: .gray,
            label: "Reset",
            labelColor: .white
        )
    }
}

