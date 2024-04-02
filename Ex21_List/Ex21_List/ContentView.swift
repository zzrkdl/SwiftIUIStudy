//
//  ContentView.swift
//  Ex21_List
//
//  Created by 김성진 on 2022/08/15.
//

import SwiftUI

//Model 구조체

struct CarMaker {
    let name: String
    let imageUrl: String
    let price: Int
}

//확장
extension CarMaker {
    //정적함수를 이용하여 모든 데이타를 가져옵니다.
    static func all() -> [CarMaker] {
        return [
            CarMaker(name: "모델S", imageUrl: "model-s", price: 1000),
            CarMaker(name: "모델3", imageUrl: "model-3", price: 2000),
            CarMaker(name: "모델X", imageUrl: "model-x", price: 3000),
            CarMaker(name: "모델Y", imageUrl: "model-y", price: 4000)
        ]
    }
}

struct ContentView: View {
    let carMakers = CarMaker.all()
    
    var body: some View {
        NavigationView {
            List(self.carMakers, id: \.name) { carMaker in
                //각 Row 에 CarMakerCell를 리턴합니다.
                //목적지의 UI를 Text로 전달합니다./
                NavigationLink(destination: CarMarkerDetail(carMaker: carMaker)) {
                    CarMakerCell(carMaker: carMaker)
                }
            }
        }
    }
}

struct CarMarkerDetail : View {
    @State var isPresent : Bool = false
    let carMaker : CarMaker
    var body: some View {
        VStack {
            Image(carMaker.imageUrl)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .onTapGesture(count: 2) {
                    self.isPresent = true
            }
            Text(carMaker.name)
        }
        .alert(isPresented: $isPresent) {
            Alert(title: Text("더블클릭"),
                  message: Text("차량가격은 : \(carMaker.price)입니다."),
                  dismissButton: .default(Text("확인"))
        )}
    }
}

struct CarMakerCell : View {
    let carMaker: CarMaker
    
    var body: some View {
        HStack {
            Spacer()
            
            Image(carMaker.imageUrl)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(16)
                .frame(width: 128, height: 96, alignment: .center)
           
            Spacer()
           
            VStack(alignment: .leading, spacing: 5) {
                Text(carMaker.name).font(.largeTitle)
                Text("\(carMaker.price)원")
            }
           
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
