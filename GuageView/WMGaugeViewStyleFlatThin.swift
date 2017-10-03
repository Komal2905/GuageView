//
//  WMGaugeViewStyleFlatThin.swift
//  GuageView
//
//  Created by komal kamble on 01/10/17.
//  Copyright © 2017 komal kamble. All rights reserved.
//

import Foundation

import UIKit

protocol WMGaugeViewStyle
{
    func drawNeedle(on layer: CALayer, in rect: CGRect)
    
    func drawFace(with context: CGContext, in rect: CGRect)
    
    func needleLayer(_ layer: CALayer, willMoveAnimated animated: Bool, duration: TimeInterval, animation: CAKeyframeAnimation) -> Bool
}


let  kNeedleWidth   : CGFloat =        0.012//0.1//0.012
let  kNeedleHeight   : CGFloat =      0.4
let  kNeedleScrewRadius  : CGFloat =   0.20//0.05

let  kCenterX   : CGFloat =          0.5
let  kCenterY    : CGFloat =          0.5

let  kNeedleColor  =        UIColor.yellow//CGRGB(255, 255, 255)//CGRGB(255, 104, 97)
let  kNeedleScrewColor   =  UIColor.cyan//CGRGB(255, 255, 255)//CGRGB(68, 84, 105)
class WMGaugeViewStyleFlatThin : WMGaugeViewStyle
{
    var needleLayer: CAShapeLayer?

    
    func drawNeedle(on layer: CALayer, in rect: CGRect)
    {
        needleLayer = CAShapeLayer()
        let needlePath = UIBezierPath()
        
        
        //FULLSCALE(x,y)    (x)*rect.size.width, (y)*rect.size.height
        
       
        
        //        [needlePath moveToPoint:CGPointMake(FULLSCALE(kCenterX - kNeedleWidth, kCenterY))];
        //        [needlePath addLineToPoint:CGPointMake(FULLSCALE(kCenterX + kNeedleWidth, kCenterY))];
        //        [needlePath addLineToPoint:CGPointMake(FULLSCALE(kCenterX, kCenterY - kNeedleHeight))];
        
        
        let startingPoint = self.FULLSCALE(x: kCenterX - kNeedleWidth, y: kCenterY, rect: rect)
        
        let secondPoint = self.FULLSCALE(x: kCenterX + kNeedleWidth, y: kCenterY, rect: rect)
        
        let thirdPoint = self.FULLSCALE(x: kCenterX, y: kCenterY - kNeedleHeight, rect: rect)
        
        needlePath.move(to:  startingPoint)
    
        needlePath.addLine(to:secondPoint )
        needlePath.addLine(to:  thirdPoint)
        needlePath.close()
       needleLayer!.path = needlePath.cgPath
        needleLayer!.backgroundColor = UIColor.clear.cgColor
        needleLayer!.fillColor = kNeedleColor.cgColor
        needleLayer!.strokeColor = kNeedleColor.cgColor
        needleLayer!.lineWidth = 1.2
        // Needle shadow
        needleLayer!.shadowColor = UIColor.black.cgColor
        needleLayer!.shadowOffset = CGSize(width: -2.0, height: -2.0)
        needleLayer!.shadowOpacity = 0.2
        needleLayer!.shadowRadius = 1.2
        layer.addSublayer(needleLayer!)
        // Screw drawing
        let screwLayer = CAShapeLayer()
        
       // CGRectMake(FULLSCALE(kCenterX - kNeedleScrewRadius, kCenterY - kNeedleScrewRadius), FULLSCALE(kNeedleScrewRadius * 2.0, kNeedleScrewRadius * 2.0));
        
        let x = (kCenterX - kNeedleScrewRadius) * rect.size.width
        let y = (kCenterY - kNeedleScrewRadius) * rect.size.height
        let width = (kNeedleScrewRadius * 2.0 ) * rect.size.width
        let height = (kNeedleScrewRadius * 2.0) * rect.size.height
        screwLayer.bounds = CGRect(x: x, y: y, width: width, height: height)
        
           // screwLayer.position = CGPointMake(FULLSCALE(kCenterX, kCenterY)
        screwLayer.position = self.FULLSCALE(x: kCenterX, y: kCenterY, rect: rect)
            //            screwLayer.path = UIBezierPath(ovalIn: screwLayer.bounds).cgPath
            screwLayer.path = UIBezierPath(ovalIn: screwLayer.bounds).cgPath
        screwLayer.fillColor = kNeedleScrewColor.cgColor
        // Screw shadow
        screwLayer.shadowColor = UIColor.black.cgColor
        screwLayer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        screwLayer.shadowOpacity = 0.2
        screwLayer.shadowRadius = 2.0
        layer.addSublayer(screwLayer)
        
    }
    
