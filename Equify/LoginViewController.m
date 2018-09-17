//
//  LoginViewController.m
//  Equify
//
//  Created by Div Bhasin on 2018-08-27.
//  Copyright © 2018 Div Bhasin. All rights reserved.
//

#import "LoginViewController.h"
@import FirebaseAuth;

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)login:(id)sender {
    if (self.password.text && self.email.text && [self isValidEmail:self.email.text]) {
        [[FIRAuth auth] signInAndRetrieveDataWithEmail:self->_email.text
                               password:self->_password.text
                             completion:^(FIRAuthDataResult * _Nullable authResult,
                                          NSError * _Nullable error) {
                                 
                                 if (error) {
                                     self.errorMsg.text = @"Invalid email/password. Please try again.";
                                 } else {
                                     [self performSegueWithIdentifier:@"enter" sender:self];
                                 }
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

@end
