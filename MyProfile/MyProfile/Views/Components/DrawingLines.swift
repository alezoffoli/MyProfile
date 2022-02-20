//
//  DrawingLines.swift
//  MyProfile
//
//  Created by azoffoli on 19/02/22.
//

import SwiftUI

struct HorizontalLine: View {
    
    var body: some View {
        Rectangle()
            .fill(colorAccentPrimary.opacity(Accessibility.getOpacity(true)))
            .frame(width: 120, height: 1, alignment: .center) // TODO: Get from GeometryReadeer
            .padding([.leading, .trailing], paddingLine)
    }
}

struct VerticalLine: View {
    
    var body: some View {
        Rectangle()
            .fill(colorAccentPrimary.opacity(Accessibility.getOpacity(true)))
            .frame(width: 1, height: 20, alignment: .center)
            .padding([.leading, .trailing], paddingDefault)
    }
}
