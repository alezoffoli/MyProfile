//
//  ContentView.swift
//  MyProfile
//
//  Created by azoffoli on 19/02/22.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.openURL) var openURL
    @State var upworkAlertIsPresented: Bool = false
    
    var body: some View {
        
        VStack() {
            
            VStack() {
                ProfileHeaderView()
                    .frame(maxHeight: 180)
                ProfileSubHeaderView()
                    .padding(20)
                    .frame(maxHeight: 80)
                HorizontalLine()
                    .offset(y: -20)
            }.gesture( TapGesture().onEnded({
                upworkAlertIsPresented = true
            })
            ).alert(NSLocalizedString("You are being redirected to my Upwork profile", comment: ""), isPresented: $upworkAlertIsPresented, actions: {
                Button(NSLocalizedString("Later", comment: "")) {
                    upworkAlertIsPresented = false
                }
                Button(NSLocalizedString("Proceed", comment: "")) {
                    upworkAlertIsPresented = false
                    guard let url = URL(string: upworkProfileUrl) else {
                        return
                    }
                    openURL(url) // TODO: Move this logic and add a confirmation dialog
                }
            })
            
            Spacer()
            DetailText(title: "This project was created for the sole purpose of studying SwiftUI", hasOpacity: true)
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
