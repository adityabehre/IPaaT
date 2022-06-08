//
//  TabView.swift
//  IPaaT
//
//  Created by InfernoBlaster8 on 9/6/21.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            LessonsView()
                .tabItem {
                    Text("Lessons")
                    Image(systemName: "book")
                }
            MotivPicsView()
                .tabItem {
                    Text("Pictures")
                    Image(systemName: "doc.richtext")
                }
            EntertainmentView()
                .tabItem {
                    Text("Entertainment")
                    Image(systemName: "play.square.fill")
                }
        }
        .accentColor(Color(red: 0.0, green: 0.75, blue: 1.0, opacity: 1.0))
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .preferredColorScheme(.dark)
    }
}
