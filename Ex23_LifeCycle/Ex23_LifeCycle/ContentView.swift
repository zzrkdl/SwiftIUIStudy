//
//  ContentView.swift
//  Ex23_LifeCycle
//
//  Created by 김성진 on 2022/08/15.
//

import SwiftUI

struct ContentView: View {
    //SwiftUI 2.0 : iOS 14.0 부터는 새로운 기능 ScenePhase 기능을 제공합니다.
    @Environment(\.scenePhase) var scenePhase
    init() {
        print("ContentView init")
    }

    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: DetailView()) {
                    Text("Detail View")
                        .onChange(of: scenePhase) { newPhase in
                            if newPhase == .inactive {
                                print("inactive")
                            }
                            else if newPhase == .active {
                                print("active")
                            }
                            else if newPhase == .background {
                                print("background")
                            }
                        }
                }
            }
            .onAppear {
                print("ContentView onAppear")
            }
            .onDisappear {
                print("ContentView onDisappear ")
            }
            
        }
    }
}

struct DetailView : View {
    init() {
        print("DetailView init")
    }
    var body: some View{
        VStack {
            Text("Detail View")
        }
        .onAppear {
            print("DetailView onAppear")
        }
        .onDisappear {
            print("DetailView onDisappear")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
