//
//  SlideBundle.swift
//  IPaaT
//
//  Created by InfernoBlaster8 on 12/21/21.
//

import SwiftUI

struct StoryBundle: Identifiable{
    var id = UUID().uuidString
    var lessonName: String
    var isSeen: Bool = false
    var stories: [Story]
}

struct Story: Identifiable{
    var id = UUID().uuidString
    var imageURL: String
}
