//
//  PrescriptionsVC.swift
//  SK
//
//  Created by Thái Bô Lão on 5/4/16.
//  Copyright © 2016 Thái Bô Lão. All rights reserved.
//

import UIKit

class PrescriptionsVC: BaseViewController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: "PrescriptionsVC", bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Đơn thuốc cúm"
        //navigationItem.leftBarButtonItem?.tintColor = UIColor.whiteColor()
        view.backgroundColor = UIColor.whiteColor()
        self.addLeftNavigationItem(LeftBarButtonStyle.Close)
        self.addRightNavigationItem(RightBarButtonStyle.Edit)

    
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
