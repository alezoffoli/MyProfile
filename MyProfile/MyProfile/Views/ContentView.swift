//
//  ContentView.swift
//  MyProfile
//
//  Created by azoffoli on 19/02/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            ProfileHeaderView()
                .frame(maxHeight: 180)
            
            HStack {
                DetailText("Software Engineer")
                Spacer()
                DetailText("Available for work")
            }
            .padding(20)
            
            Spacer()
            
            DetailText("This project was created for the whole purpose of studying SwiftUI")
                .padding()
        }
        .background(colorLightSecondary) //TODO: Add Gradient
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
