//
//  ContainedView.m
//  MouseDownTest
//
//  Created by Conrad Shultz on 12/14/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ContainedView.h"

@implementation ContainedView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
        self.identifier = @"containedView";        
    }
    
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
    [[NSColor redColor] setFill];
    NSRectFill([self bounds]);
}

- (void)resetCursorRects
{
    NSLog(@"resetCursorRects");
    [super resetCursorRects];
    [self addCursorRect:self.bounds cursor:[NSCursor openHandCursor]];
}

- (void)mouseDown:(NSEvent *)theEvent
{
    [self dragImage:nil
                 at:NSZeroPoint
             offset:NSZeroSize
              event:theEvent
         pasteboard:nil
             source:self
          slideBack:NO];
    
    //[self beginDraggingSessionWithItems:nil event:theEvent source:self];
}

- (void)mouseUp:(NSEvent *)theEvent
{

}

- (void)draggingSession:(NSDraggingSession *)session willBeginAtPoint:(NSPoint)screenPoint
{
    [[NSCursor closedHandCursor] push];
}

- (void)draggingSession:(NSDraggingSession *)session endedAtPoint:(NSPoint)screenPoint operation:(NSDragOperation)operation
{
}

@end
