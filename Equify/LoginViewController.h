//
//  LoginViewController.h
//  Equify
//
//  Created by Div Bhasin on 2018-08-27.
//  Copyright © 2018 Div Bhasin. All rights reserved.
//

#ifndef LoginViewController_h
#define LoginViewController_h

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *password;
- (IBAction)login:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *errorMsg;


@end

#endif /* LoginViewController_h */
