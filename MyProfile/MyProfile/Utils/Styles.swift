//
//  Styles.swift
//  MyProfile
//
//  Created by azoffoli on 19/02/22.
//

import SwiftUI

struct Styles {
    
    @Environment(\.accessibilityReduceTransparency) static var reduceTransparency
    
    static func TitleText(_ title: String) -> some View {
        Text(title)
            .fontWeight(.semibold)
            .foregroundColor(colorDeepPrimary)
            .font(.system(size: fontSizeBig))
            .multilineTextAlignment(.center)
    }

    static func DetailText(_ title: String, isOpaque: Bool = true) -> some View {
        return Text(title)
            .fontWeight(.light)
            .foregroundColor(colorAccentPrimary)
            .font(.system(size: fontSizeRegular))
            .multilineTextAlignment(.center)
            .opacity(getOpacity(isOpaque))
    }
    
    static func getOpacity(_ isOpaque: Bool) -> CGFloat {
        
        // Account for user accessibility options
        if reduceTransparency {
            return 1.0
        }
        
        return isOpaque ? 1.0 : 0.5
    }
}
