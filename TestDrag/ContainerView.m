//
//  ContainerView.m
//  MouseDownTest
//
//  Created by Conrad Shultz on 12/14/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ContainerView.h"

@implementation ContainerView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
        self.identifier = @"containerView";
    }
    
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
    [[NSColor whiteColor] setFill];
    NSRectFill([self bounds]);
}

@end
