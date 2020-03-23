//
//  MainViewController.swift
//  SmartPos
//
//  Created by Stephen Cao on 18/3/20.
//  Copyright © 2020 Stephen Cao. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    private let iconNameArray = ["reservation","tableService","quickService",
    "phoneOrder","menuSetup","dailyReport","attendanceRecord","logout"]

    @IBOutlet weak var menuView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupMenuFunctionButtonLayout()
    }
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        return UIInterfaceOrientationMask.landscape
    }
    
    private func setupMenuFunctionButtonLayout(){
        guard let path = Bundle.main.path(forResource: "menuInfo", ofType: "plist"),
              let dict = NSDictionary(contentsOfFile: path),
            let icons = dict["icons"] as? [[String: String]] else{
            return
        }
        let menuAreaWidth = UIScreen.screenWidth() / 2
        let marginGap = POSCommon.margin 
        let buttonWidth = (menuAreaWidth - 3 * marginGap) / 4
        let buttonheight = (menuAreaWidth / 2 - marginGap) / 2
        print()
        for i in 0..<8{
            let newButton = SCMenuFunctionButton.newFunctionButton()
            newButton.setIconButtonBackgroundImage(with: icons[i]["image"] ?? "")
            newButton.setIconTitle(with: icons[i]["name"])
            menuView.addSubview(newButton)
            let x = CGFloat(i % 4) * (buttonWidth + marginGap)
            let y = CGFloat(i < 4 ? 0 : 1) * (buttonheight + marginGap)
    
            newButton.frame = CGRect(
                x: x,
                y: y,
                width: buttonWidth,
                height: buttonheight)
        }
    }
}
