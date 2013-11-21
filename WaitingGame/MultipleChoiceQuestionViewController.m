//
//  MultipleChoiceQuestionViewController.m
//  WaitingGame
//
//  Created by Alex Lipsett on 11/16/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import "MultipleChoiceQuestionViewController.h"
#import "IncorrectViewController.h"
#import "CorrectViewController.h"

@interface MultipleChoiceQuestionViewController ()

@end

@implementation MultipleChoiceQuestionViewController

@synthesize question;
@synthesize questionText;
@synthesize optionOne;
@synthesize optionTwo;
@synthesize optionThree;
@synthesize optionFour;

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
    
    [questionText setText:[question questionText]];
    
    NSArray *options = [question options];
    [optionOne setTitle:[options objectAtIndex:0] forState:UIControlStateNormal];
    [optionTwo setTitle:[options objectAtIndex:1] forState:UIControlStateNormal];
    [optionThree setTitle:[options objectAtIndex:2] forState:UIControlStateNormal];
    [optionFour setTitle:[options objectAtIndex:3] forState:UIControlStateNormal];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)optionOnePressed:(id)sender
{
    if ([question submitAnswer:0] == NO)
    {
        IncorrectViewController *incorrectViewController = [[IncorrectViewController alloc] init];
        [self.navigationController pushViewController:incorrectViewController animated:YES];
    }
    else
    {
        CorrectViewController *correctViewController = [[CorrectViewController alloc] init];
        [self.navigationController pushViewController:correctViewController animated:YES];
    }
}

- (void)optionTwoPressed:(id)sender
{
    if ([question submitAnswer:1] == NO)
    {
        IncorrectViewController *incorrectViewController = [[IncorrectViewController alloc] init];
        [self.navigationController pushViewController:incorrectViewController animated:YES];
    }
    else
    {
        CorrectViewController *correctViewController = [[CorrectViewController alloc] init];
        [self.navigationController pushViewController:correctViewController animated:YES];
    }
}

- (void)optionThreePressed:(id)sender
{
    if ([question submitAnswer:0] == NO)
    {
        IncorrectViewController *incorrectViewController = [[IncorrectViewController alloc] init];
        [self.navigationController pushViewController:incorrectViewController animated:YES];
    }
    else
    {
        CorrectViewController *correctViewController = [[CorrectViewController alloc] init];
        [self.navigationController pushViewController:correctViewController animated:YES];
    }
}

- (void)optionFourPressed:(id)sender
{
    if ([question submitAnswer:0] == NO)
    {
        IncorrectViewController *incorrectViewController = [[IncorrectViewController alloc] init];
        [self.navigationController pushViewController:incorrectViewController animated:YES];
    }
    else
    {
        CorrectViewController *correctViewController = [[CorrectViewController alloc] init];
        [self.navigationController pushViewController:correctViewController animated:YES];
    }
}

@end
