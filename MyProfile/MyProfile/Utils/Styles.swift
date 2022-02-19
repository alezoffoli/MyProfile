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
    
    static func VerticalLine() -> some View {
        return Rectangle()
            .fill(colorAccentPrimary.opacity(Styles.getOpacity(false)))
            .frame(width: 1, height: 20, alignment: .center)
            .padding([.leading, .trailing], paddingDefault)
    }
    
    static func HorizontalLine() -> some View {
        return Rectangle()
            .fill(colorAccentPrimary.opacity(Styles.getOpacity(false)))
            .frame(width: .infinity, height: 1, alignment: .center)
            .padding([.leading, .trailing], paddingDefault)
    }
    
    static func getOpacity(_ isOpaque: Bool) -> CGFloat {
        
        // Account for user accessibility options
        if reduceTransparency {
            return 1.0
        }
        
        return isOpaque ? 1.0 : 0.5
    }
}
