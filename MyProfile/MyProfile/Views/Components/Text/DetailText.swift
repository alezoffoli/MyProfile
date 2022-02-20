//
//  DetailText.swift
//  MyProfile
//
//  Created by azoffoli on 19/02/22.
//

import SwiftUI

struct DetailText: View {
    
    var title: String
    var hasOpacity: Bool
    
    var body: some View {
        return Text(title)
            .fontWeight(.light)
            .foregroundColor(colorAccentPrimary)
            .font(.system(size: fontSizeRegular))
            .multilineTextAlignment(.center)
            .opacity(Accessibility.getOpacity(hasOpacity))
    }
}
