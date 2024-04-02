//
//  ContentView.swift
//  Ex13_Scroll
//
//  Created by 김성진 on 2022/08/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView() {  //세로 뷰 스크롤
                VStack {
                    
                    ForEach(1..<31) { index in
                        Text("Count\(index)")
                            .font(.largeTitle)
                    }
                }
                .frame(maxWidth: .infinity)     //스크롤 시 기기 사이즈에 맞추어서 스크롤 됨
            }
            .frame(height: 200)     //스크롤 뷰 사이즈 높이
            .background(.orange)    //백그라운드 색상
            
            Divider()
            ScrollView(.horizontal, showsIndicators: false) {   //가로 뷰 스크롤
                HStack{
                    ForEach(1..<31) { index in
                        Text("Count\(index)")
                            .font(.largeTitle)
               
                    }
                }
            }
            .frame(height: 200)
            .background(.purple)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
