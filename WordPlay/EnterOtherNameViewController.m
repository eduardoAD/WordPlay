//
//  EnterOtherNameViewController.m
//  WordPlay
//
//  Created by Eduardo Alvarado Díaz on 10/12/14.
//  Copyright (c) 2014 Globant. All rights reserved.
//

#import "EnterOtherNameViewController.h"
#import "EnterAdjectiveViewController.h"

@interface EnterOtherNameViewController ()
@property (strong, nonatomic) IBOutlet UITextField *otherNameTextField;

@end

@implementation EnterOtherNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    EnterAdjectiveViewController *destination = [segue destinationViewController];
    destination.name = self.name;
    destination.otherName = self.otherNameTextField.text;
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([self.otherNameTextField.text isEqual:@""]) {
        return NO;
    } else {
        return YES;
    }
}

@end
