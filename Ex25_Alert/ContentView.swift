//
//  ContentView.swift
//  Ex25_Alert
//
//  Created by 김성진 on 2022/08/16.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert1 = false
    @State private var showingAlert2 = false
    var body: some View {
        VStack {
            Button {
                self.showingAlert1 = true
            } label: {
                Text("Show Alert1")
            }
            .alert(isPresented: $showingAlert1) {
                Alert(title: Text("Title"), message: Text("알럿메시지입니다."), dismissButton: .default(Text("확인")))
            }
            
            Button {
                self.showingAlert2 = true
            } label: {
                Text("Show Alert2")
            }
            .alert(isPresented: $showingAlert2) {
                Alert(title: Text("Title"),
                      message: Text("알럿메시지입니다."),
                      primaryButton: .destructive(Text("확인"),action: {
                        print("OK tapped")
                      }),
                      secondaryButton: .cancel())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
