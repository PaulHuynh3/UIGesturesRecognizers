//
//  TabViewController.m
//  UIGestureRecognizers
//
//  Created by Paul on 2017-09-14.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "TabViewController.h"

@interface TabViewController ()

@end

@implementation TabViewController

-(void)viewDidLoad{

    [super viewDidLoad];

    CGFloat width = 100;
    CGFloat height = 100;
    
    
    CGRect rect = CGRectMake(CGRectGetMidX(self.view.bounds) - width/2 , CGRectGetMidY(self.view.bounds) - height/2, width, height);
    

    UIView *view = [[UIView alloc]initWithFrame:rect];
    
    view.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:view];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapSquare:)];
    
    [view addGestureRecognizer:tapGesture];
    

}

-(void)tapSquare:(UITapGestureRecognizer*)sender{
    UIColor* color = [UIColor brownColor];
    
   //the square uses a background color.
  //switches background color everytime its tapped
    if ([sender.view.backgroundColor isEqual:color]) {
        sender.view.backgroundColor = [UIColor orangeColor];
    
    } else {
       sender.view.backgroundColor = [UIColor brownColor];
    
    }

    
}

@end
