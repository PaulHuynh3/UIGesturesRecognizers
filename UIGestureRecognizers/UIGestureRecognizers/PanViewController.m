//
//  PanViewController.m
//  UIGestureRecognizers
//
//  Created by Paul on 2017-09-14.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "PanViewController.h"

@interface PanViewController ()

@end

@implementation PanViewController
//cgpoint detects the object where it was created..

- (IBAction)redViewPan:(UIPanGestureRecognizer *)sender {
    //takes the CGpoint where the object is created using the old CGPoint we can calculate where the users moves by old - new cgpoint
    CGPoint location = [sender locationInView:self.view];
    
    sender.view.center = location;
    
}

@end
