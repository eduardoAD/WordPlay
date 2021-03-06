//
//  EnterAdjectiveViewController.m
//  WordPlay
//
//  Created by Eduardo Alvarado Díaz on 10/12/14.
//  Copyright (c) 2014 Globant. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "EnterOtherAdjectiveViewController.h"

@interface EnterAdjectiveViewController ()
@property (strong, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    EnterOtherAdjectiveViewController *destination = [segue destinationViewController];
    destination.name = self.name;
    destination.otherName = self.otherName;
    destination.adjective = self.adjectiveTextField.text;
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([self.adjectiveTextField.text isEqual:@""]) {
        return NO;
    } else {
        return YES;
    }
}

@end
