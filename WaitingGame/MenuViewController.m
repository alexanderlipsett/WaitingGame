//
//  MenuViewController.m
//  WaitingGame
//
//  Created by Alex Lipsett on 11/16/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import "MenuViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)englishButtonTapped:(id)sender
{
    NSLog(@"Enlgish Button Tapped");
//    QuizCategoryViewController *quizCategoryViewController = [[QuizCategoryViewController alloc] initWithNibName:@"QuizCategoryViewController"];
    
}

- (IBAction)spanishButtonTapped:(id)sender
{
    NSLog(@"Spanish Button Tapped");
}


@end
