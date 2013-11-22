//
//  WideComicTemplateViewController.h
//  WaitingGame
//
//  Created by Alex Lipsett on 11/21/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WideComicTemplate.h"
#import "Quiz.h"

@interface WideComicTemplateViewController : UIViewController

@property (nonatomic) Quiz *quiz;
@property (nonatomic) WideComicTemplate *template;
@property (strong, nonatomic) IBOutlet UIImageView *comic;
@property (strong, nonatomic) IBOutlet UILabel *text;

- (IBAction)nextPressed:(id)sender;
-(id)initWithTemplate:(WideComicTemplate *)template andQuiz:(Quiz *)quiz;
@end
