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
                Styles.DetailText("Software Engineer")
                Spacer()
                Styles.DetailText("Available for work")
            }
            .padding(20)
            
            Rectangle()
                .fill(colorAccentPrimary.opacity(Styles.getOpacity(false)))
                .frame(width: .infinity, height: 1, alignment: .center)
                .padding([.leading, .trailing], paddingDefault)
                .offset(y: -20)
            
            Spacer()
            
            Styles.DetailText("This project was created for the whole purpose of studying SwiftUI", isOpaque: false)
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
