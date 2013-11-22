//
//  IncorrectViewController.m
//  WaitingGame
//
//  Created by Alex Lipsett on 11/20/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import "IncorrectViewController.h"

@interface IncorrectViewController ()

@end

@implementation IncorrectViewController

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
    UIImage *comic = [UIImage imageNamed:self.incorrect.comicName];
    [self.image setImage:comic];
    
    [self.description setText:self.incorrect.description];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tryAgainButtonPressed:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
@end
