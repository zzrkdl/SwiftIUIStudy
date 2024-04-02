//
//  ContentView.swift
//  Ex05_SpacerDivider
//
//  Created by 김성진 on 2022/08/09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                Spacer()
                Color.yellow
                    .frame( height: 100)
                Spacer()    //공간을 띄어줌
                Color.red
                    .frame( height: 100)
                Spacer()
            }
            HStack{
                Spacer()
                Color.yellow
                    .frame(width:100)
                Spacer()
                Color.red
                    .frame(width:100)
                Spacer()
            }
            VStack{
                Divider()
                Color.yellow
                    .frame( height: 100)
                Divider()
                Color.red
                    .frame( height: 100)
                Divider()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
