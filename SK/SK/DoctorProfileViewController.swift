//
//  DoctorProfileViewController.swift
//  SK
//
//  Created by Thái Bô Lão on 5/3/16.
//  Copyright © 2016 Thái Bô Lão. All rights reserved.
//

import UIKit

class DoctorProfileViewController: BaseViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        title = "Bác Sỹ"
        navigationItem.leftBarButtonItem?.tintColor = UIColor.whiteColor()
        view.backgroundColor = UIColor.whiteColor()
        self.addLeftNavigationItem(LeftBarButtonStyle.Back)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: - BarButton Event -
    override func leftNavButtonClick(sender: UIButton!) {
        print("Style: \(leftBarStyle)")
    }
    override func rightNavButtonClick(sender: UIButton!) {
        print("Style: \(rightBarStyle)")
    }
    
    
    

}


