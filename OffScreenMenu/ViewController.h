//
//  ViewController.h
//  OffScreenMenu
//
//  Created by Mike Berlin on 5/14/13.
//  Copyright (c) 2013 Mike Berlin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OffScreenMenu.h"
#import "OffScreenMenuTab.h"

@interface ViewController : UIViewController <OffScreenMenuDelegate, OffScreenMenuTabDelegate>

@property (nonatomic, strong) IBOutlet OffScreenMenu *osMenu;
@property (nonatomic, strong) IBOutlet OffScreenMenuTab *osTab;

@end