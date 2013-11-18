//
//  MenuViewController.h
//  WaitingGame
//
//  Created by Alex Lipsett on 11/16/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *english;
@property (weak, nonatomic) IBOutlet UIButton *spanish;

- (IBAction)englishButtonTapped:(id)sender;
- (IBAction)spanishButtonTapped:(id)sender;

@end
