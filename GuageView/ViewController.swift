//
//  ViewController.swift
//  GuageView
//
//  Created by komal kamble on 01/10/17.
//  Copyright © 2017 komal kamble. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var view1: WMGaugeView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpVIew()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func setUpVIew()
    {
        view1.style = WMGaugeViewStyleFlatThin()
        view1.maxValue = 240.0//360.0
        view1.isShowRangeLabels = true
        view1.rangeValues = [240.0 ]
        
        // Check below line of colde in objec file
        view1.rangeColors = [UIColor.gray]
        view1.rangeLabels = [""]
        
        view1.unitOfMeasurement = "psi"
        view1.isShowUnitOfMeasurement = true
        view1.scaleDivisionsWidth = 0.008//0.008;
        view1.scaleSubdivisionsWidth = 0.0;//0.006;
        view1.rangeLabelsFontColor = UIColor.blue//[UIColor blackColor];
        view1.rangeLabelsWidth = 0.04
        view1.rangeLabelsFont = UIFont(name: "Helvetica", size: 0.04)//[UIFont fontWithName:@"Helvetica" size:0.04]
        
        Timer.scheduledTimer(timeInterval: 1.1,
                             target: self,
                             selector: #selector(self.gaugeUpdateTimer(_:)),
                             userInfo: nil,
                             repeats: false)
        
      

        
     //   let a = Timer(timeInterval: 1.0, target: self, selector: (#selector(ViewController.gaugeUpdateTimer)), userInfo: nil, repeats: true)
        
//        [NSTimer scheduledTimerWithTimeInterval:2.0
//            target:self
//            selector:@selector(gaugeUpdateTimer:)
//            userInfo:nil
//            repeats:YES];
      /*  _gaugeView.style = [WMGaugeViewStyleFlatThin new];//[WMGaugeViewStyle3D new];
        _gaugeView.maxValue = 240.0;
        _gaugeView.showRangeLabels = YES;//YES;
        
        _gaugeView.rangeValues = @[@240.0 ];
        _gaugeView.rangeColors = @[ RGB(232, 111, 33)];
        _gaugeView.rangeLabels = @[ @"",];
        _gaugeView.rangeLabelsFontColor = [UIColor yellowColor];// added this line
        //    _gaugeView.rangeValues = @[ @50,                  @90,                @130,               @240.0              ];
        //    _gaugeView.rangeColors = @[ RGB(232, 111, 33),    RGB(232, 231, 33),  RGB(27, 202, 33),   RGB(231, 32, 43)    ];
        //_gaugeView.rangeLabels = @[ @"VERY LOW",          @"LOW",             @"OK",              @"OVER FILL"        ];
        
        
        _gaugeView.unitOfMeasurement = @"psi";
        _gaugeView.showUnitOfMeasurement = YES;
        _gaugeView.scaleDivisionsWidth = 0.008;//0.008;
        _gaugeView.scaleSubdivisionsWidth = 0.0;//0.006;
        _gaugeView.rangeLabelsFontColor = [UIColor blackColor];
        _gaugeView.rangeLabelsWidth = 0.04;
        _gaugeView.rangeLabelsFont = [UIFont fontWithName:@"Helvetica" size:0.04];*/
    }
    
    
    
   
     @objc func gaugeUpdateTimer(_ timer: Timer)
    {
        print("gaugeUpdateTimer")
        view1.setValue(100.0, animated: true)
    }
    
    @objc func adjustmentBestSongBpmHeartRate(_ timer: Timer) {
        print("frr")
    }
//    -(void)gaugeUpdateTimer:(NSTimer *)timer
//    {
//    _gaugeView.value = rand()%(int)_gaugeView.maxValue;
//    [_gaugeView2 setValue:rand()%(int)_gaugeView2.maxValue animated:YES duration:1.6 completion:^(BOOL finished) {
//    NSLog(@"gaugeView2 animation complete");
//    }];
//    }
//    gaugeUpdateTimer

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

