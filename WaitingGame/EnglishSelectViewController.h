//
//  EnglishSelectViewController.h
//  WaitingGame
//
//  Created by Alex Lipsett on 11/19/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EnglishSelectViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *quizOne;
@property (weak, nonatomic) IBOutlet UIButton *quizTwo;
@property (weak, nonatomic) IBOutlet UIButton *quizThree;
@property (weak, nonatomic) IBOutlet UIButton *quizFour;

-(IBAction)quizOneTapped:(id)sender;
-(IBAction)quizTwoTapped:(id)sender;
-(IBAction)quizThreeTapped:(id)sender;
-(IBAction)quizFourTapped:(id)sender;



@end
