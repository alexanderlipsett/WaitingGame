//
//  Quiz.m
//  WaitingGame
//
//  Created by Alex Lipsett on 11/20/13.
//  Copyright (c) 2013 Alex Lipsett. All rights reserved.
//

#import "Quiz.h"
#import "MultipleChoiceQuestion.h"
#import "TrueFalseQuestion.h"
#import "CategorizationQuestion.h"
#import "Summary.h"

@implementation Quiz

-(void)readPlist:(NSString *)quizName
{
    NSString *pListPath = [[NSBundle mainBundle] pathForResource:quizName ofType:@"plist"];
    NSDictionary *quiz = [[NSDictionary alloc] initWithContentsOfFile:pListPath];
    
    NSDictionary *metadata = [quiz objectForKey:@"metadata"];
    
    self.quizTitle = [metadata objectForKey:@"quizTitle"];
    self.totalQuestions = [metadata objectForKey:@"numberOfQuestions"];
    
    for (int i = 0; i < [self.totalQuestions intValue]; i++)
    {
        NSString *questionName = [NSString stringWithFormat:@"question%d", i];
        NSDictionary *question = [quiz objectForKey:questionName];
        NSNumber *type = [question objectForKey:@"questionType"];
        
        if ([type intValue]==0)
        {
            TrueFalseQuestion *tfQuest = [[TrueFalseQuestion alloc] init];
            
            NSString *comic = [question objectForKey:@"comicName"];
            tfQuest.comicName = comic;
            
            NSString *questionText = [question objectForKey:@"questionText"];
            tfQuest.questionText = questionText;
            
            BOOL correctAnswer = [question objectForKey:@"correctAnswer"];
            tfQuest.correctAnswer = correctAnswer;
            
            NSString *correctResponse = [question objectForKey:@"correctResponse"];
            tfQuest.correctResponse = correctResponse;
            
            NSString *incorrectResponse = [question objectForKey:@"incorrectResponse"];
            tfQuest.incorrectResponse = incorrectResponse;
            
            [self.questions addObject:tfQuest];
        }
        
        else if ([type intValue]==1)
        {
            MultipleChoiceQuestion *mcQuest = [[MultipleChoiceQuestion alloc] init];
            
            NSString *comicName = [question objectForKey:@"comicName"];
            mcQuest.comicName = comicName;
            
            NSString *questionText = [question objectForKey:@"questionText"];
            mcQuest.questionText = questionText;
            
            NSString *optionOne = [question objectForKey:@"option1"];
            [mcQuest.options
            
            
            
        }
        
        
    }
    
}
@end
