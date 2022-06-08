//
//  StoryView.swift
//  IPaaT
//
//  Created by InfernoBlaster8 on 12/21/21.
//

import SwiftUI

@available(iOS 15.0, *)
struct StoryView: View {
    @EnvironmentObject var storyData: StoryViewModel
    var body: some View {
        
        if storyData.showStory{
            TabView(selection: $storyData.currentStory){
                
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.black)
            .transition(.move(edge: .bottom))
        }
    }
}

//struct StoryView_Previews: PreviewProvider {
//    static var previews: some View {
//        LessonsView()
//    }
//}
