//
//  UIFont+Extensions.swift
//  Food-explorer
//
//  Created by David Ferreira Lima on 05/12/24.
//

import Foundation
import UIKit

extension UIFont {
    enum RobotoWeight: String {
        case regular = "Roboto-Regular"
        case bold = "Roboto-Bold"
        case boldItalic = "Roboto-BoldItalic"
        case black = "Roboto-Black"
        case blackItalic = "Roboto-BlackItalic"
        case medium = "Roboto-Medium"
        case mediumItalic = "Roboto-MediumItalic"
        case light = "Roboto-Light"
        case lightItalic = "Roboto-LightItalic"
        case thin = "Roboto-Thin"
        case thinItalic = "Roboto-ThinItalic"
    }
    
    enum PoppinsWeight: String {
        case regular = "Poppins-Regular"
        case semiBold = "Poppins-SemiBold"
        case semiBoldItalic = "Poppins-SemiBoldItalic"
        case bold = "Poppins-Bold"
        case boldItalic = "Poppins-BoldItalic"
        case extraBold = "Poppins-ExtraBold"
        case extraBoldItalic = "Poppins-ExtraBoldItalic"
        case black = "Poppins-Black"
        case blackItalic = "Poppins-BlackItalic"
        case extraBlack = "Poppins-ExtraBlack"
        case extraBlackItalic = "Poppins-ExtraBlackItalic"
        case medium = "Poppins-Medium"
        case mediumItalic = "Poppins-MediumItalic"
        case light = "Poppins-Light"
        case lightItalic = "Poppins-LightItalic"
        case extraLight = "Poppins-ExtraLight"
        case extraLightItalic = "Poppins-ExtraLightItalic"
        case thin = "Poppins-Thin"
        case thinItalic = "Poppins-ThinItalic"
    }
    
    static func roboto(_ weight: RobotoWeight, size: CGFloat) -> UIFont {
        return UIFont(name: weight.rawValue, size: size) ?? UIFont.systemFont(ofSize: size)
    }
    
    static func poppins(_ weight: PoppinsWeight, size: CGFloat) -> UIFont {
        return UIFont(name: weight.rawValue, size: size) ?? UIFont.systemFont(ofSize: size)
    }
}
