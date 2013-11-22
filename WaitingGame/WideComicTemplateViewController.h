//
//  WideComicTemplateViewController.h
//  WaitingGame
//
//  Created by Alex Lipsett on 11/21/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WideComicTemplateViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *comic;
@property (strong, nonatomic) IBOutlet UILabel *text;

- (IBAction)nextPressed:(id)sender;
@end
