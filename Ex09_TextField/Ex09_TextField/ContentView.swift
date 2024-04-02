//
//  ContentView.swift
//  Ex09_TextField
//
//  Created by 김성진 on 2022/08/09.
//

import SwiftUI

struct ContentView: View {
    @State private var email : String = ""
    @State private var password : String = ""
    
    var body: some View {
        VStack{
            
            VStack{
                TextField("이메일", text:self.$email)
                SecureField("비밀번호", text:self.$password)    // 입력받는 비밀번호 타입
            }
            
            Text("입력된 이메일: \(self.email)")
            Text("입력된 비밀번호: \(self.password)")

            //Form View : 컨트롤 뷰를 이쁘게 꾸며주는 뷰
            Form {
                VStack{
                    TextField("이메일", text:self.$email)
                        .keyboardType(.emailAddress) //입력받는 keyboard타입
                  
                    SecureField("비밀번호", text:self.$password)
                }
                
                Text("입력된 이메일: \(self.email)")
                Text("입력된 비밀번호: \(self.password)")

                HStack{
                    Button(action: {
                        self.hideKeyboard()
                    }) {
                        Text("입력완료")
                    }
                }
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())      //textfield를 라운드 처리해서 둥글게 표시
        }
    }
}
#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
