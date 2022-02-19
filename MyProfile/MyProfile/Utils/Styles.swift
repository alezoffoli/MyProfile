//
//  Styles.swift
//  MyProfile
//
//  Created by azoffoli on 19/02/22.
//

import SwiftUI

func TitleText(_ title: String) -> some View {
    Text(title)
        .fontWeight(.semibold)
        .foregroundColor(colorDeepPrimary)
        .font(.system(size: fontSizeBig))
        .multilineTextAlignment(.center)
}

func DetailText(_ title: String) -> some View {
    return Text(title)
        .fontWeight(.light)
        .foregroundColor(colorDeepSecondary)
        .font(.system(size: fontSizeRegular))
        .multilineTextAlignment(.center)
}
