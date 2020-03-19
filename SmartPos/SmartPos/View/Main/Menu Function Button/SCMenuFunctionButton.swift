//
//  SCMenuFunctionButton.swift
//  SmartPos
//
//  Created by Stephen Cao on 19/3/20.
//  Copyright © 2020 Stephen Cao. All rights reserved.
//

import UIKit

class SCMenuFunctionButton: UIButton {
    
    class func newFunctionButton()->SCMenuFunctionButton{
        let nib = UINib(nibName: "SCMenuFunctionButton", bundle: nil)
        let v = nib.instantiate(withOwner: self, options: nil)[0] as! SCMenuFunctionButton
        return v
    }
}
