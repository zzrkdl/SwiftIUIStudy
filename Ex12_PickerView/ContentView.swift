//
//  ContentView.swift
//  Ex12_PickerView
//
//  Created by 김성진 on 2022/08/10.
//

import SwiftUI

struct ContentView: View {
    @State private var nameIndex : Int = 0
    
    var names : Array<String> =  ["tom","john","hana","peter"]
    
    var body: some View {
        VStack {
            NavigationView {
                Form {
                    Section {
                        Picker(selection: self.$nameIndex, label:
                        Text("Names")) {
                            ForEach(0 ..< names.count) {
                                Text(self.names[$0]).tag($0)
                            }
                        }
                        //iOS 14.0부터 지원
                        .pickerStyle(SegmentedPickerStyle())
                    }
                }.navigationBarTitle(Text("Names"))
            }
            Text("Picker Selected: \(nameIndex)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
