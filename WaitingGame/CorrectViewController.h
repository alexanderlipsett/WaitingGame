//
//  CorrectViewController.h
//  WaitingGame
//
//  Created by Alex Lipsett on 11/20/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CorrectViewController : UIViewController
@property (nonatomic) Correct
@property (strong, nonatomic) IBOutlet UIImageView *image;
@property (strong, nonatomic) IBOutlet UILabel *description;

- (IBAction)nextPressed:(id)sender;
@end
