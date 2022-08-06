//
//  ContentView.swift
//  Ex02_Preview_Darkmode
//
//  Created by 김성진 on 2022/08/05.
//

import SwiftUI

struct ContentView: View {
    //Environment 속성래퍼 : 환경설정을 읽어오는 어노테이션
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        Text("Hello, SwiftUI!")
            //기본 콘텐츠 여백
            .padding(.all, 30.0)
            // 백그라운드 색상변경
            .background(colorScheme == .light ? Color.white : Color.black)
            // 콘텐츠 색상(Text)
            .foregroundColor(colorScheme == .light ? Color.black : Color.white)
            
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            //기본(라이트)모드뷰
            ContentView()
                .environment(\.colorScheme, .light)
            //다크모드뷰
            ContentView()
                .environment(\.colorScheme, .dark)
            
            //다른 디바이스의 프리뷰도 불러와서 가능함
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
                .previewDisplayName("iPhone 12")
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
                .previewDisplayName("iPhone 12")
        }
    }
}
