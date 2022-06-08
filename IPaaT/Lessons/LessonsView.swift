//
//  LessonsView.swift
//  IPaaT
//
//  Created by InfernoBlaster8 on 9/4/21.
//

import SwiftUI

struct LessonsView: View {
    var body: some View {
            NavigationView {
                ScrollView (.vertical, showsIndicators: false){
                    VStack(alignment: .leading, spacing: 50) {
                        NavigationLink(destination: TAPDetailView()){
                                TAPCardView()
                        }
                        NavigationLink(destination: KYPCDetailView()){
                                KYPCCardView()
                        }
                        NavigationLink(destination: MLFPDetailView()){
                                MLFPCardView()
                        }
                        NavigationLink(destination: EDetailView()){
                                ECardView()
                        }
                        NavigationLink(destination: RFDDetailView()){
                                RFDCardView()
                        }
                        NavigationLink(destination: MOYLDetailView()){
                                MOYLCardView()
                        }
                .navigationTitle("Lessons")
                    }
            }
        }
    }
}

struct LessonsView_Previews: PreviewProvider {
    static var previews: some View {
        LessonsView()
            .preferredColorScheme(.light)
    }
}
