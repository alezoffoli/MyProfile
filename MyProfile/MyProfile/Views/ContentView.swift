//
//  ContentView.swift
//  MyProfile
//
//  Created by azoffoli on 19/02/22.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.openURL) var openURL
    
    var body: some View {
        
        VStack() {
            
            VStack() {
                ProfileHeaderView()
                    .frame(maxHeight: 180)
                ProfileSubHeaderView()
                    .padding(20)
                    .frame(maxHeight: 80)
                Styles.HorizontalLine()
                    .offset(y: -20)
            }.gesture( TapGesture().onEnded({
                guard let url = URL(string: upworkProfileUrl) else {
                    return
                }
                openURL(url) // TODO: Move this logic and add a confirmation dialog
            })
            )
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
