//
//  ContentView.swift
//  Ex15_StateBinding
//
//  Created by 김성진 on 2022/08/11.
//

import SwiftUI

struct ContentView: View {
    @State var sharedData : String = "init Value"
    var body: some View {
        VStack{
            Text("Shared Data : \(self.sharedData)")
            // $를 붙이면, Binding된 데이타를 전달할 수 있다.
            CustomButton1(sharedData: self.$sharedData)
            CustomButton2(sharedData: self.$sharedData)
        }
    }
}

struct CustomButton1 : View {
    @Binding var sharedData : String
    
    var body: some View{
        Button {
            self.sharedData = "Button1 Clicked"
        } label: {
            Text("Button1")
        }

    }
}

struct CustomButton2 : View {
    @Binding var sharedData : String
   
    var body: some View{
        Button {
            self.sharedData = "Button2 Clicked"
        } label: {
            Text("Button2")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
