//
//  Games.swift
//  IPaaT
//
//  Created by InfernoBlaster8 on 9/4/21.
//

import SwiftUI

struct GameView: View {
    var body: some View {
        Text("Bubble Pop")
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding(.all, 30.0)
            .background(LinearGradient(gradient: Gradient(colors: [Color(red: 0.02, green: 0.12, blue: 0.09), Color(red: 0.09, green: 0.63, blue: 0.52)]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(15)
    }
}


struct Games_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
            .preferredColorScheme(.dark)
    }
}
