//
//  EnterOtherAdjectiveViewController.m
//  WordPlay
//
//  Created by Eduardo Alvarado Díaz on 10/12/14.
//  Copyright (c) 2014 Globant. All rights reserved.
//

#import "EnterOtherAdjectiveViewController.h"
#import "ResultsViewController.h"

@interface EnterOtherAdjectiveViewController ()
@property (strong, nonatomic) IBOutlet UITextField *otherAdjectiveTextField;

@end

@implementation EnterOtherAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ResultsViewController *destination = [segue destinationViewController];
    destination.name = self.name;
    destination.otherName = self.otherName;
    destination.adjective = self.adjective;
    destination.otherAdjective = self.otherAdjectiveTextField.text;
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([self.otherAdjectiveTextField.text isEqual:@""]) {
        return NO;
    } else {
        return YES;
    }
}

@end
