//
//  Home.h
//  MyBudget
//
//  Created by Arturo Malta Vargas on 8/30/15.
//  Copyright (c) 2015 Ummagumma. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Home : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *btnIncome;
@property (strong, nonatomic) IBOutlet UIButton *btnExpense;
@property (strong, nonatomic) IBOutlet UIButton *btnUpdate;
@property (strong, nonatomic) IBOutlet UILabel *lblTotalIncome;
@property (strong, nonatomic) IBOutlet UILabel *lblTotalExpense;
@property (strong, nonatomic) IBOutlet UILabel *lblBalance;
@property (strong, nonatomic) IBOutlet UIImageView *imgMybudget;

- (IBAction)incomeButtonPressed:(id)sender;
- (IBAction)expenseButtonPressed:(id)sender;
- (IBAction)updateButtonPressed:(id)sender;

@end
