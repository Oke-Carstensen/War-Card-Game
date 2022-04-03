//
//  ContentView.swift
//  test
//
//  Created by Oke Carstensen on 17.01.22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    
    
    var body: some View {
        
        ZStack{
            
            Image("background")
                .ignoresSafeArea()
            
            VStack {
               Spacer()
                Image("logo-1")
                Spacer()
                
                HStack(spacing: 60.0) {
                               Image(playerCard)
                               Image(cpuCard)
                               
                           }
                Spacer()
                Button {
                    
                    // Generate a random number between 2-14
                  
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    // Update the cards
                    // Update the score
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    if (playerRand > cpuRand) {
                        playerScore += 1
                    }
                    else if (cpuRand > playerRand) {
                        cpuScore += 1
                    }
                  
                 
                    
                } label: {
                    Image("dealbutton")
                }

                
                Spacer()
                HStack(spacing: 90.0) {
                          
                           VStack(spacing: 30.0) {
                               Text("Player")
                                   .font(.title3)
                                   .foregroundColor(Color.white)
                                
                               Text(String(playerScore))
                                   .font(.largeTitle)
                                   .foregroundColor(Color.white)
                                   
                       }
                          
                           VStack(spacing: 30.0) {
                               Text("CPU")
                                   .font(.title3)
                                   .foregroundColor(Color.white)
                                   
                                 
                               Text(String(cpuScore))
                                   .font(.largeTitle)
                                   .foregroundColor(Color.white)
                                   
                               
                       }
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
