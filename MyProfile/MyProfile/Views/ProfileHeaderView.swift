//
//  ProfileHeaderView.swift
//  MyProfile
//
//  Created by azoffoli on 19/02/22.
//

import SwiftUI

struct ProfileHeaderView: View {
        
    var body: some View {
        VStack(spacing: stackSpacingDefault) {
            Image("avatar")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: imageSizeDefault.width, height: imageSizeDefault.height)
                .cornerRadius(cornerRadiusImage)
                .padding(.top, paddingDefault)
            
            TitleText(title: "Alessandro Zoffoli")
            Spacer()
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
