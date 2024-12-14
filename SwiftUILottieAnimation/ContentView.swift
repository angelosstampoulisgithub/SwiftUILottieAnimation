//
//  ContentView.swift
//  SwiftUILottieAnimation
//
//  Created by Angelos Staboulis on 7/12/24.
//

import SwiftUI

struct ContentView: View {
    @State var text: String = ""
    @State var textAddress: String = ""
    @State var textPhone: String = ""
    @State var textBottom: String = ""

    @State var finalText: String = "Βαρόσι Art Cafe"
    @State var finalAddress: String = "Τσανακλή 8, Κομοτηνή, GR 691 32"
    @State var finalPhone:String = "+30 2531 033937"
    @State var finalBottom:String = "(C) Copyright 2024 Angelos Staboulis"
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var positionText:Int = 0
    @State var positionAddress:Int = 0
    @State var positionPhone:Int = 0
    @State var positionBottom:Int = 0
    var body: some View {
        VStack {
            Text(text).font(.largeTitle).foregroundStyle(.brown)
            Text(textAddress).font(.headline).foregroundStyle(.brown)
            Text(textPhone).font(.headline).foregroundStyle(.brown)
            VStack{
                Image(.varosi).resizable().frame(width:150,height:145,alignment: .top)
                Link(destination: URL(string:"https://www.facebook.com/varosiartcafe/about/")!) {
                    Image(.facebook).resizable().frame(width:80,height:75,alignment: .top)

                }
                LottieView()
                    .frame(width:300,height:195)
                    .scaleEffect(0.4).onReceive(timer) { output in
                        if positionText < finalText.count {
                            text.append(finalText[positionText])
                        }
                        if positionAddress < finalAddress.count {
                            textAddress.append(finalAddress[positionAddress])
                        }
                        if positionPhone < finalPhone.count {
                            textPhone.append(finalPhone[positionPhone])
                        }
                        if positionBottom < finalBottom.count {
                            textBottom.append(finalBottom[positionBottom])
                        }
                        positionText = positionText + 1
                        positionAddress = positionAddress + 1
                        positionPhone = positionPhone + 1
                        positionBottom = positionBottom + 1
                    }
            }

        }
        .padding()
        ZStack{
            VStack{
                Text(textBottom).font(.headline).foregroundStyle(.brown)
            }.frame(maxWidth: .infinity,maxHeight:.infinity,alignment: .bottom)
        }
    }
}

#Preview {
    ContentView()
}
extension String {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}
