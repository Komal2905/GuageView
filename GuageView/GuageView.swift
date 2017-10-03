
//
//  GuageView.swift
//  GuageView
//
//  Created by komal kamble on 01/10/17.
//  Copyright © 2017 komal kamble. All rights reserved.
//

import Foundation
import UIKit


enum WMGaugeViewSubdivisionsAlignment : Int {
    case top
    case center
    case bottom
}
class WMGaugeView : UIView
{
    
    
    var isShowInnerBackground = false
    {
        didSet
        {
            invalidateBackground()
        }
    }
    var isShowInnerRim = false
    {
        didSet
        {
            invalidateBackground()
        }
    }
    var innerRimWidth: CGFloat = 0.0
    {
        didSet
        {
            //invalidateBackground()
        }
    }
    var innerRimBorderWidth: CGFloat = 0.0
    {
        didSet
        {
           // invalidateBackground()
        }
    }
    var scalePosition: CGFloat = 0.0
    {
        didSet
        {
            invalidateBackground()
        }
    }
    var scaleStartAngle: CGFloat = 30.0//30.00.0
    {
        didSet
        {
            invalidateBackground()
        }
    }
    var scaleEndAngle: CGFloat = 180.0//0.0
    {
        didSet
        {
            invalidateBackground()
        }
    }
    var scaleDivisions: CGFloat = 0.0
    {
        didSet
        {
            invalidateBackground()
        }
    }
    var scaleSubdivisions: CGFloat = 0.0
    {
        didSet
        {
            invalidateBackground()
        }
    }
    var isShowScaleShadow = false
    {
        didSet
        {
            invalidateBackground()
        }
    }
    var isShowScale = true
    {
        didSet
        {
            invalidateBackground()
        }
    }
    var scalesubdivisionsAligment = WMGaugeViewSubdivisionsAlignment.top
    {
        didSet
        {
            invalidateBackground()
        }
    }
    var scaleDivisionsLength: CGFloat = 0.0
    {
        didSet
        {
            invalidateBackground()
        }
    }
    var scaleDivisionsWidth: CGFloat = 0.0
    {
        didSet
        {
            invalidateBackground()
        }
    }
    var scaleSubdivisionsLength: CGFloat = 0.0
    {
        didSet
        {
            invalidateBackground()
        }
    }
    var scaleSubdivisionsWidth: CGFloat = 0.0
    {
        didSet
        {
            invalidateBackground()
        }
    }
    var scaleDivisionColor: UIColor?
    {
        didSet
        {
            invalidateBackground()
        }
    }
    var scaleSubDivisionColor: UIColor?
    {
        didSet
        {
            invalidateBackground()
        }
    }
    var scaleFont: UIFont?
    {
        didSet
        {
            invalidateBackground()
        }
    }
    var value: CGFloat = 0.0
    {
        didSet
        {
           // self.setValue(value, animated: true)
            // [self setValue:value animated:YES];
           // invalidateBackground()
        }
    }
    var minValue: CGFloat = 0.0
    {
        didSet
        {
            invalidateBackground()
        }
    }
    var maxValue: CGFloat = 0.0
    {
        didSet
        {
            invalidateBackground()
        }
    }
    var isShowRangeLabels = false
    {
        didSet
        {
            invalidateBackground()
        }
    }
    var rangeLabelsWidth: CGFloat = 0.0
    {
        didSet
        {
            invalidateBackground()
        }
    }
    
    var rangeLabelsFont: UIFont?
    {
        didSet
        {
            invalidateBackground()
        }
    }
    var rangeLabelsFontColor: UIColor?
    {
        didSet
        {
            invalidateBackground()
        }
    }
    var rangeLabelsFontKerning: CGFloat = 0.0
    {
        didSet
        {
            invalidateBackground()
        }
    }
    var rangeValues : [CGFloat]?
    {
        didSet
        {
            invalidateBackground()
        }
    }
    var rangeColors : [Any]?
    {
        didSet
        {
            invalidateBackground()
        }
    }
    var rangeLabels : [Any]?
    {
        didSet
        {
            invalidateBackground()
        }
    }
    var unitOfMeasurementColor: UIColor?
    {
        didSet
        {
            invalidateBackground()
        }
    }
    var unitOfMeasurementVerticalOffset: CGFloat = 0.0
    {
        didSet
        {
            invalidateBackground()
        }
    }
    var unitOfMeasurementFont: UIFont?
    {
        didSet
        {
            invalidateBackground()
        }
    }
    var unitOfMeasurement = ""
    {
        didSet
        {
            invalidateBackground()
        }
    }
    var isShowUnitOfMeasurement = false
    {
        didSet
        {
            invalidateBackground()
        }
    }
    
