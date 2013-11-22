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
    
    UIImage *comic = [UIImage imageNamed:self.question.comicName];
    [self.comicName setImage:comic];
    
    [self.questionText setText:[self.question questionText]];
    NSArray *options = [self.question options];
    
    if(!self.question.isPictureBased)
    {
        [self.option1 setTitle:[options objectAtIndex:0] forState:UIControlStateNormal];
        [self.option2 setTitle:[options objectAtIndex:1] forState:UIControlStateNormal];
        [self.option3 setTitle:[options objectAtIndex:2] forState:UIControlStateNormal];
        [self.option4 setTitle:[options objectAtIndex:3] forState:UIControlStateNormal];
    }
    
    else
    {
        UIImage *btnImageOne = [UIImage imageNamed:[self.question.options objectAtIndex:0]];
        [self.option1 setImage:btnImageOne forState:UIControlStateNormal];
        [self.option1 setImage:btnImageOne forState:UIControlStateSelected];
        
        UIImage *btnImageTwo = [UIImage imageNamed:[self.question.options objectAtIndex:1]];
        [self.option2 setImage:btnImageTwo forState:UIControlStateNormal];
        [self.option2 setImage:btnImageTwo forState:UIControlStateSelected];
        
        UIImage *btnImageThree = [UIImage imageNamed:[self.question.options objectAtIndex:2]];
        [self.option3 setImage:btnImageThree forState:UIControlStateNormal];
        [self.option3 setImage:btnImageThree forState:UIControlStateSelected];
        
        UIImage *btnImageFour = [UIImage imageNamed:[self.question.options objectAtIndex:3]];
        [self.option4 setImage:btnImageFour forState:UIControlStateNormal];
        [self.option4 setImage:btnImageFour forState:UIControlStateSelected];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)optionOnePressed:(id)sender
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
    
    if (!self.option1.isSelected)
    {
        [self.option1 setSelected:YES];
        [self.answers  insertObject:[NSNumber numberWithBool:YES] atIndex:0];
        
    }
    else
    {
        [self.option1 setSelected:NO];
        [self.answers replaceObjectAtIndex:0 withObject:[NSNumber numberWithBool:NO]];
    }
    
}

- (IBAction)optionTwoPressed:(id)sender
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
    
    if (!self.option2.isSelected)
    {
        [self.option2 setSelected:YES];
        [self.answers insertObject:[NSNumber numberWithBool:YES] atIndex:1];
        
    }
    else
    {
        [self.option2 setSelected:NO];
        [self.answers replaceObjectAtIndex:1 withObject:[NSNumber numberWithBool:NO]];
    }
}

- (IBAction)optionThreePressed:(id)sender
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
    
    if (!self.option3.isSelected)
    {
        [self.option3 setSelected:YES];
        [self.answers insertObject:[NSNumber numberWithBool:YES] atIndex:2];
    }
    
    else
    {
        [self.option3 setSelected:NO];
        [self.answers replaceObjectAtIndex:2 withObject:[NSNumber numberWithBool:NO]];
    }
}

- (IBAction)optionFourPressed:(id)sender
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
    
    if (!self.option4.isSelected)
    {
        [self.option4 setSelected:YES];
        [self.answers insertObject:[NSNumber numberWithBool:YES] atIndex:3];
    }
    else
    {
        [self.option4 setSelected:NO];
        [self.answers replaceObjectAtIndex:3 withObject:[NSNumber numberWithBool:NO]];
    }
    
    
}

- (IBAction)checkButtonPressed:(id)sender
{

    if([self.question submitAnswers:self.answers])
    {
        Correct *correct = [[Correct alloc] init];
        correct.text = self.question.correctResponse;
        CorrectViewController *correctViewController = [[CorrectViewController alloc] initWithCorrectTemplate:correct
                                                                                                      andQuiz:self.quiz];
        [self.navigationController pushViewController:correctViewController animated:YES];
        
    }
    else
    {
        Incorrect *incorrect = [[Incorrect alloc] init];
        incorrect.text = self.question.incorrectResponse;
        
        IncorrectViewController *incorrectViewController = [[IncorrectViewController alloc] initWithIncorrectTemplate:incorrect];
        [self.navigationController pushViewController:incorrectViewController animated:YES];
    }
}


@end
