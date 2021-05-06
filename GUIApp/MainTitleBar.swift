//
//  MainTitleBar.swift
//  GUIApp
//
//  Created by Cynthia Anderson on 4/15/21.
//

import SwiftUI

struct MainTitleBar: View {
    var body: some View {
      
      Text("OzGuitarWorks")
         .navigationTitle("OzGuitarWorks")
         .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
         .navigationBarItems(leading:
               Button(action:{}){      Image(systemName: "wifi")
                      .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
               }//button
                             
         )//bar item
         .navigationBarItems(trailing:
               Button(action:{}){      Image(systemName: "square.and.arrow.down.fill")
                      .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
               }//button
                             
         )//bar item
    }//body
   
}//view

struct MainTitleBar_Previews: PreviewProvider {
    static var previews: some View {
        MainTitleBar()
    }
}
