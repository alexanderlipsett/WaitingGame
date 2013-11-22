//
//  CorrectViewController.m
//  WaitingGame
//
//  Created by Alex Lipsett on 11/20/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import "CorrectViewController.h"

@interface CorrectViewController ()

@end

@implementation CorrectViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(id)initWithCorrectTemplate:(Correct *)correctTemplate andQuiz:(Quiz *)quiz
{
    self = [super self];
    if (self)
    {
        self.correct = correctTemplate;
        self.quiz = quiz;
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self.description setText:self.correct.description];
    self.comicName = [self.correct comicName];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextPressed:(id)sender{
    
}
@end
