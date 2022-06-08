//
//  SlideViewModel.swift
//  IPaaT
//
//  Created by InfernoBlaster8 on 12/21/21.
//

import SwiftUI

class StoryViewModel: ObservableObject{
    
    @Published var stories: [StoryBundle] = [
    
        StoryBundle(lessonName: "MLFP", stories: [
            
            Story(imageURL: "MLFP1"),
            Story(imageURL: "MLFP2"),
            Story(imageURL: "MLFP3"),
            Story(imageURL: "MLFP4"),
            Story(imageURL: "MLFP5"),
            Story(imageURL: "MLFP6"),
        ]),
        
        StoryBundle(lessonName: "E", stories: [
            
            Story(imageURL: "E1"),
            Story(imageURL: "E2"),
            Story(imageURL: "E3"),
            Story(imageURL: "E4"),
            Story(imageURL: "E5"),
            Story(imageURL: "E6"),
        ])
    ]
    
    @Published var showStory: Bool = false
    @Published var currentStory: String = ""
}
