//
//  CategorizationQuestionViewController.h
//  WaitingGame
//
//  Created by Alex Lipsett on 11/19/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CategorizationQuestionViewController : UIViewController
{
    __weak IBOutlet UIImageView *comic;
    __weak IBOutlet UILabel *questionText;
    __weak IBOutlet UILabel *optionOneText;
    __weak IBOutlet UISegmentedControl *segmentOne;
    __weak IBOutlet UILabel *optionTwoText;
    __weak IBOutlet UISegmentedControl *segmentTwo;
    __weak IBOutlet UILabel *optionThreeText;
    __weak IBOutlet UISegmentedControl *segmentThree;
    __weak IBOutlet UILabel *optionFourText;
    __weak IBOutlet UISegmentedControl *segment4;
}
- (IBAction)nextPressed:(id)sender;

@end
