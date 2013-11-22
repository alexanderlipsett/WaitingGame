//
//  CorrectViewController.h
//  WaitingGame
//
//  Created by Alex Lipsett on 11/20/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Correct.h"
#import "Quiz.h"

@interface CorrectViewController : UIViewController
@property (nonatomic)Correct *correct;
@property (nonatomic)Quiz *quiz;
@property (weak, nonatomic) IBOutlet UILabel *description;

-(IBAction)nextPressed:(id)sender;
-(id)initWithCorrectTemplate:(Correct *)correctTemplate andQuiz:(Quiz *)quiz;

- (IBAction)mainMenuPressed:(id)sender;

@end
