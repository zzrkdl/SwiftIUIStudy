//
//  ContentView.swift
//  Ex01_FirstApp
//
//  Created by 김성진 on 2022/08/05.
//

//SwiftUI 지원 라이브러리 임포트
import SwiftUI

// View 프로토콜 : 화면이 보이는 요소
struct ContentView: View {
    //some 예약어 : View 프로토콜 준수하는 모든 뷰에 대한 불투명 타입 허용
    var body: some View {
        Text("SwiftUI")
            .padding()
    }
}

// 미리보기 화묜 정의
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
