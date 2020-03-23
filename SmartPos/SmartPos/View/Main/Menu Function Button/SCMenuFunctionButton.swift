//
//  SCMenuFunctionButton.swift
//  SmartPos
//
//  Created by Stephen Cao on 19/3/20.
//  Copyright © 2020 Stephen Cao. All rights reserved.
//

import UIKit
protocol SCMenuFunctionButtonDelegate: NSObjectProtocol{
    func clickIconButton(view: SCMenuFunctionButton)
}
class SCMenuFunctionButton: UIView {
    weak var delegate: SCMenuFunctionButtonDelegate?
    
    @IBOutlet weak var iconButton: UIButton!
    @IBOutlet weak var buttonLabel: UILabel!
    
    func setIconTitle(with title: String?){
        buttonLabel.text = title
    }
    func setIconButtonBackgroundImage(with imageName: String){
        iconButton.setBackgroundImage(UIImage(named: imageName), for: [])
        iconButton.setBackgroundImage(UIImage(named: imageName + "Highlighted"), for: .highlighted)
    }
    
    @IBAction func didClickIconButton(_ sender: Any) {
        delegate?.clickIconButton(view: self)
    }
    class func newFunctionButton()->SCMenuFunctionButton{
        let nib = UINib(nibName: "SCMenuFunctionButton", bundle: nil)
        let v = nib.instantiate(withOwner: self, options: nil)[0] as! SCMenuFunctionButton
        return v
    }
}