    func drawFace(with context: CGContext, in rect: CGRect)
    {
        let EXTERNAL_RING_RADIUS : CGFloat =  0.24
        let INTERNAL_RING_RADIUS : CGFloat =  0.1
        // External circle
        context.addEllipse(in: CGRect(x: kCenterX - EXTERNAL_RING_RADIUS, y: kCenterY - EXTERNAL_RING_RADIUS, width: EXTERNAL_RING_RADIUS * 2.0, height: EXTERNAL_RING_RADIUS * 2.0))
        // CGContextSetFillColorWithColor(context, CGRGB(255, 104, 97));
        //context.setFillColor(CGRGB(0o0, 255, 0o0))
        
        context.setFillColor(UIColor.brown.cgColor)
        // The Peach COlor
        context.fillPath()
        // Inner circle
        context.addEllipse(in: CGRect(x: kCenterX - INTERNAL_RING_RADIUS, y: kCenterY - INTERNAL_RING_RADIUS, width: INTERNAL_RING_RADIUS * 2.0, height: INTERNAL_RING_RADIUS * 2.0))
        // CGContextSetFillColorWithColor(context, CGRGB(242, 99, 92));// HEN
        //        context.setFillColor(CGRGB(0o0, 0o0, 0o0))
        
//        context.setFillColor(UIColor.blue.cgColor)
        context.fillPath()
        
    }
    
    func needleLayer(_ layer: CALayer, willMoveAnimated animated: Bool, duration: TimeInterval, animation: CAKeyframeAnimation) -> Bool
    {
        layer.transform =  (animation.values![0] as! CATransform3D)//(animation.values?[0] as AnyObject).caTransform3DValue ?? CATransform3D()//(animation.values![0] as! CATransform3D)//(animation.values?[0] as AnyObject).caTransform3DValue ?? CATransform3D()
        let affineTransform1: CGAffineTransform = layer.affineTransform()
        
        
        print("The animation Vlaue",animation.values,"0----->",(animation.values?[1] as AnyObject).caTransform3DValue ?? CATransform3D())
        print("affineTransform1 ",affineTransform1)
        layer.transform = (animation.values![1] as! CATransform3D)//(animation.values?[1] as AnyObject).caTransform3DValue ?? CATransform3D()//(animation.values![1] as! CATransform3D)//(animation.values?[1] as AnyObject).caTransform3DValue ?? CATransform3D()
        let affineTransform2: CGAffineTransform = layer.affineTransform()
       layer.transform = (animation.values![2] as! CATransform3D)//(animation.values?.last as AnyObject).caTransform3DValue ?? CATransform3D()//(animation.values![2] as! CATransform3D)//(animation.values?.last as AnyObject).caTransform3DValue ?? CATransform3D()
        let affineTransform3: CGAffineTransform = layer.affineTransform()
        needleLayer?.shadowOffset = CGSize(width: -2.0, height: -2.0).applying(affineTransform3)
        layer.add(animation, forKey: kCATransition)
        let animationShadowOffset = CAKeyframeAnimation(keyPath: "shadowOffset")
        animationShadowOffset.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        animationShadowOffset.isRemovedOnCompletion = true
        animationShadowOffset.duration = animated ? duration : 0.0 as? CFTimeInterval ?? CFTimeInterval()
        animationShadowOffset.values = [NSValue(cgSize: CGSize(width: -2.0, height: -2.0).applying(affineTransform1)), NSValue(cgSize: CGSize(width: -2.0, height: -2.0).applying(affineTransform2)), NSValue(cgSize: CGSize(width: -2.0, height: -2.0).applying(affineTransform3))]
        needleLayer!.add(animationShadowOffset, forKey: kCATransition)
        return true
    }
    
    
    func FULLSCALE(x : CGFloat, y: CGFloat, rect : CGRect) -> CGPoint
    {
        
        let xP = x * rect.size.width
        let yP = y * rect.size.height
     
        let point = CGPoint(x: xP, y: yP)
        return point
    }
   
}
