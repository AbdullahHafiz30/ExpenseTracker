//
//  AuthButton.swift
//  ExpanseTracker
//
//  Created by Rawan on 12/10/1446 AH.
//


import SwiftUI

/// A custom authentication button used for log in and sign up screens.
/// The button supports both filled and outlined styles based on the `isFilled` flag.
struct AuthButton: View {
    //MARK: - Variables
    let label: String
    let isFilled: Bool
    @EnvironmentObject var themeManager: ThemeManager
    
    //MARK: - View
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .fill(isFilled ? themeManager.textColor : Color.clear)
                .frame(width: 350, height: 50)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(themeManager.textColor, lineWidth: isFilled ? 0 : 1)
                )
            
            Text(label)
                .foregroundColor(isFilled ? themeManager.backgroundColor : .black)
                .bold()
        }
    }
}
