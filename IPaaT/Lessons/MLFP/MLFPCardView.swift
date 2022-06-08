//
//  MLFPCardView.swift
//  IPaaT
//
//  Created by InfernoBlaster8 on 9/8/21.
//

import SwiftUI

struct MLFPCardView: View {
    var body: some View {
        VStack (alignment: .center, spacing: 10){
            Image("MLFP Stock")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(15)
                .padding(.bottom)
            Text("Mutual Learning From Peers")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            Text("You are who you are with")
                .multilineTextAlignment(.center)
                .opacity(0.8)
        }
        .padding()
        .frame(width: 330, height: 430)
        .background(LinearGradient(gradient: Gradient(colors: [Color(red: 0.16, green: 0.20, blue: 0.75), Color(red: 0.57, green: 0.17, blue: 0.50), Color(red: 0.84, green: 0.66, blue: 0.33)]), startPoint: .bottomLeading, endPoint: .topTrailing))
        .cornerRadius(30)
        .foregroundColor(Color.white)
    }
}

struct MLFPCardView_Previews: PreviewProvider {
    static var previews: some View {
        MLFPCardView()
    }
}
