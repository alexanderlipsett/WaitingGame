//
//  TitleViewController.h
//  WaitingGame
//
//  Created by Derrick J Chie on 11/21/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizTitleViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *beginButton;

- (IBAction)beginButtonTapped:(id)sender;

@end
