//
//  TitleText.swift
//  MyProfile
//
//  Created by azoffoli on 19/02/22.
//

import SwiftUI

struct TitleText: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .fontWeight(.semibold)
            .foregroundColor(colorDeepPrimary)
            .font(.system(size: fontSizeBig))
            .multilineTextAlignment(.center)
    }
}
