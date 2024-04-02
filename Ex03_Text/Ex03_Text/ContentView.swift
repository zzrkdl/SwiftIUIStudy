//
//  ContentView.swift
//  Ex03_Text
//
//  Created by 김성진 on 2022/08/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //문자를 화면에 출력하는 컨트롤
        Text(" 입니다!\nSwiftUI 입니다!\nSwiftUI")
            .fontWeight(.bold)  //폰트 굵기
            .foregroundColor(Color.orange)  //폰트 색상 변경
            .multilineTextAlignment(.center) //텍스트 정렬
            .frame(width: 300, height: 300) //텍스트 뷰의 크기 지정
            .padding(.all, 10.0)    //열거형의 요소는 .을찍음
            .font(.system(size: 30))//.system(size: ??) 원하는 폰트 크기 사이즈 가능
            .lineLimit(3) //text뷰 줄 개수
            .border(Color.purple, width: 6) //선 컬러 크기
            .background(Color.blue)  //백그라운드 컬러
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