    var j  : CGFloat?
     var style: WMGaugeViewStyle?
     {
        didSet
        {
            invalidateBackground()
            invalidateNeedle()
        }
    }
    /* Drawing rects */
    private var fullRect = CGRect.zero
    {
        didSet
        {
          //  invalidateBackground()
        }
    }
    private var innerRimRect = CGRect.zero
    {
        didSet
        {
            //invalidateBackground()
        }
    }
    private var innerRimBorderRect = CGRect.zero
    {
        didSet
        {
           // invalidateBackground()
        }
    }
    private var faceRect = CGRect.zero
    {
        didSet
        {
           // invalidateBackground()
        }
    }
    private var rangeLabelsRect = CGRect.zero
    {
        didSet
        {
           // invalidateBackground()
        }
    }
    private var scaleRect = CGRect.zero
    {
        didSet
        {
           // invalidateBackground()
        }
    }
    /* View center */
    private var centerS = CGPoint.zero
    {
        didSet
        {
           // invalidateBackground()
        }
    }
    /* Scale variables */
    private var scaleRotation: CGFloat = 0.0
    {
        didSet
        {
            //invalidateBackground()
        }
    }
    private var divisionValue: CGFloat = 0.0
    {
        didSet
        {
          //  invalidateBackground()
        }
    }
    private var subdivisionValue: CGFloat = 0.0
    {
        didSet
        {
           // invalidateBackground()
        }
    }
    private var subdivisionAngle: CGFloat = 0.0
    {
        didSet
        {
            //invalidateBackground()
        }
    }
    /* Background image */
    private var background: UIImage?
    {
        didSet
        {
           // invalidateBackground()
        }
    }
    /* Needle layer */
    private var rootNeedleLayer: CALayer?
    /* Annimation completion */
    
