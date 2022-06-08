//
//  ProgressTruthCardView.swift
//  IPaaT
//
//  Created by InfernoBlaster8 on 9/6/21.
//

import SwiftUI

struct TAPCardView: View {
    var body: some View {
        VStack (alignment: .center, spacing: 10){
            Image("TAP Stock")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(15)
                .padding(.bottom)
            Text("The Truth About Progress")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            Text("How does progress work?")
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

struct ProgressTruthCardView_Previews: PreviewProvider {
    static var previews: some View {
        TAPCardView()
    }
}
