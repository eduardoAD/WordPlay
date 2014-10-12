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
    NSString *textString = [NSString stringWithFormat:@"One day %@ and %@ were walking through the forest when suddenly a %@ animal appeared, who live in a %@ house.", self.name, self.otherName, self.adjective, self.otherAdjective];

    NSMutableAttributedString *textAttributedString = [[NSMutableAttributedString alloc] initWithString:textString];
    [textAttributedString addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:16.0] range:[textAttributedString.string rangeOfString:self.name]];
    [textAttributedString addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:16.0] range:[textAttributedString.string rangeOfString:self.otherName]];
    [textAttributedString addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:16.0] range:[textAttributedString.string rangeOfString:self.adjective]];
    [textAttributedString addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:16.0] range:[textAttributedString.string rangeOfString:self.otherAdjective]];

    self.resultsTextView.attributedText = textAttributedString;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
