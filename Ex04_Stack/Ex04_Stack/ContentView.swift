//
//  ContentView.swift
//  Ex04_Stack
//
//  Created by 김성진 on 2022/08/08.
//
//  stack : 쌓다
import SwiftUI

struct MyTextView: View {
    var body : some View {
       Text("Hello, SwiftUI!")
            .padding() //16pixel
            .border(Color.blue, width: 3)
            .background(Color.green)
    }
}

struct ContentView: View {
    var body: some View {
    
        VStack{
        HStack {    //수평방향 (가로방향) 구조체이기 때문에 () 써도되고 생략가능
            MyTextView()
            MyTextView()
            MyTextView()
        }
        Divider()
        HStack(alignment: .center, spacing: 10) {
                MyTextView()
                MyTextView()
                MyTextView()
            }
        Divider()   //수직 수평 구분선
        VStack {    //수직방향 (세로방향)으로  묶어짐
            MyTextView()
            MyTextView()
            MyTextView()
        }
        Divider()
            ZStack{  //상하방향 정렬
            Color.yellow.edgesIgnoringSafeArea(.all)
            Color.red.frame(width: 200, height: 200)
            Color.blue.frame(width: 100, height: 100)
        }
        .padding()
        .border(Color.red,width: 3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
}
