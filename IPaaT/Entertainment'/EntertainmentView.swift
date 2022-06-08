//
//  EntertainmentView.swift
//  IPaaT
//
//  Created by InfernoBlaster8 on 10/15/21.
//

import SwiftUI

struct EntertainmentView: View {
    var body: some View {
        NavigationView{
            VStack(alignment: .center, spacing: 50) {
                Spacer()
                NavigationLink(destination: MusicPlayerView()){
                        MusicPView()
                }
                Spacer()
                NavigationLink(destination: BubblePopView()){
                        GameView()
                }
                Spacer()
            }
            .navigationTitle("Entertainment")
        }
    }
}

struct EntertainmentView_Previews: PreviewProvider {
    static var previews: some View {
        EntertainmentView()
    }
}
