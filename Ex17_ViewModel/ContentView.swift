//
//  ContentView.swift
//  Ex17_ViewModel
//
//  Created by 김성진 on 2022/08/12.
//

import SwiftUI

//MVC(Model, View, Controller) : 모델(데이타), 뷰(UI), 컨트롤(제어코드)로 화면을 구성하는 소프트웨어 UI 개발모델
//MVVM(Model, View, ViewModel) : 모델(데이타), 뷰(UI), 뷰모델(의존성이 없는 중간참조영역)

//Model     //DTO랑 유사
struct User{
    var name: String
    var age : Int
}

//ViewModel
class ContentViewMode: ObservableObject {
    @Published var hong : User = User(name: "hong", age: 30)
}

//View
struct ContentView: View {
    @ObservedObject var contentViewModel = ContentViewMode()
    var body: some View {
        VStack {
            Text("name: \(self.contentViewModel.hong.name)")
            Text("name: \(self.contentViewModel.hong.age)")
            Button {
                self.contentViewModel.hong.name = "gildong"
                self.contentViewModel.hong.age = 45
            } label: {
                Text("Change Info")
            }
        }
        .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
