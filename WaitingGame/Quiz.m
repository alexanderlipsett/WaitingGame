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
#import "FourPanelComicTemplate.h"
#import "WideComicTemplate.h"

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
        
        if ([type intValue]==1)
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
        
        else if ([type intValue]==2)
        {
            MultipleChoiceQuestion *mcQuest = [[MultipleChoiceQuestion alloc] init];
            
            NSString *comicName = [question objectForKey:@"comicName"];
            mcQuest.comicName = comicName;
            
            NSString *questionText = [question objectForKey:@"questionText"];
            mcQuest.questionText = questionText;
            
            NSString *optionOne = [question objectForKey:@"option1"];
            [mcQuest.options addObject:optionOne];
            
            NSString *optionTwo = [question objectForKey:@"option2"];
            [mcQuest.options addObject:optionTwo];
            
            NSString *optionThree = [question objectForKey:@"option3"];
            [mcQuest.options addObject:optionThree];
            
            NSString *optionFour = [question objectForKey:@"option4"];
            [mcQuest.options addObject:optionFour];
            
            NSMutableArray *correctAnswers = [question objectForKey:@"correctAnswers"];
            mcQuest.answers = correctAnswers;
            
            BOOL isPictureBased = [question objectForKey:@"isPictureBased"];
            mcQuest.isPictureBased = isPictureBased;
            
            NSString *correctResponse = [question objectForKey:@"correctResponse"];
            mcQuest.correctResponse = correctResponse;
            
            NSString *incorrectResponse = [question objectForKey:@"incorrectResponse"];
            mcQuest.incorrectResponse = incorrectResponse;
            
            [self.questions addObject:mcQuest];
        }
        
        else if([type intValue]==3)
        {
            CategorizationQuestion *catQuest = [[CategorizationQuestion alloc] init];
            
            NSString *comicName = [question objectForKey:@"comicName"];
            catQuest.comicName = comicName;
            
            NSString *questionText = [question objectForKey:@"questionText"];
            catQuest.questionText = questionText;
            
            NSMutableDictionary *options = [question objectForKey:@"options"];
            catQuest.options = options;
            
            NSString *correctResponse = [question objectForKey:@"correctResponse"];
            catQuest.correctResponse = correctResponse;
            
            NSString *incorrectResponse = [question objectForKey:@"incorrectResponse"];
            catQuest.incorrectResponse = incorrectResponse;
            
            [self.questions addObject:catQuest];
        }
        
        else if([type intValue]==4)
        {
            FourPanelComicTemplate *fourComic = [[FourPanelComicTemplate alloc] init];
            
            NSString *comicOne = [question objectForKey:@"comic1"];
            NSString *comicTwo = [question objectForKey:@"comic2"];
            NSString *comicThree = [question objectForKey:@"comic3"];
            NSString *comicFour = [question objectForKey:@"comic4"];
            
            fourComic.comicOne = comicOne;
            fourComic.comicTwo = comicTwo;
            fourComic.comicThree = comicThree;
            fourComic.comicFour = comicFour;
            
            [self.questions addObject:fourComic];
        }
        
        else if([type intValue]==5)
        {
            WideComicTemplate *wideComic = [[WideComicTemplate alloc] init];
            
            NSString *comicName = [question objectForKey:@"comicName"];
            NSString *text = [question objectForKey:@"comicText"];
            
            wideComic.comicName = comicName;
            wideComic.text = text;
            
            [self.questions addObject:wideComic];
        }
    }
    
    NSDictionary *summary = [quiz objectForKey:@"summary"];
    
    Summary *sum = [[Summary alloc] init];
    
    NSString *goodSummaryImage = [summary objectForKey:@"goodSummaryImage"];
    NSString *badSummaryImage = [summary objectForKey:@"badSummaryImage"];
    NSString *goodSummaryText = [summary objectForKey:@"goodSummaryText"];
    NSString *badSummaryText = [summary objectForKey:@"badSummaryText"];
    NSNumber *threshold = [summary objectForKey:@"goodThreshold"];
    
    sum.goodTitle

    
}

- (BOOL)quizIsDone:(NSNumber *)currentQuestion
{
    BOOL done = YES;
    if (currentQuestion != [self totalQuestions])
    {
        done = NO;
    }
    return done;
}
@end
