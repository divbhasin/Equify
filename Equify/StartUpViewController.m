//
//  StartUpViewController.m
//  Equify
//
//  Created by Div Bhasin on 2018-09-14.
//  Copyright © 2018 Div Bhasin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StartUpViewController.h"

@implementation StartUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)GoLogin:(id)sender {
    [self performSegueWithIdentifier:@"login" sender:self];
}

- (IBAction)GoSignUp:(id)sender {
    [self performSegueWithIdentifier:@"signup" sender:self];
}

@end
