//
//  ContentView.swift
//  Ex07_Button
//
//  Created by 김성진 on 2022/08/09.
//

import SwiftUI

struct ContentView: View {
    
    func play() {
        print("play func")
    }
    
    var body: some View {
        VStack{
        Button(action: {
            print("Clicked")
        }) {
            Text("Button")
                .padding()
                .background(Color.blue)
                .foregroundColor(Color.white)
                .font(.title)
        }
        Divider()
            Button(action: {
                print("Clicked")
            }) {
                Text("Button")
                    .foregroundColor(.purple)
                    .font(.title)
                    .padding()
                    .border(Color.purple, width: 5)
            }
        Divider()
            Button(action: {
                print("Play Clicked")
                self.play()
            }) {
                Image(systemName: "play.circle")
                    .font(.largeTitle)
                    .foregroundColor(.red)
            }
        Divider()
            Button(action: {
                print("Play Clicked")
            }) {
                HStack {
                    Image(systemName: "play.circle")
                        .font(.title)
                    Text("Play")
                        .fontWeight(.semibold)
                        .font(.title)
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.red)
            .cornerRadius(40)
            }
        Divider()
            Button(action: {
                print("Play Clicked")
            }) {
                HStack {
                    Image(systemName: "play.circle")
                        .font(.title)
                    Text("Play")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .padding()
                .foregroundColor(.white)
                .background(LinearGradient(gradient: Gradient(colors: [Color.red,Color.yellow]), startPoint: .leading, endPoint: .trailing))    // 버튼 이미지 물결?
                .cornerRadius(50)
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

