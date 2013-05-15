//
//  OffScreenMenuTab.m
//  OffScreenMenu
//
//  Created by Mike Berlin on 5/15/13.
//  Copyright (c) 2013 Mike Berlin. All rights reserved.
//

#import "OffScreenMenuTab.h"

@implementation OffScreenMenuTab

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
    NSArray *screens = [[NSBundle mainBundle] loadNibNamed:@"OffScreenMenuTab" owner:self options:nil];
    [self addSubview:(OffScreenMenuTab *)[screens objectAtIndex:0]];
}

- (IBAction)openCloseMenu:(id)sender {
    if (self.delegate) {
        if ([self.delegate respondsToSelector:@selector(openCloseTriggered:)]) {
            menuIsOpen = !menuIsOpen;
            [self.delegate openCloseTriggered:menuIsOpen];
        }
    }
}

@end