//
//  POSCommon.swift
//  SmartPos
//
//  Created by Stephen Cao on 18/3/20.
//  Copyright © 2020 Stephen Cao. All rights reserved.
//

import Foundation

struct POSCommon{
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US")
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
        return formatter
    }()
    //#56baed
    static let tinColor = UIColor(displayP3Red: 86.0 / 255, green: 186.0 / 255, blue: 237.0 / 255, alpha: 1.0)
    static let barColor = UIColor(displayP3Red: 237.0 / 255, green: 237.0 / 255, blue: 237.0 / 255, alpha: 1.0)
    static let tabbarNormalColor = UIColor(displayP3Red: 128.0 / 255, green: 128.0 / 255, blue: 128.0 / 255, alpha: 1.0)
    static let navHighlightedColor = UIColor(displayP3Red: 68.0 / 255, green: 68.0 / 255, blue: 68.0 / 255, alpha: 1.0)
}
