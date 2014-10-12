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
    self.resultsTextView.text = [NSString stringWithFormat:@"One day %@ was walking through the forest when suddenly a %@ animal appeared, who had a way never seen before.", self.name, self.adjective];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
