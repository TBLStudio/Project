//: Playground - noun: a place where people can play

import UIKit
import QuartzCore


let containerImageView = UIView(frame: CGRect(x: 0, y: 0, width: 500, height: 500))
containerImageView.backgroundColor = UIColor.whiteColor()

let cornerRadius: CGFloat = 250

//containerImageView.layer.cornerRadius = cornerRadius

let layer: CALayer = containerImageView.layer
layer.shadowOffset = CGSizeMake(10, 10)
layer.shadowColor = UIColor.greenColor().CGColor
layer.shadowRadius = 4.0
layer.shadowOpacity = 0.8
layer.shadowPath = UIBezierPath(roundedRect: layer.bounds, cornerRadius: 4.0).CGPath


//containerImageView.layer.cornerRadius = cornerRadius
//containerImageView.layer.shadowOffset = CGSizeMake(50, 50)
//containerImageView.layer.shadowOpacity = 0.8
//containerImageView.layer.shadowRadius = cornerRadius
//containerImageView.layer.shadowColor = UIColor.redColor().CGColor
//containerImageView.layer.shadowPath = UIBezierPath(roundedRect: containerImageView.bounds, cornerRadius: cornerRadius).CGPath


containerImageView