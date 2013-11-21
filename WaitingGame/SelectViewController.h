//
//  EnglishSelectViewController.h
//  WaitingGame
//
//  Created by Alex Lipsett on 11/19/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SelectViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *quiz1;
@property (weak, nonatomic) IBOutlet UIButton *quiz2;
@property (weak, nonatomic) IBOutlet UIButton *quiz3;
@property (weak, nonatomic) IBOutlet UIButton *quiz4;

-(IBAction)basicMechanismsTapped:(id)sender;
-(IBAction)preventionTapped:(id)sender;
-(IBAction)treatmentTapped:(id)sender;
-(IBAction)potentialComplicationsTapped:(id)sender;



@end
