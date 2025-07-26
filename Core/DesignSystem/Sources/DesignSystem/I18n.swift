//
//  File.swift
//  DesignSystem
//
//  Created by Ashish Mohite on 26/07/25.
//
import Foundation

// This struct will be our central point for all localization tasks.
public struct I18n { // A common abbreviation for 'Localization'

    // This is the public function that any other module can call.
    // It takes a key and returns the properly localized string.
    public static func string(for key: String.LocalizationValue) -> String {
        // Because this code is RUNNING INSIDE the DesignSystem module,
        // 'bundle: .module' correctly refers to the DesignSystem's bundle,
        // where our String Catalog lives.
        return String(localized: key, bundle: .module)
    }
}
