//
//  ContentView.swift
//  wars
//
//  Created by Jose Daniel on 27/11/22.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCard = "card11"
    @State private var cpuCard = "card12"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background")
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    // generate random number
                    
                    let cpuRand = Int.random(in: 2...14)
                    let playerRand = Int.random(in: 2...14)
                    
                    // change cards
                    
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // update scores
                    
                    if cpuRand > playerRand {
                        cpuScore += 1
                    } else if playerRand > cpuRand {
                        playerScore += 1
                    }
                    
                    
                }, label: {
                    Image("dealbutton")
                })
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .foregroundColor(Color.white)
                            .font(.headline)
                        
                        Text(String(playerScore))
                            .foregroundColor(Color.white)
                            .padding(.top)
                            .font(.title)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .foregroundColor(Color.white)
                            .font(.headline)
                        
                        Text(String(cpuScore))
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.top)
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
