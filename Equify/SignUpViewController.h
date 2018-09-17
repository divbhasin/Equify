//
//  SignUpViewController.h
//  Equify
//
//  Created by Div Bhasin on 2018-09-14.
//  Copyright © 2018 Div Bhasin. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface SignUpViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UITextField *password_confirm;
- (IBAction)SignUp:(id)sender;

@end
