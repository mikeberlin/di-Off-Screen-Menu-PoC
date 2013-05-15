//
//  OffScreenMenu.h
//  OffScreenMenu
//
//  Created by Mike Berlin on 5/14/13.
//  Copyright (c) 2013 Mike Berlin. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol OffScreenMenuDelegate <NSObject>

@end

@interface OffScreenMenu : UIView

@property (nonatomic, assign) id <OffScreenMenuDelegate> delegate;

@end