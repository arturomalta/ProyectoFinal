//
//  Home.m
//  MyBudget
//
//  Created by Arturo Malta Vargas on 8/30/15.
//  Copyright (c) 2015 Ummagumma. All rights reserved.
//

#import "Home.h"
#import "Income.h"
#import "Expense.h"

float totalIncome = 0;
float totalExpense = 0;
float balance = 0;

@interface Home ()

@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //Round user image and add a white border
    self.btnIncome.layer.borderColor    = [UIColor clearColor].CGColor;
    self.btnIncome.layer.borderWidth    = 2.0;
    self.btnIncome.clipsToBounds        = YES;
    self.btnIncome.layer.cornerRadius   = 4;
    
    //Round user image and add a white border
    self.btnExpense.layer.borderColor    = [UIColor clearColor].CGColor;
    self.btnExpense.layer.borderWidth    = 2.0;
    self.btnExpense.clipsToBounds        = YES;
    self.btnExpense.layer.cornerRadius   = 4;
    
    //Round user image and add a white border
    self.btnUpdate.layer.borderColor    = [UIColor clearColor].CGColor;
    self.btnUpdate.layer.borderWidth    = 2.0;
    self.btnUpdate.clipsToBounds        = YES;
    self.btnUpdate.layer.cornerRadius   = 4;
    
    self.imgMybudget.image = [UIImage imageNamed:@"intro_02.png"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)calculateIncomes
{
    totalIncome = 0;
    NSLog(@"Outside for loop");
    for(NSString *income in maIncomeAmounts)
    {
        NSLog(@"Inside for loop");
        totalIncome += [income floatValue];
    }
}

- (void)calculateExpenses {
    totalExpense = 0;
    NSLog(@"Outside for loop");
    for(NSString *income in maExpenseAmounts)
    {
        NSLog(@"Inside for loop");
        totalExpense += [income floatValue];
    }
}

- (void)calculateBalance
{
    balance = totalIncome - totalExpense;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)incomeButtonPressed:(id)sender {
    Income *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Income"];
    [self presentViewController:vc animated:YES completion:nil];
    
    //[self calculateIncomes];
    
    //self.lblTotalIncome.text = [NSString stringWithFormat:@"%.2f", totalIncome];
}


- (IBAction)expenseButtonPressed:(id)sender {
    Expense *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Expense"];
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)updateButtonPressed:(id)sender
{
    [self calculateIncomes];
    [self calculateExpenses];
    [self calculateBalance];
    
    self.lblTotalIncome.text = [NSString stringWithFormat:@"%.2f", totalIncome];
    self.lblTotalExpense.text = [NSString stringWithFormat:@"%.2f", totalExpense];
    self.lblBalance.text = [NSString stringWithFormat:@"%.2f", balance];
}
@end
