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

@synthesize currentQuestion;

-(void)readPlist:(NSString *)quizName
{
    NSString *pListPath = [[NSBundle mainBundle] pathForResource:quizName ofType:@"plist"];
    NSLog(@"%@", pListPath);
    NSDictionary *quiz = [[NSDictionary alloc] initWithContentsOfFile:pListPath];
    
    NSDictionary *metadata = [quiz objectForKey:@"metadata"];
    
    self.quizTitle = [metadata objectForKey:@"quizTitle"];
    self.totalQuestions = [[metadata objectForKey:@"numberOfQuestions"] intValue];
    self.questions = [[NSMutableArray alloc] init];
    
    NSLog(@"Total Questions is: %d", self.totalQuestions);
    self.currentQuestion = 0;
    
    for (int i = 0; i < self.totalQuestions + 1; i++)
    {
        NSString *questionName = [NSString stringWithFormat:@"question%d", i + 1];
//        NSLog(@"Question %d Name: %@", i, [NSString stringWithFormat:@"question%d", i + 1]);
        NSDictionary *question = [quiz objectForKey:questionName];
        NSNumber *type = [question objectForKey:@"questionType"];
        int intType = [type intValue];
//        NSLog(@"Integer Type: %d", intType);
        
        if ([type intValue]==1)
        {
            NSLog(@"True and False question");
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
<<<<<<< HEAD

=======
            
            NSString *trueQuestionLabel = [question objectForKey:@"trueQuestionLabel"];
            tfQuest.trueQuestionLabel = trueQuestionLabel;
            
            NSString *falseQuestionLabel = [question objectForKey@"falseQuestionLabel"];
            tfQuest.falseQuestionLabel = falseQuestionLabel;
            
            
>>>>>>> 73879da0c37eb53df30f2bc2d072839b5e340e3e
            [self.questions addObject:tfQuest];
            NSLog(@"Size of the questions array is: %d", [self.questions count]);
        }
        
        else if ([type intValue]==2)
        {
            NSLog(@"Multiple Choice question");
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
            NSLog(@"Categorization question");
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
            NSLog(@"Four Panel comic");
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
            NSLog(@"Wide comic");
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
    
    //sum.goodTitle;

    sum.goodComic = goodSummaryImage;
    sum.badComic = badSummaryImage;
    sum.goodDescription = goodSummaryText;
    sum.badDescription = badSummaryText;
    sum.threshold = threshold;
    
    [self.questions addObject:sum];
    
}

- (BOOL)quizIsDone
{
    BOOL done = NO;
    if (self.currentQuestion == self.totalQuestions)
    {
        done = YES;
    }
    return done;
}

- (void)incrementCurrentQuestion
{
    currentQuestion++;
}
@end
