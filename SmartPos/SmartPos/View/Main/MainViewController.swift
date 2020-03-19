//
//  MainViewController.swift
//  SmartPos
//
//  Created by Stephen Cao on 18/3/20.
//  Copyright © 2020 Stephen Cao. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var menuView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupMenuFunctionButtonLayout()
    }
    
    private func setupMenuFunctionButtonLayout(){
        let menuAreaWidth = UIScreen.screenWidth() - 10
        let buttonWidth = (menuAreaWidth - 3 * POSCommon.margin) / 4
        let buttonheight = (menuAreaWidth / 2 - POSCommon.margin) / 2
        print()
        for i in 0..<8{
            let newButton = SCMenuFunctionButton.newFunctionButton()
            menuView.addSubview(newButton)
            let x = CGFloat(i % 4) * (buttonWidth + POSCommon.margin)
            let y = CGFloat(i < 4 ? 0 : 1) * (buttonheight + POSCommon.margin)
    
            newButton.frame = CGRect(
                x: x,
                y: y,
                width: buttonWidth,
                height: buttonheight)
        }
    }
}
