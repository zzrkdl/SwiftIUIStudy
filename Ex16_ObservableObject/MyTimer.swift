//
//  MyTimer.swift
//  Ex16_ObservableObject
//
//  Created by 김성진 on 2022/08/11.
//
// ObservableObject 감시,감찰하다
import Foundation
class MyTimer : ObservableObject {
    
    @Published var value : Int = 0
    
    //클래스의 생성자 함수 : 클래스 생성시 딱 한번 호출됨.
    init() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.value += 1
        }
    }
}
