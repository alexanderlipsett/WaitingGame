//
//  CategorizationQuestionViewController.h
//  WaitingGame
//
//  Created by Alex Lipsett on 11/19/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CategorizationQuestion.h"

@interface CategorizationQuestionViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *comic;
@property (strong, nonatomic) IBOutlet UILabel *questionText;
@property (strong, nonatomic) IBOutlet UILabel *optionOne;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentedOne;
@property (strong, nonatomic) IBOutlet UILabel *optionTwo;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentedTwo;
@property (strong, nonatomic) IBOutlet UILabel *optionThree;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentedThree;
@property (strong, nonatomic) IBOutlet UILabel *optionFour;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentedFour;



- (IBAction)nextPressed:(id)sender;

@end
