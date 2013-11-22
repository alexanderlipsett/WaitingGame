//
//  EnglishSelectViewController.m
//  WaitingGame
//
//  Created by Alex Lipsett on 11/19/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import "SelectViewController.h"

@interface SelectViewController ()

@end

@implementation SelectViewController

@synthesize quiz;

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
    self.view.backgroundColor = [UIColor colorWithRed:244/255.0f green:241/255.0f blue:215/255.0f alpha:1.0f];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)basicMechanismsTapped:(id)sender
{
    quiz = [[Quiz alloc] init];
    [quiz addQuestions:basicMechanismPList];
}

- (void)preventionTapped:(id)sender
{
    quiz = [[Quiz alloc] init];
    [quiz addQuestions:preventionPList];
}

- (void)treatmentTapped:(id)sender
{
    quiz = [[Quiz alloc] init];
    [quiz addQuestions:treatmentPList];
}

- (void)potentialComplicationsTapped:(id)sender
{
    quiz = [[Quiz alloc] init];
    [quiz addQuestions:potentialComplicationsPList];
}

@end
