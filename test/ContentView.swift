//
//  ContentView.swift
//  test
//
//  Created by Jesus Hector Zamora Valenzuela on 26/07/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card10"
    @State var playerScore = 0
    
    @State var cpuCard = "card5"
    @State var cpuScore = 0
    
    
    
    
    
    var body: some View {
        
        ZStack{
            Image("background")
            VStack{
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
                
                Button(action:{
                    
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    playerCard = "card"+String(playerRand)
                    cpuCard = "card"+String(cpuRand)
                    
                    if(playerRand>cpuRand){
                        playerScore+=1
                    }
                    
                    else if(cpuRand>playerRand){
                        cpuScore+=1
                    }
                  
                    
                  
                    
                },label: {
                    Image("dealbutton")
                })
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .foregroundColor(Color.white)
                            .padding(.bottom)
                        
                        Text(String(playerScore)).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(Color.white)
                    }
                    
                    Spacer()
                    VStack{
                        Text("CPU")
                            .foregroundColor(Color.white)
                            .padding(.bottom)
                        Text(String(cpuScore)).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(Color.white)
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
