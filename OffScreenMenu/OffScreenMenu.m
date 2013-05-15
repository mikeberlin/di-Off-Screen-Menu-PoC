//
//  OffScreenMenu.m
//  OffScreenMenu
//
//  Created by Mike Berlin on 5/14/13.
//  Copyright (c) 2013 Mike Berlin. All rights reserved.
//

#import "OffScreenMenu.h"

@implementation OffScreenMenu

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self addOffScreenMenuToPrimaryView];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        // Initialization code
        [self addOffScreenMenuToPrimaryView];
    }
    return self;
}

- (void)addOffScreenMenuToPrimaryView
{
    NSArray *screens = [[NSBundle mainBundle] loadNibNamed:@"OffScreenMenu" owner:self options:nil];
    [self addSubview:(OffScreenMenu *)[screens objectAtIndex:0]];
}

@end