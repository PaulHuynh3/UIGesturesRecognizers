//
//  SwipeViewController.m
//  UIGestureRecognizers
//
//  Created by Paul on 2017-09-14.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "SwipeViewController.h"

@interface SwipeViewController ()

@property bool open;

@end

@implementation SwipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    

}

- (IBAction)swipeLeft:(UISwipeGestureRecognizer*)sender {
    CGPoint location = [sender locationInView:self.view];
    sender.view.center = location;
}



/*
 //takes the CGpoint where the object is created using the old CGPoint we can calculate where the users moves by old - new cgpoint
 CGPoint location = [sender locationInView:self.view];
 
 sender.view.center = location
 
 */


@end
