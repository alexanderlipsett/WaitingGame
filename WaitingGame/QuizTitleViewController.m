//
//  TitleViewController.m
//  WaitingGame
//
//  Created by Derrick J Chie on 11/21/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import "QuizTitleViewController.h"

@interface QuizTitleViewController ()

@end

@implementation QuizTitleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UIColor *background = [[UIColor alloc] initWithRed:244.0f/255.0f green:241.0f/255.0f blue:215.0f/255.0f alpha:1.0f];
    self.view.backgroundColor = background;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)beginButtonTapped:(id)sender
{

}

@end
