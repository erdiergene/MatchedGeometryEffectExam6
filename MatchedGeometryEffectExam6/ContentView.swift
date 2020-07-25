//
//  ContentView.swift
//  MatchedGeometryEffectExam6
//
//  Created by Erdi Ergene on 19.07.2020.
//  Copyright © 2020 Erdi Ergene. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    @State var progress : CGFloat = 0
    @Namespace var nameSpace
    
    var body: some View {
        VStack {
            Spacer()
            VStack (spacing:35){
            HStack(spacing:15) {
                Image("r5").resizable().frame(width: self.show ? 250 : 50, height:  self.show ? 250 : 50)
                    .padding(.top, self.show ? 35 : 0)
                if !self.show {
                    VStack(alignment:.leading,spacing:5){
                        Text("You Need To Calm Down")
                        Text("Taylor Swift").foregroundColor(.red)
                    }
                    .matchedGeometryEffect(id: "Details", in: self.nameSpace)
                    
                    
                    
                    Spacer()
                    
                    
                    Button(action: {
                        
                    },label:{
                        Image(systemName: "play.fill").font(.title).foregroundColor(.black )
                            .matchedGeometryEffect(id: "play", in: self.nameSpace)
                    })
                }
              
            }
                
                if self.show{
                   // Spacer()
                    
                    VStack(alignment:.center,spacing:5){
                        Text("You Need To Calm Down")
                        Text("Taylor Swift").foregroundColor(.red)
                    }
                    .matchedGeometryEffect(id: "Details", in: self.nameSpace)
                    
                    Slider(value:self.$progress)
                    
                    HStack {
                        Button(action: {
                            
                        },label:{
                            Image(systemName: "backward.fill").font(.title).foregroundColor(.black )
                        })
                        
                        
                        Spacer()


                        Button(action: {
                            
                        },label:{
                            Image(systemName: "play.fill").font(.title).foregroundColor(.black )   .matchedGeometryEffect(id: "play", in: self.nameSpace)
                        })
                        
                        Spacer()
                        
                        Button(action: {
                            
                        },label:{
                            Image(systemName: "forward.fill").font(.title).foregroundColor(.black )
                        })

                    }.padding(.horizontal, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    
                    
                    Spacer()
                  
                    
                    
                  
                }
                
            }.padding(.all,10)
            .background(Color.white.shadow(radius: 3))
        }.background(Color.black.opacity(0.06)).onTapGesture {
            
            withAnimation(Animation.easeOut(duration: 0.4)){
                self.show.toggle()
            }
            //View expand
        }

        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
