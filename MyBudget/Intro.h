//
//  Intro.h
//  MyBudget
//
//  Created by Arturo Malta Vargas on 8/25/15.
//  Copyright (c) 2015 Ummagumma. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Intro : UIViewController

//Objects
@property NSUInteger                                iPageIndex;
@property (strong, nonatomic) IBOutlet UIImageView  *imgIntro;
@property (strong, nonatomic) IBOutlet UILabel      *lblIntro;
@property (strong, nonatomic) IBOutlet UIButton *btnIntro;

//Actions
- (IBAction)btnIntroPressed:(id)sender;


@end
