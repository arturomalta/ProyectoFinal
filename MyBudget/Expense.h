//
//  Expense.h
//  MyBudget
//
//  Created by Arturo Malta Vargas on 8/31/15.
//  Copyright (c) 2015 Ummagumma. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Declarations.h"

@interface Expense : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *tfTitle;
@property (strong, nonatomic) IBOutlet UITextField *tfAmount;

- (IBAction)cancelButtonPressed:(id)sender;
- (IBAction)doneButtonPressed:(id)sender;

@end
