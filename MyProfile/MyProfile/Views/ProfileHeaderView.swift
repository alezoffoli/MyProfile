//
//  ProfileHeaderView.swift
//  MyProfile
//
//  Created by azoffoli on 19/02/22.
//

import SwiftUI

struct ProfileHeaderView: View {
        
    var body: some View {
        VStack(spacing: defaultStackSpacing) {
            Image("avatar")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: defaultImageSize.width, height: defaultImageSize.height)
                .cornerRadius(cornerRadiusImage)
                .padding(.top, defaultPadding)
            
            Text("Alessandro Zoffoli")
                .fontWeight(.semibold)
                .foregroundColor(colorDeepPrimary)
                .font(.system(size: 28))
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