    private var animationCompletion: Bool?
//   private var animationCompletion: ((_ BOOL) -> Void)? = nil
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        print("Inititalzing via Frame")
        initialize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
initialize()
     //   fatalError("init(coder:) has not been implemented")
    }
    
    
    override func awakeFromNib() {
        print("Initlazing Via NIB")
        
        super.awakeFromNib()
        initialize()
    }
    
    func initialize() {
        
        
        
        
        
        print("The J is",j)
        style = nil
        isShowInnerRim = false
        //YES;//NO;
        isShowInnerBackground = true
        innerRimWidth = 0.05
        innerRimBorderWidth = 0.005
        scalePosition = 0.025
        scaleStartAngle = 30.0//180.0//00.00//30.0//
        scaleEndAngle = 330.0//180.0//0.0//330.0
        scaleDivisions = 12.0
        scaleSubdivisions = 10.0
        isShowScale = true
        isShowScaleShadow = true
       // scalesubdivisionsAligment = WMGaugeViewSubdivisionsAlignment.top
        //WMGaugeViewSubdivisionsAlignmentTop;
        scaleDivisionsLength = 0.0
        //0.045;
        scaleDivisionsWidth = 0.01
        scaleSubdivisionsLength = 0.00
        //0.015;
        scaleSubdivisionsWidth = 0.01
        value = 30.0//100.0//0.0//30.0//120.0//0.0//30.0//30.0//0.0
        minValue = 0.0
        maxValue = 240.0
        background = nil
        isShowRangeLabels = false
        rangeLabelsWidth = 0.05
        rangeLabelsFont = UIFont(name: "Helvetica", size: 0.05)
        rangeLabelsFontColor = UIColor.white
        rangeLabelsFontKerning = 1.0
        rangeValues = nil
        rangeColors = nil
        rangeLabels = nil
        scaleDivisionColor = UIColor.red//RGB(00, 84, 0o0)
        //RGB(68, 84, 105);
        scaleSubDivisionColor = UIColor.gray//RGB(0o0, 217, 217)
        //RGB(217, 217, 217);
        scaleFont = nil
        unitOfMeasurementVerticalOffset = 0.6
        unitOfMeasurementColor = UIColor.white
        unitOfMeasurementFont = UIFont(name: "Helvetica", size: 0.04)
        unitOfMeasurement = ""
        isShowUnitOfMeasurement = false
        animationCompletion = nil
        initDrawingRects()
        initScale()
    }
    
    func initDrawingRects() {
        
        print("centerS",centerS)
        centerS = CGPoint(x: 0.5, y: 0.5)
        fullRect = CGRect(x: 0.0, y: 0.0, width: 1.0, height: 1.0)
        innerRimBorderWidth = isShowInnerRim ? innerRimBorderWidth : 0.0
        innerRimWidth = isShowInnerRim ? innerRimWidth : 0.0
        innerRimRect = fullRect
        
       
        
        innerRimBorderRect = CGRect(x: innerRimRect.origin.x + innerRimBorderWidth, y: innerRimRect.origin.y + innerRimBorderWidth, width: innerRimRect.size.width - 2 * innerRimBorderWidth, height: innerRimRect.size.height - 2 * innerRimBorderWidth)
        // Face Rect is green Peach inner
        faceRect = CGRect(x: innerRimRect.origin.x + innerRimWidth, y: innerRimRect.origin.y + innerRimWidth, width: innerRimRect.size.width - 2 * innerRimWidth, height: innerRimRect.size.height - 2 * innerRimWidth)
        
        rangeLabelsRect = CGRect(x: faceRect.origin.x + (isShowRangeLabels ? (rangeLabelsWidth * 2) : 1.0), y: faceRect.origin.y + (isShowRangeLabels ? (rangeLabelsWidth * 2) : 1.0), width: faceRect.size.width - 2 * (isShowRangeLabels ? (rangeLabelsWidth * 2) : 1.0), height: faceRect.size.height - 2 * (isShowRangeLabels ? (rangeLabelsWidth * 2) : 1.0))
        scaleRect = CGRect(x: rangeLabelsRect.origin.x - scalePosition - 0.025 - 0.025 - 0.025, y: rangeLabelsRect.origin.y - scalePosition - 0.025 - 0.025 - 0.025, width: rangeLabelsRect.size.width + 4 * scalePosition, height: rangeLabelsRect.size.height + 4 * scalePosition)
    }
    
    
    func initScale()
    {
        
      
        scaleRotation = CGFloat(Int(scaleStartAngle + 180) % 360)
        
        print("Scale Rotaion Is",scaleRotation)
        divisionValue = (maxValue - minValue) / scaleDivisions
        subdivisionValue = divisionValue / scaleSubdivisions
        subdivisionAngle = (scaleEndAngle - scaleStartAngle) / (scaleDivisions * scaleSubdivisions)
    }
   
    
    
    func invalidateBackground()
    {
        
//        if let bg = background
//        {
//            background = nil
//        }
        background = nil
        self.initDrawingRects()
        
        self.initScale()
        
        self.setNeedsDisplay()
    }
    
    func invalidateNeedle() {
        
        if let rooot = rootNeedleLayer
        {
            rootNeedleLayer!.removeAllAnimations()
            rootNeedleLayer!.sublayers = nil
            rootNeedleLayer = nil
        }
        
        setNeedsDisplay()
    }
    
    
    override func draw(_ rect: CGRect) {
        if background == nil {
            // Create image context
            UIGraphicsBeginImageContextWithOptions(rect.size, false, UIScreen.main.scale)
//           .. let context: CGContext? = UIGraphicsGetCurrentContext()
            
             let context = UIGraphicsGetCurrentContext()
            // Scale context for [0-1] drawings
           // context!.scaleBy(x: rect.size.width, y: rect.size.height)
            
            context!.scaleBy(x: rect.size.width, y: rect.size.height)

            
            print("The contetx Is")
            // Draw gauge background in image context
            drawGauge(context!, rect: rect)
            // Save background
            background = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
        }
        // Drawing background in view
        background!.draw(in: rect)
        if rootNeedleLayer == nil {
            // Initialize needle layer
            rootNeedleLayer = CALayer()
            // For performance puporse, the needle layer is not scaled to [0-1] range
            rootNeedleLayer!.frame = self.bounds
            layer.addSublayer(rootNeedleLayer!)
            // Draw needle
            drawNeedle()
            print("Settting now val o t o 300",value)
            self.setValue(0.0, animated: false)
            // Set needle current value
            //setValue(value, animated: false)
        }
      /*  let context = UIGraphicsGetCurrentContext()
        
        let center = CGPoint(x: rect.origin.x + rect.width / 2, y: rect.origin.y + rect.height / 2)
        let radius = min(rect.width, rect.height) / 2
        let startAngle = 0.0// 3.14//0 / 100 * CGFloat(M_PI) * 2 - CGFloat(M_PI)
        let endAngle = 3.00//90 / 100 * CGFloat(M_PI) * 2 - CGFloat(M_PI)
        let path = UIBezierPath()
        path.move(to: center)
        path.addArc(withCenter: center, radius: radius, startAngle: CGFloat(startAngle), endAngle: CGFloat(endAngle), clockwise: true)
        path.close()
//        color.setFill()
        path.fill()
        
        context!.addPath(path.cgPath)
        context!.setFillColor(UIColor.red.cgColor)
        context!.fillPath()*/
    }
    
    
    func drawNeedle() {
        print("Ow Dra NIddle")
        style!.drawNeedle(on: rootNeedleLayer!, in: self.bounds)
//        if style is WMGaugeViewStyle {
//            style?.drawNeedle(on: rootNeedleLayer!, in: bounds)
//        }
    }
    func drawGauge(_ context: CGContext,rect:CGRect) {
        if isShowInnerBackground {
            self.drawFace(context, rect: rect)
        }
        if isShowScale {
            drawScale(context)
        }

        if (isShowRangeLabels)
        {
              self.drawRangeLabels(context)
        }
//
      
      
    }
    

    func drawFace(_ context: CGContext,rect:CGRect) {
        
        print("The Draw Face",context,"---->STyle",style)
        style!.drawFace(with: context, in: rect)
    
//        if style is WMGaugeViewStyle {
//            style?.drawFace(with: context, inRect: faceRect)
//        }
    }
    
