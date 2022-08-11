//
//  ContentView.swift
//  Ex16_ObservableObject
//
//  Created by 김성진 on 2022/08/11.
//

import SwiftUI
// struct 간에 데이터를 바인딩 할때는 State, binding을 사용하고
// struct 와 class 간에 데이터를 사용할 때는 ObservedObject ,Published 를 사용한다


struct ContentView: View {
   @ObservedObject var myTimer = MyTimer()
    var body: some View {
        Text("Timer : \(myTimer.value)")
            .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
