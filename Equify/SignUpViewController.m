//
//  SignUpViewController.m
//  Equify
//
//  Created by Div Bhasin on 2018-09-14.
//  Copyright © 2018 Div Bhasin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SignUpViewController.h"
@import Firebase;

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)verifyAndSignUp {
    if ([self isValidEmail:self.email.text] && [self.password.text isEqualToString:self.password_confirm.text]) {
        [[FIRAuth auth] createUserAndRetrieveDataWithEmail:[self.email text]
                                                  password:[self.password text]
                                                completion:^(FIRAuthDataResult * _Nullable authResult,
                                                             NSError * _Nullable error) {
                                                    
                                                    // redirect to the main tab bar controller here
                                                    [self performSegueWithIdentifier:@"enter" sender:self];
                                                }];
    }
}

-(BOOL) isValidEmail:(NSString *)checkString
{
    BOOL stricterFilter = NO; // Discussion http://blog.logichigh.com/2010/09/02/validating-an-e-mail-address/
    NSString *stricterFilterString = @"^[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}$";
    NSString *laxString = @"^.+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2}[A-Za-z]*$";
    NSString *emailRegex = stricterFilter ? stricterFilterString : laxString;
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:checkString];
}

- (IBAction)SignUp:(id)sender {
    [self verifyAndSignUp];
}
@end
