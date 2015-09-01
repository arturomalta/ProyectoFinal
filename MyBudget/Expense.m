//
//  Expense.m
//  MyBudget
//
//  Created by Arturo Malta Vargas on 8/31/15.
//  Copyright (c) 2015 Ummagumma. All rights reserved.
//

#import "Expense.h"

@interface Expense ()

@end

@implementation Expense

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tfAmount.keyboardType = UIKeyboardTypeNumberPad;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)cancelButtonPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)doneButtonPressed:(id)sender {
    
    NSLog(@"In doneButtonPressed Expenses");
    NSString *enteredTitle = [_tfTitle text];
    NSString *enteredAmount = [_tfAmount text];
    
    [maExpenseTitles addObject:enteredTitle];
    [maExpenseAmounts addObject:enteredAmount];
    
    NSLog([maExpenseTitles objectAtIndex:0]);
    NSLog([maExpenseAmounts objectAtIndex:0]);
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
