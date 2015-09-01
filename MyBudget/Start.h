//
//  ViewController.h
//  MyBudget
//
//  Created by Arturo Malta Vargas on 8/25/15.
//  Copyright (c) 2015 Ummagumma. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Start : UIViewController <UIPageViewControllerDataSource, UIPageViewControllerDelegate>

@property (strong, nonatomic) UIPageViewController *pageViewController;

@end

