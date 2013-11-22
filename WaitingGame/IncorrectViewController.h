//
//  IncorrectViewController.h
//  WaitingGame
//
//  Created by Alex Lipsett on 11/20/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import <UIKit/UIKit.h>
#include "Incorrect.h"

@interface IncorrectViewController : UIViewController

@property (nonatomic) Incorrect *incorrect;
@property (strong, nonatomic) IBOutlet UIImageView *image;
@property (strong, nonatomic) IBOutlet UILabel *description;

-(IBAction)tryAgainButtonPressed:(id)sender;
-(id)initWithIncorrectTemplate:(Incorrect *)incorrect;


- (IBAction)mainMenuPressed:(id)sender;

@end
