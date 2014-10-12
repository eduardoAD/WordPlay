//
//  EnterNameViewController.m
//  WordPlay
//
//  Created by Eduardo Alvarado Díaz on 10/12/14.
//  Copyright (c) 2014 Globant. All rights reserved.
//

#import "EnterNameViewController.h"
#import "EnterOtherNameViewController.h"

@interface EnterNameViewController ()
@property (strong, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation EnterNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    EnterOtherNameViewController *destination = [segue destinationViewController];
    destination.name = self.nameTextField.text;
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([self.nameTextField.text isEqual:@""]) {
        return NO;
    } else {
        return YES;
    }
}

@end
