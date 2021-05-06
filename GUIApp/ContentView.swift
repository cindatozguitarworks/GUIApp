//
//  ContentView.swift
//  GUIApp
//
//  Created by Cynthia Anderson on 3/26/21.
//

import SwiftUI

extension LinearGradient {
    init(_ colors: Color...) {
        self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}

struct SimpleButtonStyle: ButtonStyle {
   
   
    func makeBody(configuration: Self.Configuration) -> some View {
      
        configuration.label
         .padding(.horizontal, 30)
         .contentShape(Rectangle())
         .background(
            Group{
               if configuration.isPressed {
                  Rectangle()
                        .fill(Color.guiGray)
                   
                     .overlay(Rectangle()
                                 .stroke(Color.guiDarkGray, lineWidth: 4)
                                 .blur(radius: 4)
                                 .offset(x: 2, y: 2)
                                 .mask(Rectangle().fill(LinearGradient(Color.black,Color.clear)))
                     )
                     .overlay(Rectangle()
                                 .stroke(Color.guiWhite, lineWidth: 8)
                                 .blur(radius: 4)
                                 .offset(x: -2, y: -2)
                                 .mask(Rectangle().fill(LinearGradient(Color.clear,Color.black)))
                     )
               }else {
                  Rectangle()
                        .fill(Color.guiGray)
                        .shadow(color: Color.black.opacity(0.2), radius:10, x: 10, y: 10)
                        .shadow(color: Color.white.opacity(0.7), radius:10, x: -5, y: -5)
               }//if
               
            }//Group
               )//background
               
               
      
      
    }
}

struct ContentView: View {
   @State var showPresetPage: Bool = false
   
    var body: some View {
  
      
  VStack{
   
  // Section{
      HStack {
      Button(action:{}){      Image(systemName: "wifi")
      }
             .font(.largeTitle)
         
     Spacer()
         
         
   Button(action:{}){      Image(systemName: "square.and.arrow.down.fill")
      .font(.largeTitle)
   }
   }//Hstack
   
  // HStack{
      Text("OzGuitarWorks")
      //   .navigationTitle("OzGuitarWorks")
         .font(.largeTitle)
         .bold()
      Image("Guitar1")
// }//hstack
 
      ZStack{
        
         RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(Color.guiBackgroundGray)
            .frame(width: 300, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .shadow(color: Color.black.opacity(0.2),radius: 10, x: 10, y:10)
            .shadow(color: Color.white.opacity(0.7),radius: 10, x: -5, y:-5)
         
         VStack {
            Spacer()
           // Image("Guitar1")
            
         Button(action: {
          //  SetUpOne()
         }) {
             Image("GuitarSmall")
         }
         .buttonStyle(SimpleButtonStyle())
            
         Spacer()
            
         Button(action: {
          //  SetUpOne()
         }) {
               Image("GuitarSmall")
         }.buttonStyle(SimpleButtonStyle())
            
            Spacer()
      }//vstack
         
  }//zstack
  
   }//vstack
   .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

  }//body
  
}//view


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
