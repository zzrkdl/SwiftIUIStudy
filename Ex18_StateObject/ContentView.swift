//
//  ContentView.swift
//  Ex18_StateObject
//
//  Created by 김성진 on 2022/08/13.
//
//  @Stagte @Binding
//  struct 사이의 값을 공유할 때 사용한다

//  @ObservedObject @ObservableObject
//  class와 struct 사이의 값을 공유(전달) 할 때 사용한다.

//  @StateObject 는 ObservableObject를 인스턴스화를 하고 observable object 내에
//  @Published 속성으로 선언된 프로퍼티의 값이 변할 때 뷰를 업데이트 합니다.
//  특징: 뷰의 라이프 싸이클에 의존하지 않습니다.
//  버전: SwiftUI2(IOS14에서 추가된 기능)부터 사용가능합니다.

import SwiftUI
import Foundation   // 클래스를 사용하기위해

class Counter : ObservableObject {
    
    @Published var count : Int = 0
    
    init() {
        
    }
    
    func add() {
        self.count += 1
    }
}

struct CounterView : View {
    
    //@ObservedObject var counter : Counter   //뷰가 새로 생성되면서, 가지고 있던 값이 초기화되어짐.
    @StateObject var counter : Counter          //뷰가 새로 생성되어도, 기존에 있던 값을 유지한다.
    var body: some View {
        HStack {
            Text("\(counter.count)")
            Button {
                self.counter.add()
            } label: {
                Text("Add")
            }

        }
        .padding()
        .frame(maxWidth: .infinity)
    }
    
}


struct ContentView: View {
    @State private var isChanged : Bool = false
    var body: some View {
        VStack {
            CounterView(counter: Counter())
                .background(isChanged ? Color.red : Color.green)
                .padding()
            Button {
                self.isChanged.toggle()
            } label: {
                Text("Change")
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
