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
            
            HStack() {
                Styles.DetailText("Software Engineer")
                    .frame(maxWidth: .infinity)
                Spacer()
                Styles.VerticalLine()
                Spacer()
                Styles.DetailText("Available for work")
                    .frame(maxWidth: .infinity)
            }
            .padding(20)
            
            Styles.HorizontalLine()
                .offset(y: -20)
            
            Spacer()
            
            Styles.DetailText("This project was created for the sole purpose of studying SwiftUI", isOpaque: false)
                .padding()
        }
        .background(LinearGradient(colors: [colorLightPrimary, colorDeepPrimary], startPoint: .top, endPoint: .bottom))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
