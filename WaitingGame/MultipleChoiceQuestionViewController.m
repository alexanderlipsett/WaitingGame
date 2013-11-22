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


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(id)initWithQuestion:(MultipleChoiceQuestion *)question andQuiz:(Quiz *)quiz
{
    self = [super self];
    
    if (self)
    {
        self.question = question;
        self.quiz = quiz;
    }
    
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.questionText setText:[self.question questionText]];
    NSArray *options = [self.question options];
    
    if(!self.question.isPictureBased)
    {
        [self.optionOne setTitle:[options objectAtIndex:0] forState:UIControlStateNormal];
        [self.optionTwo setTitle:[options objectAtIndex:1] forState:UIControlStateNormal];
        [self.optionThree setTitle:[options objectAtIndex:2] forState:UIControlStateNormal];
        [self.optionFour setTitle:[options objectAtIndex:3] forState:UIControlStateNormal];
    }
    
    else
    {
        UIImage *btnImageOne = [UIImage imageNamed:[self.question.options objectAtIndex:0]];
        [self.optionOne setImage:btnImageOne forState:UIControlStateNormal];
        [self.optionOne setImage:btnImageOne forState:UIControlStateSelected];
        
        UIImage *btnImageTwo = [UIImage imageNamed:[self.question.options objectAtIndex:1]];
        [self.optionTwo setImage:btnImageTwo forState:UIControlStateNormal];
        [self.optionTwo setImage:btnImageTwo forState:UIControlStateSelected];
        
        UIImage *btnImageThree = [UIImage imageNamed:[self.question.options objectAtIndex:2]];
        [self.optionThree setImage:btnImageThree forState:UIControlStateNormal];
        [self.optionThree setImage:btnImageThree forState:UIControlStateSelected];
        
        UIImage *btnImageFour = [UIImage imageNamed:[self.question.options objectAtIndex:3]];
        [self.optionFour setImage:btnImageFour forState:UIControlStateNormal];
        [self.optionFour setImage:btnImageFour forState:UIControlStateSelected];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)optionOnePressed:(id)sender
{
    /*
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
    */
    
    if (!self.optionOne.isSelected)
    {
        [self.optionOne setSelected:YES];
        [self.answers  insertObject:[NSNumber numberWithBool:YES] atIndex:0];
        
    }
    else
    {
        [self.optionOne setSelected:NO];
        [self.answers replaceObjectAtIndex:0 withObject:[NSNumber numberWithBool:NO]];
    }
    
}

- (void)optionTwoPressed:(id)sender
{
    /*
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
     */
    
    if (!self.optionTwo.isSelected)
    {
        [self.optionTwo setSelected:YES];
        [self.answers insertObject:[NSNumber numberWithBool:YES] atIndex:1];
        
    }
    else
    {
        [self.optionTwo setSelected:NO];
        [self.answers replaceObjectAtIndex:1 withObject:[NSNumber numberWithBool:NO]];
    }
}

- (void)optionThreePressed:(id)sender
{
    
    /*
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
     */
    
    if (!self.optionThree.isSelected)
    {
        [self.optionThree setSelected:YES];
        [self.answers insertObject:[NSNumber numberWithBool:YES] atIndex:2];
    }
    
    else
    {
        [self.optionThree setSelected:NO];
        [self.answers replaceObjectAtIndex:2 withObject:[NSNumber numberWithBool:NO]];
    }
}

- (void)optionFourPressed:(id)sender
{
    /*
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
     */
    
    if (!self.optionFour.isSelected)
    {
        [self.optionFour setSelected:YES];
        [self.answers insertObject:[NSNumber numberWithBool:YES] atIndex:3];
    }
    else
    {
        [self.optionFour setSelected:NO];
        [self.answers replaceObjectAtIndex:3 withObject:[NSNumber numberWithBool:NO]];
    }
    
    
}

- (IBAction)checkButtonPressed:(id)sender
{
    if([self.question submitAnswers:self.answers])
    {
        //move to correct view controller, pass along state info
    }
    else
    {
        //move to incorrect view, pass along state info
    }
}


@end
