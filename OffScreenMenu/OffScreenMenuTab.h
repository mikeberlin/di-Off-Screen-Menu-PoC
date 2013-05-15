//
//  OffScreenMenuTab.h
//  OffScreenMenu
//
//  Created by Mike Berlin on 5/15/13.
//  Copyright (c) 2013 Mike Berlin. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol OffScreenMenuTabDelegate <NSObject>

- (void)openCloseTriggered:(BOOL)openClose;

@end

@interface OffScreenMenuTab : UIView
{
    BOOL menuIsOpen;
}

@property (nonatomic, assign) id <OffScreenMenuTabDelegate> delegate;

@property (nonatomic, strong) IBOutlet UITapGestureRecognizer *tabTap;

@end