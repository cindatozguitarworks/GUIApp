//
//  GuiPickupButton.swift
//  GUIApp
//
//  Created by Cynthia Anderson on 4/16/21.
//

import SwiftUI

struct GuiPickupButton: View {
  
      let backgroundColor: Color
      let iconName: String
      let text: String
      
       var body: some View {
         HStack{
         //   Spacer()
            Image(systemName: iconName)
            Text(text)
         //   Spacer()
         }
         .font(.title2)
         .padding(12)
         .background(backgroundColor)
         .foregroundColor(.white)
       //  .cornerRadius(5)
         .padding(.horizontal, 20)
         .padding(.top,10)
   
   }
  }


struct GuiPickupButton_Previews: PreviewProvider {
    static var previews: some View {
      GuiPickupButton(backgroundColor: .guiGray, iconName: "rectangle.offset.topleft.fill", text: "Pickup")
    }
}
