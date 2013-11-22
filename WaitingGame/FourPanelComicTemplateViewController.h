//
//  FourPanelComicTemplateViewController.h
//  WaitingGame
//
//  Created by Alex Lipsett on 11/21/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FourPanelComicTemplate.h"
#import "Quiz.h"

@interface FourPanelComicTemplateViewController : UIViewController

@property (nonatomic) Quiz *quiz;
@property (nonatomic) FourPanelComicTemplate *template;
@property (strong, nonatomic) IBOutlet UIImageView *comicOne;
@property (strong, nonatomic) IBOutlet UIImageView *comicTwo;
@property (strong, nonatomic) IBOutlet UIImageView *comicThree;
@property (strong, nonatomic) IBOutlet UIImageView *comicFour;

-(IBAction)nextPressed:(id)sender;
-(id)initWithTemplate:(FourPanelComicTemplate *)template andQuiz:(Quiz *)quiz;

@end
