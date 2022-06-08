//
//  MusicPlayer.swift
//  IPaaT
//
//  Created by InfernoBlaster8 on 9/11/21.
//

import SwiftUI
import AVKit

struct MusicPlayer: View {
        
    @State var data : Data = .init(count: 0)
    @State var title = ""
    @State var player: AVAudioPlayer!
    @State var playing = false
    @State var width : CGFloat = 0
    @State var songs = ["Melody of Nature by GoodBMusic", "Cali by Wataboi", "Sweden by C418", "Joy of Travel by GoodBMusic", "Oogway Ascends (slowed) by Hans Zimmer"]
    @State var current = 0
    @State var finish = false
    @State var del = AVdelegate()
    
//    self.data.count == 0 ?   |    ! : UIImage(data: self.data)!
    var body: some View {
        VStack(spacing: 20){
            Image(uiImage: (UIImage(named: "iTunes"))!)
            .resizable()
            .frame(width: 250, height: 250)
                .cornerRadius(15)
            
            Text(self.songs[self.current]).font(.title).multilineTextAlignment(.center).padding(.top)
            
            ZStack(alignment: .leading) {
                Capsule().fill(Color("Music Capsule").opacity(0.18)).frame(height: 8)
                
                Capsule().fill(Color.red).frame(width: self.width, height: 8)
                    .gesture(DragGesture()
                                .onChanged({ (value) in
                                    let x = value.location.x
                                    self.width = x
                                }).onEnded({ (value) in
                                    let x = value.location.x
                                    let screen = UIScreen.main.bounds.width - 30
                                    let percent = x/screen
                                    self.player.currentTime = Double(percent) * self.player.duration
                                }))
            }
            .padding(.top)
            
            HStack(spacing: UIScreen.main.bounds.width / 5 - 30) {
                Button(action: {
                    if self.current > 0{
                        self.current -= 1
                        self.ChangeSongs()
                    }
                }) {
                    Image(systemName: "backward.fill").foregroundColor(Color(red: 0.0, green: 0.75, blue: 1.0, opacity: 1.0)).font(.title)
                }
                Button(action: {
                    self.player.currentTime -= 15
                }) {
                    Image(systemName: "gobackward.15").foregroundColor(Color(red: 0.0, green: 0.75, blue: 1.0, opacity: 1.0)).font(.title)
                }
                Button(action: {
                    if self.player.isPlaying {
                        self.player.pause()
                        self.playing = false
                    }
                    else {
                        if self.finish {
                            self.player.currentTime = 0
                            self.width = 0
                            self.finish = false
                        }
                        self.player.play()
                        self.playing = true
                    }
                }) {
                    Image(systemName: self.playing && !self.finish ? "pause.fill" : "play.fill").foregroundColor(Color(red: 0.0, green: 0.75, blue: 1.0, opacity: 1.0)).font(.title)
                }
                
                Button(action: {
                    let increase = self.player.currentTime + 15
                    
                    if increase < self.player.duration {
                        self.player.currentTime = increase
                    }
                }) {
                    Image(systemName: "goforward.15").foregroundColor(Color(red: 0.0, green: 0.75, blue: 1.0, opacity: 1.0)).font(.title)
                }
                
                Button(action: {
                    if self.songs.count - 1 != self.current {
                        self.current += 1
                        self.ChangeSongs()
                    }
                }) {
                    Image(systemName: "forward.fill").foregroundColor(Color(red: 0.0, green: 0.75, blue: 1.0, opacity: 1.0)).font(.title)
                }
            }.padding(.top,25)
            .foregroundColor(.black)
        }
        .padding()
        .onAppear{
            let url = Bundle.main.path(forResource: self.songs[self.current], ofType: "mp3")
            self.player = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: url!))
            self.player.delegate = self.del
            
            self.player.prepareToPlay()
            
            Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (_) in
                
                if self.player.isPlaying {
                    let screen = UIScreen.main.bounds.width - 30
                    let value = self.player.currentTime / self.player.duration
                    self.width = screen * CGFloat(value)
                }
            }
            NotificationCenter.default.addObserver(forName: NSNotification.Name("Finish"), object: nil, queue: .main) { (_) in
                
                self.finish = true
                
            }
        }
    }
    func ChangeSongs() {
        let url = Bundle.main.path(forResource: self.songs[self.current], ofType: "mp3")
        self.player = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: url!))
        self.player.delegate = self.del
        self.data = .init(count: 0)
        self.title = ""
        self.player.prepareToPlay()
        self.playing = true
        self.finish = false
        self.width = 0
        self.player.play()
    }
}

    class AVdelegate : NSObject, AVAudioPlayerDelegate {
        func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
            NotificationCenter.default.post(name: NSNotification.Name("Finish"), object: nil)
    }
}

struct MusicPlayer_Previews: PreviewProvider {
static var previews: some View {
    MusicPlayer()
        .preferredColorScheme(.dark)
    }
}
