//
//  Accessibility.swift
//  MyProfile
//
//  Created by azoffoli on 19/02/22.
//

import SwiftUI

struct Accessibility {
    
    @Environment(\.accessibilityReduceTransparency) static var reduceTransparency

    static func getOpacity(_ hasOpacity: Bool) -> CGFloat {
        
        // Account for user accessibility options
        if reduceTransparency {
            return 1.0
        }
        
        return hasOpacity ? 0.5 : 1.0
    }
    
}