/*    func drawText(_ context: CGContext) {
        
        context.setShadow(offset: CGSize(width: 0.05, height: 0.05), blur: 2.0)
        //        CGContextSetShadow(context, CGSize(width: 0.05, height: 0.05), 2.0)
        let font = (unitOfMeasurementFont != nil) ? unitOfMeasurementFont : UIFont(name: "Helvetica", size: 0.04)
      //  let color = unitOfMeasurementColor ? unitOfMeasurementColor : UIColor.white
        let stringAttrs = [.font: font, .foregroundColor: UIColor.white]
        let attrStr = NSAttributedString(string: unitOfMeasurement, attributes: stringAttrs)
        var fontWidth: CGSize
        fontWidth = unitOfMeasurement.size(withAttributes: stringAttrs)
        attrStr.draw(at: CGPoint(x: 0.5 - fontWidth.width / 2.0, y: unitOfMeasurementVerticalOffset))
    }
*/
    
    func drawScale(_ context: CGContext) {
        context.saveGState()
        
        let rotateAngel = (180 + scaleStartAngle).degreesToRadians
        
        print("The STart ANgle Is",scaleStartAngle)
        print("ANd Its Rotate ANgje",rotateAngel)
      //  [self rotateContext:context fromCenter:center withAngle:DEGREES_TO_RADIANS(180 + _scaleStartAngle)];
        rotateContext(context, fromCenter: centerS, withAngle: CGFloat(rotateAngel))
        let totalTicks: Int = Int(scaleDivisions * scaleSubdivisions + 1)
        for i in 0..<totalTicks {
            var offset: CGFloat = 0.0
            if scalesubdivisionsAligment == WMGaugeViewSubdivisionsAlignment.center//WMGaugeViewSubdivisionsAlignmentCenter
            {
                offset = (scaleDivisionsLength - scaleSubdivisionsLength) / 2.0
            }
            if scalesubdivisionsAligment == WMGaugeViewSubdivisionsAlignment.bottom
            {
                offset = scaleDivisionsLength - scaleSubdivisionsLength
            }
            let y1: CGFloat = scaleRect.origin.y
            let y2: CGFloat = y1 + scaleSubdivisionsLength
            let y3: CGFloat = y1 + scaleDivisionsLength
            let value: CGFloat = self.valueForTick(tick: i)//self.value(forTick: i)
            let div: CGFloat = (maxValue - minValue) / scaleDivisions
            let mod = CGFloat(Int(value) % Int(div))
            // Division
            if (fabsf(Float(mod - 0)) < 0.000001) || (fabsf(Float(mod - div)) < 0.000001) {
                // Initialize Core Graphics settings
                let color: UIColor? = ((rangeValues != nil) && (rangeColors != nil)) ? rangeColorForValue(value: value) : scaleDivisionColor
                context.setStrokeColor((color?.cgColor)!)
                context.setLineWidth(scaleDivisionsWidth)
                
                context.setShadow(offset: CGSize(width: 0.05, height: 0.05), blur: isShowScaleShadow ? 2.0 : 0.0)
                //                CGContextSetShadow(context, CGSize(width: 0.05, height: 0.05), isShowScaleShadow ? 2.0 : 0.0)
                // Draw tick
                context.move(to: CGPoint(x: 0.5, y: y1))
                context.addLine(to: CGPoint(x: 0.5, y: y3))
                context.strokePath()
                // Draw label
                let valueString = String(format: "%0.0f", value)
                let font = (scaleFont != nil) ? scaleFont : UIFont(name: "Helvetica-Bold", size: 0.05)
                let stringAttrs = [NSAttributedStringKey.font: font, NSAttributedStringKey.foregroundColor: color]
                let attrStr = NSAttributedString(string: valueString, attributes: stringAttrs)
                var fontWidth: CGSize
                fontWidth = valueString.size(withAttributes: stringAttrs)
                attrStr.draw(at: CGPoint(x: 0.5 - fontWidth.width / 2.0, y: y3 + 0.005))
            }
                
            else
            {
                //  Converted with Swiftify v1.0.6474 - https://objectivec2swift.com/
                // Initialize Core Graphics settings
                
                var color: UIColor? = ((rangeValues != nil) && (rangeColors != nil)) ? rangeColorForValue(value: value) : scaleSubDivisionColor
                context.setStrokeColor((color?.cgColor)!)
                context.setLineWidth(scaleSubdivisionsWidth)
                context.move(to: CGPoint(x: 0.5, y: y1))
                if isShowScaleShadow {
                    context.setShadow(offset: CGSize(width: 0.05, height: 0.05), blur: 2.0)
                    
                    //                    CGContextSetShadow(context, CGSize(width: 0.05, height: 0.05), 2.0)
                }
                // Draw tick
                context.move(to: CGPoint(x: 0.5, y: y1 + offset))
                context.addLine(to: CGPoint(x: 0.5, y: y2 + offset))
                context.strokePath()
                
            }
            
            //  Converted with Swiftify v1.0.6474 - https://objectivec2swift.com/
            // Rotate to next tick
            
            
            let rotatenEndeAngel = (subdivisionAngle).degreesToRadians
                
                // [self rotateContext:context fromCenter:center withAngle:DEGREES_TO_RADIANS(subdivisionAngle)];
            rotateContext(context, fromCenter: centerS, withAngle: rotatenEndeAngel)
            
        }
        
        //  Converted with Swiftify v1.0.6474 - https://objectivec2swift.com/
        context.restoreGState()
    }
    
    func drawRangeLabels(_ context: CGContext) {
        context.saveGState()
        let roateAngle = (90 + scaleStartAngle).degreesToRadians
       // [self rotateContext:context fromCenter:center withAngle:DEGREES_TO_RADIANS(90 + _scaleStartAngle)];
        rotateContext(context, fromCenter: centerS, withAngle: roateAngle)
        
        context.setShadow(offset: CGSize(width: 0.0, height: 0.0), blur: 0.0)
        //        CGContextSetShadow(context, CGSize(width: 0.0, height: 0.0), 0.0)
        let maxAngle: CGFloat = scaleEndAngle - scaleStartAngle
        var lastStartAngle: CGFloat = 0.0
        for i in 0..<rangeValues!.count {
            // Range value
            let value: CGFloat? = rangeValues![i]// as! CGFloat
            let valueAngle = CGFloat((value! - minValue) / (maxValue - minValue) * maxAngle)
            
            print("Max ANgle is",valueAngle)
            // Range curved shape
            let path = UIBezierPath()
            
            let pathStartRagAngle = (lastStartAngle).degreesToRadians
            let pathEndRagAngle = (valueAngle).degreesToRadians
            
                
//                [path addArcWithCenter:center radius:rangeLabelsRect.size.width / 2.0 startAngle:DEGREES_TO_RADIANS(lastStartAngle) endAngle:DEGREES_TO_RADIANS(valueAngle) - 0.01 clockwise:YES]
            path.addArc(withCenter: centerS, radius: rangeLabelsRect.size.width / 2.0, startAngle: pathStartRagAngle, endAngle: pathEndRagAngle - 0.01, clockwise: true)
            let color: UIColor? = UIColor.purple//rangeColors?[i]
            color?.setStroke()
            path.lineWidth = rangeLabelsWidth
            path.stroke()
            // Range curved label
//            [self drawStringAtContext:context string:(NSString*)_rangeLabels[i] withCenter:center radius:rangeLabelsRect.size.width / 2.0 startAngle:DEGREES_TO_RADIANS(lastStartAngle) endAngle:DEGREES_TO_RADIANS(valueAngle)]
            let drawStartAngle = (lastStartAngle).degreesToRadians
                
                let drawEndAngle = valueAngle.degreesToRadians
            drawString(at: context, string: (rangeLabels![i] as? String)!, withCenter: centerS, radius: rangeLabelsRect.size.width / 2.0, startAngle: drawStartAngle, endAngle: drawEndAngle)
            lastStartAngle = CGFloat(valueAngle)
        }
        context.restoreGState()
    }
    
    func drawString(at context: CGContext, string text: String, withCenter center_: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat) {
        context.saveGState()
        let font = (rangeLabelsFont != nil) ? rangeLabelsFont : UIFont(name: "Helvetica", size: 0.05)
        let color = UIColor.white//rangeLabelsFontColor ? rangeLabelsFontColor : UIColor.white
        let stringAttrs = [NSAttributedStringKey.font: font, .foregroundColor: color]
        var textSize: CGSize
        textSize = text.size(withAttributes: stringAttrs)
        let perimeter = CGFloat(2 * .pi * radius)
        let textAngle = CGFloat(textSize.width / perimeter * 2 * .pi * rangeLabelsFontKerning)
        let offset = CGFloat(((endAngle - startAngle) - textAngle) / 2.0)
        var letterPosition: CGFloat = 0
        var lastLetter = ""
        

        rotateContext(context, fromCenter: center, withAngle: startAngle + offset)
        for index in 0..<(text.count ?? 0) {
            let range = [index, 1] as? NSRange
            let letter: String = (text as NSString).substring(with: range!)
            let attrStr = NSAttributedString(string: letter, attributes: stringAttrs)
            let charSize: CGSize = letter.size(withAttributes: stringAttrs)
            let totalWidth : CGFloat = CGFloat("\(lastLetter)\(letter)".size(withAttributes: stringAttrs).width)
            let currentLetterWidth = CGFloat(letter.size(withAttributes: stringAttrs).width)
            let lastLetterWidth = CGFloat(lastLetter.size(withAttributes: stringAttrs).width)
            
            let zero : CGFloat = 0.0
            
            
          //  let kerning: CGFloat = lastLetterWidth ? 0.0 : ((currentLetterWidth + lastLetterWidth) - totalWidth)
            let kerning: CGFloat = (lastLetterWidth == 0) ? 0.00 : CGFloat(((currentLetterWidth + lastLetterWidth) - totalWidth))
//            let kerning: CGFloat = lastLetterWidth ? 0.00 : CGFloat(((currentLetterWidth + lastLetterWidth) - totalWidth))
            letterPosition += CGFloat((charSize.width / 2) - kerning)
            let angle: CGFloat = (letterPosition / perimeter * 2 * .pi) * rangeLabelsFontKerning
            let letterPoint = CGPoint(x: (radius - charSize.height / 2.0) * cos(angle) + center_.x, y: (radius - charSize.height / 2.0) * sin(angle) + center_.y)
            context.saveGState()
            context.translateBy(x: letterPoint.x, y: letterPoint.y)
            let rotationTransform = CGAffineTransform(rotationAngle: angle + CGFloat(M_PI_2))
            context.concatenate(rotationTransform)
            context.translateBy(x: -letterPoint.x, y: -letterPoint.y)
            attrStr.draw(at: CGPoint(x: letterPoint.x - charSize.width / 2, y: letterPoint.y - charSize.height))
            context.restoreGState()
            letterPosition += CGFloat(charSize.width / 2)
            lastLetter = letter
        }
        context.restoreGState()
    }
    

    
    
    func valueForTick(tick:Int) -> CGFloat
    {
        return CGFloat(tick) * (divisionValue / scaleSubdivisions) + minValue;
    }
    
    func rangeColorForValue(value: CGFloat) -> UIColor
    {
        
        
        // Half Implemented Function . If need Complete it
       /* let length = rangeValues?.count
        
        
        for var i in 0...length! - 1
        {
            
            if(value < rangeValues[i] )
            {
                return rangeColors[i]
            }
            if (value < [_rangeValues[i] floatValue])
               return _rangeColors[i]
        }*/
        return UIColor.red
    }
    
