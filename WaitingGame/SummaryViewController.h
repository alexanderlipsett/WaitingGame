//
//  SummaryViewController.h
//  WaitingGame
//
//  Created by Alex Lipsett on 11/20/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SummaryViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *score;
@property (weak, nonatomic) IBOutlet UILabel *summaryText;


- (IBAction)backToLobbyPressed:(id)sender;


@end
