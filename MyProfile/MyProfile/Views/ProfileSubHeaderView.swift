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
            Styles.DetailText("Software Engineer")
                .frame(maxWidth: .infinity)
            Spacer()
            Styles.VerticalLine()
            Spacer()
            Styles.DetailText("Available for work")
                .frame(maxWidth: .infinity)
        }
    }
}

struct ProfileSubHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSubHeaderView()
    }
}