//
//    - (UIColor*)rangeColorForValue:(float)value
//    {
//    NSInteger length = _rangeValues.count;
//    for (int i = 0; i < length - 1; i++)
//    {
//    if (value < [_rangeValues[i] floatValue])
//    return _rangeColors[i];
//    }
//    if (value <= [_rangeValues[length - 1] floatValue])
//    return _rangeColors[length - 1];
//    return nil;
//    }
   
    
    // MARK: - Tools
    /**
     * Core Graphics rotation in context
     */
    func rotateContext(_ context: CGContext, fromCenter center_: CGPoint, withAngle angle: CGFloat) {
        context.translateBy(x: center_.x, y: center_.y)
        context.rotate(by: angle)
        context.translateBy(x: -center_.x, y: -center_.y)
    }

    
    /**
     * Update gauge value with animation
     */
    
    func setValue(_ value: CGFloat, animated: Bool) {
       // setValue(value, animated: animated, duration: 0.8)
        print("Settting Val",value,animated)
        self.setValue(value, animated: animated, duration: 0.8)
    }
    
    /**
     * Update gauge value with animation and fire a completion block
     */
//    func setValue(_ value: CGFloat, animated: Bool, completion: @escaping (_ finished: Bool) -> Void) {
//        setValue(value, animated: animated, duration: 0.8, completion: completion)
//    }
    
    func setValue(_ value: CGFloat, animated: Bool, duration: TimeInterval) {
        
        print("The another function",value)
        self.setValue(value, animated: animated, duration: duration, completion: nil)
    }
    
    

    func setValue(_ value: CGFloat, animated: Bool, duration: TimeInterval, completion: Bool?) {
        animationCompletion = completion
        let lastValue = CGFloat(self.value)
        
        self.updateValue(_value: value)
        
        
        print("The animation function",duration,self.value)
        
//        double middleValue = lastValue + (((lastValue + (_value - lastValue) / 2.0) >= 0) ? (_value - lastValue) / 2.0 : (lastValue - _value) / 2.0);
        let firstVal = ((lastValue + (self.value - lastValue) / 2.0) >= 0)
        
        let secondVal = (self.value - lastValue) / 2.0
        let thitdVal = (lastValue - self.value) / 2.0
        
        let middleValue: Double = Double(lastValue + (firstVal ? secondVal : thitdVal))
        let a : Double = Double(lastValue + (((lastValue + (self.value - lastValue) / 2.0) >= 0) ? (self.value - lastValue) / 2.0 : (lastValue - self.value) / 2.0))
        
//        double middleValue = lastValue + (((lastValue + (_value - lastValue) / 2.0) >= 0) ? (_value - lastValue) / 2.0 : (lastValue - _value) / 2.0);
//        let middleValue: Double = lastValue + (((lastValue + (self.value - lastValue) / 2.0) >= 0) ? (self.value - lastValue) / 2.0 : (lastValue - self.value) / 2.0)
        // Needle animation to target value
        // An intermediate "middle" value is used to make sure the needle will follow the right rotation direction
        let animation = CAKeyframeAnimation(keyPath: "transform")
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        animation.isRemovedOnCompletion = true
        animation.duration = animated ? duration : 0.0 as? CFTimeInterval ?? CFTimeInterval()//2.0//animated ? duration : 0.0 as? CFTimeInterval ?? CFTimeInterval()
        
        print("ANimation Duation is",animation.duration)
        animation.delegate = self
//
//        @[[NSValue valueWithCATransform3D:CATransform3DMakeRotation([self needleAngleForValue:lastValue]  , 0, 0, 1.0)],
//        [NSValue valueWithCATransform3D:CATransform3DMakeRotation([self needleAngleForValue:middleValue], 0, 0, 1.0)],
//        [NSValue valueWithCATransform3D:CATransform3DMakeRotation([self needleAngleForValue:_value]     , 0, 0, 1.0)]]
//
        
        
            animation.values = [NSValue(caTransform3D: CATransform3DMakeRotation(needleAngle(forValue: lastValue), 0, 0, 1.0)), NSValue(caTransform3D: CATransform3DMakeRotation(needleAngle(forValue: CGFloat(a)), 0, 0, 1.0)), NSValue(caTransform3D: CATransform3DMakeRotation(needleAngle(forValue: self.value), 0, 0, 1.0))]//[NSValue(caTransform3D: CATransform3DMakeRotation(needleAngle(forValue: lastValue), 0, 0, 1.0))]//[NSValue(caTransform3D: CATransform3DMakeRotation(needleAngle(forValue: lastValue), 0, 0, 1.0)), NSValue(caTransform3D: CATransform3DMakeRotation(needleAngle(forValue: CGFloat(a)), 0, 0, 1.0)), NSValue(caTransform3D: CATransform3DMakeRotation(needleAngle(forValue: self.value), 0, 0, 1.0))]
        
//animation.values =
        if(style == nil || !(style!.needleLayer(rootNeedleLayer!, willMoveAnimated: animated, duration: duration, animation: animation)))
        {

            print("Inside function ")
            rootNeedleLayer!.transform = animation.values?.last as! CATransform3D

            rootNeedleLayer!.add(animation, forKey: kCATransition)
        }
        
//        if style is WMGaugeViewStyle == false || style?.needleLayer(rootNeedleLayer, willMoveAnimated: animated, duration: duration, animation: animation) == false {
//            rootNeedleLayer?.transform = animation.values?.last?.caTransform3DValue
//            rootNeedleLayer?.add(animation, forKey: kCATransition)
//        }
        
//        rootNeedleLayer.
    }
    
    func needleAngle(forValue : CGFloat) ->CGFloat
    {
        
//        return DEGREES_TO_RADIANS(_scaleStartAngle + (value - _minValue) / (_maxValue - _minValue) * (_scaleEndAngle - _scaleStartAngle)) + M_PI;
//    
        let firstVal = scaleStartAngle + (self.value - minValue) / (maxValue - minValue)
        let secondVal = (scaleEndAngle - scaleStartAngle)
       let returnVal =  ((firstVal * secondVal).degreesToRadians  + CGFloat(M_PI))
        
//        (_scaleStartAngle + (value - _minValue) / (_maxValue - _minValue) * (_scaleEndAngle - _scaleStartAngle)) + M_PI).degreesToRadians
        return (scaleStartAngle + (self.value - minValue) / (maxValue - minValue) * (scaleEndAngle - scaleStartAngle)).degreesToRadians + CGFloat(M_PI) //returnVal
        
    }
