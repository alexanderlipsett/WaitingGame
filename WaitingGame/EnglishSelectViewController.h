//
//  EnglishSelectViewController.h
//  WaitingGame
//
//  Created by Alex Lipsett on 11/19/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EnglishSelectViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *quiz1;
@property (weak, nonatomic) IBOutlet UIButton *quiz2;
@property (weak, nonatomic) IBOutlet UIButton *quiz3;
@property (weak, nonatomic) IBOutlet UIButton *quiz4;

-(IBAction)quizOneTapped:(id)sender;
-(IBAction)quizTwoTapped:(id)sender;
-(IBAction)quizThreeTapped:(id)sender;
-(IBAction)quizFourTapped:(id)sender;



@end
