//
//  OnboardingView.swift
//  FruitsPlus
//
//  Created by Abdullah Bilgin on 7/27/23.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        TabView{
            ForEach(0..<5) {item in
                FruitCardView()
            } //: LOOP
        } //: TAP
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
