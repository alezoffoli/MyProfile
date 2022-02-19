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
            VStack(spacing: defaultStackSpacing) {
                Image("avatar")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: defaultImageSize.width, height: defaultImageSize.height)
                    .cornerRadius(defaultPadding)
                    .padding(.top, defaultPadding)
                
                Text("Alessandro Zoffoli")
                    .fontWeight(.semibold)
                    .foregroundColor(colorDeepPrimary)
                    .font(.system(size: 28))
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
                .frame(maxHeight: 180)
            
            HStack {
                Text("Software Engineer")
                    .fontWeight(.light)
                    .foregroundColor(colorDeepSecondary)
                    .frame(alignment: .leading)
                Spacer()
                Text("Available for work")
                    .fontWeight(.light)
                    .foregroundColor(colorDeepSecondary)
                    .frame(alignment: .leading)
            }
            .padding(20)
            
            Spacer()
            
            Text("This project was created for the whole purpose of studying SwiftUI")
                .font(.system(size: 12))
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .foregroundColor(colorDeepSecondary)
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
