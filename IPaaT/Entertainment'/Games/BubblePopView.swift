//
//  BubblePopView.swift
//  IPaaT
//
//  Created by InfernoBlaster8 on 9/18/21.
//

import SwiftUI
import AVFoundation

struct BubblePopView: View {
    var body: some View {
        VStack (spacing: 10) {
            ForEach(0..<10) { item in
                HStack(spacing: 5) {
                    ForEach(0..<10){ item in
                        Button(action: {
                            AudioServicesPlaySystemSound(1056)
                        }, label: {
                            Image(systemName: "sparkle")
                                .resizable()
                                .frame(width: 25, height: 50, alignment: .center)
                    })
                    }
                }
            }
        }
    }
}

struct BubblePopView_Previews: PreviewProvider {
    static var previews: some View {
        BubblePopView()
    }
}
