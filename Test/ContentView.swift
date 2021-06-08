//
//  ContentView.swift
//  Test
//
//  Created by User on 01/06/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card2"
    @State var cpuCard = "card2"
    @State var playerPoint = 0
    @State var cpuPoint = 0
    
    var body: some View {
        ZStack {
            Image("background")
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    let playerRandomCard = Int.random(in: 2...14)
                    let cpuRandomCard = Int.random(in: 2...14)
                    
                    playerCard = "card\(playerRandomCard)"
                    cpuCard = "card\(cpuRandomCard)"
                    
                    if playerRandomCard > cpuRandomCard {
                        playerPoint += 1
                    }
                    else if cpuRandomCard > playerRandomCard {
                        cpuPoint += 1
                    }
                
                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text("\(playerPoint)")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                        
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.bottom, 10.0)
                        Text("\(cpuPoint)")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
