//
//  BaseViewController.swift
//  SK
//
//  Created by Thái Bô Lão on 5/3/16.
//  Copyright © 2016 Thái Bô Lão. All rights reserved.
//

import UIKit

enum LeftBarButtonStyle {
    case Back
    case Close
    case Menu
    case None
}

enum RightBarButtonStyle {
    case Edit
    case Share
    case Add
    case None
}

class BaseViewController: UIViewController {
    
    //MARK: - Variable -
    var leftBarStyle: LeftBarButtonStyle = .None
    var rightBarStyle: RightBarButtonStyle! = .None

    //MARK: - Override Function -
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: - Setup NavigationBar -
    
    func setupNavigationBar() {
        self.navigationController!.navigationBar.barTintColor = Engine.navigationBarColor()
        self.navigationController!.navigationBar.titleTextAttributes = [ NSFontAttributeName: UIFont(name: "Menlo", size: 20)!, NSForegroundColorAttributeName: UIColor.whiteColor()]
    }
    func addLeftNavigationItem (style: LeftBarButtonStyle)
    {
        //Get Image with Style
        var buttonImage: UIImage!
        leftBarStyle = style
        switch style {
        case .Back:
            buttonImage = UIImage(named: "arrow_back")
        case .Close:
            buttonImage = UIImage(named: "close")
            break
        case .Menu:
            buttonImage = UIImage()
            break
        case .None:
            buttonImage = UIImage()
            break
        }
        self.navigationItem.leftBarButtonItem = nil;
        self.navigationItem.hidesBackButton = true;
        let buttonBack = UIButton(type: UIButtonType.Custom)
        buttonBack.frame = CGRectMake(0, 0, 30, 30)
        buttonBack.setImage(buttonImage, forState: UIControlState.Normal)
        buttonBack.addTarget(self, action: #selector(BaseViewController.leftNavButtonClick(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        buttonBack.imageEdgeInsets = UIEdgeInsets(top: 0, left: -15, bottom: 0, right: 15)
        let leftBarButtonItem: UIBarButtonItem = UIBarButtonItem(customView: buttonBack)
        self.navigationItem.setLeftBarButtonItem(leftBarButtonItem, animated: false)
        
    }
    
    func addRightNavigationItem (style: RightBarButtonStyle) {
        var rightButtonImage: UIImage!
        rightBarStyle = style
        switch style {
        case .Add:
            rightButtonImage = UIImage(named: "add")
        case .Edit:
            rightButtonImage = UIImage(named: "edit")
        case .Share:
            rightButtonImage = UIImage(named: "share")
        case .None:
            rightButtonImage = UIImage()
        }
        
        self.navigationItem.rightBarButtonItem = nil
        let rightButton = UIButton(type: .Custom)
        rightButton.frame = CGRectMake(0, 0, 30, 30)
        rightButton.setImage(rightButtonImage, forState: UIControlState.Normal)
        rightButton.addTarget(self, action: #selector(BaseViewController.rightNavButtonClick(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        rightButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: -15)
        let rightBarButtonItem: UIBarButtonItem = UIBarButtonItem(customView: rightButton)
        self.navigationItem.setRightBarButtonItem(rightBarButtonItem, animated: false)
        
    }
    
    func leftNavButtonClick(sender:UIButton!){}
    
    func rightNavButtonClick (sender: UIButton!){}
    
}
