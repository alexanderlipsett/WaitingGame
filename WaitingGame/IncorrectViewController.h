//
//  IncorrectViewController.h
//  WaitingGame
//
//  Created by Alex Lipsett on 11/20/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IncorrectViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *description;

- (IBAction)nextPressed:(id)sender;

@end
