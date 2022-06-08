//
//  MusicPView.swift
//  IPaaT
//
//  Created by InfernoBlaster8 on 10/15/21.
//

import SwiftUI

struct MusicPView: View {
    var body: some View {
            Text("Music")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding(.all, 35.0)
                .background(LinearGradient(gradient: Gradient(colors: [Color(red: 0.87, green: 0.11, blue: 0.41), Color(red: 0.16, green: 0.22, blue: 0.69)]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(15)
    }
}

struct MusicPView_Previews: PreviewProvider {
    static var previews: some View {
        MusicPView()
    }
}
