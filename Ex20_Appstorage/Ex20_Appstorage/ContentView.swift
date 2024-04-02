//
//  ContentView.swift
//  Ex20_Appstorage
//
//  Created by 김성진 on 2022/08/13.
//

import SwiftUI

@available(iOS 14.0, *) //iOS 14.0 이상 모든 버전에서 사용가능함
struct LoginCheck : View {
    @AppStorage("isLoggedIn") var isLoggedIn : Bool = UserDefaults.standard.bool(forKey: "isLoggedIn")
    var body : some View {
        if isLoggedIn {
            Text("로그인된 상태입니다.")
            Button {
                self.isLoggedIn = false
            } label: {
                Text("Logout")
            }

        }
        else {
            Text("로그아웃 상태입니다.")
            Button {
                self.isLoggedIn = true
            } label: {
                Text("Login")
            }

        }
    }
}

struct ContentView: View {
    var body: some View {
        LoginCheck()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
