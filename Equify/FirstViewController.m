//
//  FirstViewController.m
//  Equify
//
//  Created by Div Bhasin on 2018-08-27.
//  Copyright © 2018 Div Bhasin. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    for (UISlider *slider in self.sliders) {
        [slider removeConstraints:slider.constraints];
        [slider setTranslatesAutoresizingMaskIntoConstraints:YES];
        
        slider.transform=CGAffineTransformRotate(slider.transform,270.0/180*M_PI);
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
