//
//  SetUpTwo.swift
//  GUIApp
//
//  Created by Cynthia Anderson on 4/14/21.
//

import SwiftUI

struct SetUpTwo: View {

   @State private var lowerMainJack = "Mag Pup + Piezos"
      let lowerMain = ["Mag Pup + Piezos", "Mag Pickups"]
   
   @State private var lowerStereoRight = "Acoustic Piezo"
      let lowerStereo = ["Acoustic Piezo" ,"Bridge pop", "Xtra pup signal"]
   @State private var acousticPiezos = false  //toggle
   
      var body: some View {
         VStack{
            Text("Settings 2")
              .bold()
              .font(.title)
            
            Spacer()
            
      Section{
                 Text("Lower Main Jack (tip)")
                  .bold()
         Picker ( "", selection: $lowerMainJack) {
                          ForEach(lowerMain, id: \.self) {
                                             Text($0)  }
                          }//for
                    .pickerStyle(SegmentedPickerStyle())
                   .padding(.horizontal)
            
            Spacer()
            
       Text("Lower Stereo Right Channel")
             .bold()
       Picker ( "", selection: $lowerStereoRight) {
                     ForEach(lowerStereo, id: \.self) {
                                        Text($0)  }
                     }//for
               .pickerStyle(SegmentedPickerStyle())
              .padding(.horizontal)
   
       Spacer()
            
          // Section{
      Text("Upper Stereo Right Channel")
                  .bold()
      HStack{
         Toggle("Acoustic Piezos", isOn: $acousticPiezos)
               .toggleStyle(SwitchToggleStyle())
               .padding(.horizontal)
           }//hstack
          }//section
            
            
      Spacer()
       
        }//vstack
      }//body
}//main view

struct SetUpTwo_Previews: PreviewProvider {
    static var previews: some View {
        SetUpTwo()
    }
}
