//
//  EnglishSelectViewController.h
//  WaitingGame
//
//  Created by Alex Lipsett on 11/19/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Quiz.h"

@interface SelectViewController : UIViewController

@property (strong, nonatomic) Quiz *quiz;

-(IBAction)basicMechanismsTapped:(id)sender;
-(IBAction)preventionTapped:(id)sender;
-(IBAction)treatmentTapped:(id)sender;
-(IBAction)potentialComplicationsTapped:(id)sender;



@end
