//
//  TAPDetailView.swift
//  IPaaT
//
//  Created by InfernoBlaster8 on 9/6/21.
//

import SwiftUI

struct TAPDetailView: View {
    var body: some View {
        ScrollView {
            VStack {
                VStack (spacing: 16){
                    Text("The Truth About Progress")
                        .font(.title)
                        .fontWeight(.bold)
                    Text("How does progress work?")
                }
                .foregroundColor(.white)
                .padding()
                .background(LinearGradient(gradient: Gradient(colors: [Color(red: 0.16, green: 0.20, blue: 0.75), Color(red: 0.57, green: 0.17, blue: 0.50), Color(red: 0.84, green: 0.66, blue: 0.33)]), startPoint: .bottomLeading, endPoint: .topTrailing))
                .cornerRadius(15)
                VStack (alignment: .leading, spacing: 16){
                    Text("About This Lesson")
                        .fontWeight(.medium)
                        .font(.title2)
                    Text("For any journey, there is progress. Life itself is full of progress. We are always striving to be our best selves. However, there is a phenomenon not many know as to how we are able to climb up this ladder of life. Often, for those who don't know the hidden truth, they get frustrated and stop progressing towards their goals. However, we are teenagers and are preparing ourselves for the many things that will come our way, so it is imperative that we learn the secret. This lesson will go over an essential on the nature of progress. Enjoy!")
                }
                .padding(.all)
            }
        }
    }
}

struct TAPDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TAPDetailView()
    }
}
