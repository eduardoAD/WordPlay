//
//  ResultsViewController.m
//  WordPlay
//
//  Created by Eduardo Alvarado Díaz on 10/12/14.
//  Copyright (c) 2014 Globant. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()
@property (strong, nonatomic) IBOutlet UITextView *resultsTextView;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.resultsTextView.text = [NSString stringWithFormat:@"One day %@ and %@ were walking through the forest when suddenly a %@ animal appeared, who live in a %@ house.", self.name, self.otherName, self.adjective, self.otherAdjective];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