//    - (CGFloat)needleAngleForValue:(double)value
//    {
//    return DEGREES_TO_RADIANS(_scaleStartAngle + (value - _minValue) / (_maxValue - _minValue) * (_scaleEndAngle - _scaleStartAngle)) + M_PI;
//    }
    
    func updateValue(_value: CGFloat) {
        // Clamp value if out of range
        
        print("New Val is",_value)
        var newVal = _value
        if newVal > maxValue {
            
            
            print("New val is greate")
            newVal = maxValue
        }
        else if newVal < minValue {
            print("New Val Is Smal")
            newVal = minValue
        }
        else {
            
            print("new val is equal")
            newVal = _value
        }
        
        // Set value
        self.value = newVal
        
        print("Safe Vale is",self.value)
     
        
    }
    
    
    
}


extension WMGaugeView : CAAnimationDelegate
{
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
//        if (animationCompletion)!
//        {
//            animationCompletion = flag
//
//        }
//
//
//        animationCompletion = nil
    }
}

extension Int {
    //var degreesToRadians: Double { return Double(self) * .pi / 180 }
    
    var degreesToRadians: Double { return Double(self) / 180.0 * M_PI }
}
extension CGFloat {
//    var degreesToRadians: Self { return self * .pi / 180 }

     var degreesToRadians: CGFloat { return (CGFloat(self) /  180.0 * CGFloat(M_PI)) }
   // var radiansToDegrees: Self { return self * 180 / .pi }
}

