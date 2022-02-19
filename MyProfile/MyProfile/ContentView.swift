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
            VStack(spacing: 20.0) {
                Image("avatar")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 90.0, height: 90.0)
                    .cornerRadius(8.0)
                    .padding(.top, 20.0)
                
                Text("Alessandro Zoffoli")
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 174 / 255, green: 204 / 255, blue: 165 / 255))
                    .font(.system(size: 28))
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
                .frame(maxHeight: 180)
            
            HStack {
                Text("Software Engineer")
                    .fontWeight(.light)
                    .foregroundColor(Color(red: 230 / 255, green: 203 / 255, blue: 168 / 255))
                    .frame(alignment: .leading)
                Spacer()
                Text("Available for work")
                    .fontWeight(.light)
                    .foregroundColor(Color(red: 230 / 255, green: 203 / 255, blue: 168 / 255))
                    .frame(alignment: .leading)
            }
            .padding([.leading, .trailing], 20)
            
            Spacer()
        }
        .background(Color(red: 252 / 255, green: 245 / 255, blue: 220 / 255)) //TODO: Add Gradient
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
