//
//  ViewController.m
//  OffScreenMenu
//
//  Created by Mike Berlin on 5/14/13.
//  Copyright (c) 2013 Mike Berlin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    self.osMenu.delegate = self;
    self.osTab.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)openCloseTriggered:(BOOL)openClose {
    if (openClose) {
        // animate open
        [UIView animateWithDuration:0.5
                              delay:0.0
                            options:UIViewAnimationOptionCurveEaseInOut
                         animations:^{
                             self.osMenu.frame = CGRectMake(0, self.osMenu.frame.origin.y + 250, self.osMenu.frame.size.width, self.osMenu.frame.size.height);
                             self.osTab.frame = CGRectMake(self.osTab.frame.origin.x, self.osTab.frame.origin.y + 250, self.osTab.frame.size.width, self.osTab.frame.size.height);
                         }
                         completion:^(BOOL finished){
                         }
         ];
    }
    else {
        // animate close
        [UIView animateWithDuration:0.5
                              delay:0.0
                            options:UIViewAnimationOptionCurveEaseInOut
                         animations:^{
                             self.osMenu.frame = CGRectMake(0, self.osMenu.frame.origin.y - 250, self.osMenu.frame.size.width, self.osMenu.frame.size.height);
                             self.osTab.frame = CGRectMake(self.osTab.frame.origin.x, self.osTab.frame.origin.y - 250, self.osTab.frame.size.width, self.osTab.frame.size.height);
                         }
                         completion:^(BOOL finished){
                         }
         ];
    }
}

@end