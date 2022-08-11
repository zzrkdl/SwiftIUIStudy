//
//  ContentView.swift
//  Ex14_Form
//
//  Created by 김성진 on 2022/08/11.
//

import SwiftUI

struct ContentView: View {
    @State var username : String = ""
    @State var isPrivate : Bool = true
    @State var notificationsEnabled : Bool = false
    @State private var previewIndex : Int = 0
    let previewOptions: Array<String> = ["Always","When Unlocked", "Never"]
    
    var body: some View {
        //UI 표준양식을 지원하는 뷰 - FormView
        
        NavigationView {
            Form {
                Section(header: Text("PROFILE")) {
                    TextField("Username", text: self.$username)
                    Toggle(isOn: self.$isPrivate) {
                        Text("Private Account")
                    }
                }
                
                Section(header: Text("NOTIFICATIONS")) {
                    Toggle(isOn: self.$notificationsEnabled) {
                        Text("Enabled")
                    }
                    Picker(selection: self.$previewIndex, label: Text("Show Previews")) {
                        ForEach(0 ..< previewOptions.count) { index in
                            Text(self.previewOptions[index])
                        }
                    }
                }
                Section(header: Text("ABOUT")) {
                    HStack{
                        Text("Version")
                        Spacer()
                        Text("2.0.1")
                    }
                }
                Section{
                    Button(action: {
                        print("button clicked")
                    }) {
                        Text("Reset All Settings")
                    }
                }
            }
            .navigationBarTitle("Settings")     //최상단 네비게이션 타이틀 이름
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
