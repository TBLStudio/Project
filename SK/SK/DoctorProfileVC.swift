//
//  DoctorProfileVC.swift
//  SK
//
//  Created by Ngo Thai on 5/3/16.
//  Copyright © 2016 Thái Bô Lão. All rights reserved.
//

import UIKit
import QuartzCore

class DoctorProfileVC: BaseViewController {
    
    @IBOutlet var imgAvatar: UIImageView!
    
    @IBOutlet var lblName: UILabel!
    
    @IBOutlet var lblNote: UILabel!
    
    @IBOutlet var containerImageView: UIView!
    
    @IBOutlet weak var btnCall: UIButton!
    
    @IBOutlet weak var btnMessage: UIButton!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: "DoctorProfileVC", bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Bác Sỹ"
        navigationItem.leftBarButtonItem?.tintColor = UIColor.whiteColor()
        view.backgroundColor = UIColor.whiteColor()
        self.addLeftNavigationItem(LeftBarButtonStyle.Back)
        

    }
    override func viewDidLayoutSubviews() {
        let screenSize: CGRect = UIScreen.mainScreen().bounds
        let cornerRadius = 0.3333 * 0.5 * screenSize.width
        containerImageView.layer.shadowOffset = CGSizeMake(0.5, 0.5)
        containerImageView.layer.shadowOpacity = 0.8
        containerImageView.layer.shadowRadius = 3
        containerImageView.layer.cornerRadius = cornerRadius
        containerImageView.layer.shadowColor = UIColor.blackColor().CGColor
        
        imgAvatar.layer.cornerRadius = cornerRadius
        imgAvatar.layer.masksToBounds = true
        imgAvatar.clipsToBounds = true
        imgAvatar.frame = containerImageView.bounds
        
        btnCall.layer.cornerRadius = 5
        btnMessage.layer.cornerRadius = 5
        
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
