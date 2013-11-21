//
//  ThreeComicViewController.h
//  WaitingGame
//
//  Created by Alex Lipsett on 11/20/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThreeComicViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *comicOne;
@property (weak, nonatomic) IBOutlet UIImageView *comicTwo;
@property (weak, nonatomic) IBOutlet UIImageView *comicThree;

- (IBAction)nextPressed:(id)sender;

@end
