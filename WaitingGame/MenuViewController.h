//
//  MenuViewController.h
//  WaitingGame
//
//  Created by Alex Lipsett on 11/16/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *english;
@property (strong, nonatomic) IBOutlet UIButton *spanish;

- (IBAction)englishButtonTapped:(id)sender;
- (IBAction)spanishButtonTapped:(id)sender;

@end
