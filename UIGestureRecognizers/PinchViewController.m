//
//  PinchViewController.m
//  UIGestureRecognizers
//
//  Created by Paul on 2017-09-14.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "PinchViewController.h"

@interface PinchViewController ()

@end

@implementation PinchViewController

-(void)viewDidLoad{
    
    [super viewDidLoad];
    
    //making a square
    CGFloat width = 100;
    CGFloat height = 100;
    
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds) - width/2, CGRectGetMidY(self.view.bounds) - height/2, width, height);
    
    UIView *view = [[UIView alloc]initWithFrame:frame];
    
    view.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:view];
    
    UIPinchGestureRecognizer *pinchGesture = [[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(viewPinch:)];
    
    [view addGestureRecognizer:pinchGesture];
    
}

-(void)viewPinch:(UIPinchGestureRecognizer*)sender{
    CGFloat scale = sender.scale;
    sender.view.transform = CGAffineTransformMakeScale(scale, scale);

}



@end
