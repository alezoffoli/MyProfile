//
//  ProfileSubHeaderView.swift
//  MyProfile
//
//  Created by azoffoli on 19/02/22.
//

import SwiftUI

struct ProfileSubHeaderView: View {
    
    var body: some View {
        HStack() {
            DetailText(title: "Software Engineer", hasOpacity: false)
                .frame(maxWidth: .infinity)
            Spacer()
            VerticalLine()
            Spacer()
            DetailText(title: "Available for work", hasOpacity: false)
                .frame(maxWidth: .infinity)
        }
    }
}

struct ProfileSubHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSubHeaderView()
    }
}
