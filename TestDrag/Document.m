//
//  Document.m
//  TestDrag
//
//  Created by Panupan Sriautharawong on 9/17/12.
//  Copyright (c) 2012 WILL Interactive, Inc. All rights reserved.
//

#import "Document.h"


@implementation NSWindow(Hack)
@end

@implementation NSToolbar(Hack)
@end

@interface NSToolbarView : NSView
@end
@interface NSToolbarView (Hack)
@end
@implementation NSToolbarView (Hack)

@end

@interface NSThemeFrame : NSView
@end
@interface NSThemeFrame (Hack)
@end
@implementation NSThemeFrame (Hack)
@end

/*
 @implementation NSCursor(Hack)
 - (void)set
 {
 NSLog(@"%@",[NSThread callStackSymbols]);
 }
 @end
 */

/*
@interface NSDragDestination : NSObject {
    unsigned long long _lastDragDestinationOperation;
}
@end
@implementation NSDragDestination(NSToolbarFix)
- (void)_setLastDragDestinationOperation:(unsigned long long)arg1;
{
    // Fixes NSToolbar breaking default NSCursor behavior, e.g., cursor image on initial drag.
    _lastDragDestinationOperation = arg1;
}
@end
*/

@implementation Document

- (id)init
{
    self = [super init];
    if (self) {
        // Add your subclass-specific initialization here.
    }
    return self;
}

- (NSString *)windowNibName
{
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"Document";
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
    [super windowControllerDidLoadNib:aController];
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
    //[self.windowForSheet toggleToolbarShown:self];
    //NSToolbar *toolbar = self.windowForSheet.toolbar;
    NSView *contentView = self.windowForSheet.contentView;
    NSView *toolbarView = [contentView.superview.subviews lastObject];
    toolbarView.identifier = @"toolbarView";
    //[toolbarView removeFromSuperview];
    
    //[toolbarView removeFromSuperview];
    
    NSLog(@"contentView.superview: %@", contentView.superview);
    /*
    NSLog(@"self.windowForSheet.toolbar: %@", self.windowForSheet.toolbar);
    
    NSLog(@"self.windowForSheet.initialFirstResponder: %@", self.windowForSheet.initialFirstResponder);
    NSLog(@"self.windowForSheet.firstResponder: %@", self.windowForSheet.firstResponder);
    
    
    NSLog(@"contentView.superview.subviews: %@", contentView.superview.subviews);
    [self printNextResponders:contentView];
    */
    
    //NSLog(@"contentView.nextValidKeyView: %@", contentView.nextValidKeyView);
    //[self.windowForSheet disableCursorRects];
    //[self.windowForSheet discardCursorRects];
}

- (void)printNextResponders:(NSResponder *)responder
{
    NSLog(@"nextResponder: %@", responder);
    if (responder.nextResponder) {
        [self printNextResponders:responder.nextResponder];
    }
}

+ (BOOL)autosavesInPlace
{
    return YES;
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError
{
    // Insert code here to write your document to data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning nil.
    // You can also choose to override -fileWrapperOfType:error:, -writeToURL:ofType:error:, or -writeToURL:ofType:forSaveOperation:originalContentsURL:error: instead.
    NSException *exception = [NSException exceptionWithName:@"UnimplementedMethod" reason:[NSString stringWithFormat:@"%@ is unimplemented", NSStringFromSelector(_cmd)] userInfo:nil];
    @throw exception;
    return nil;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError
{
    // Insert code here to read your document from the given data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning NO.
    // You can also choose to override -readFromFileWrapper:ofType:error: or -readFromURL:ofType:error: instead.
    // If you override either of these, you should also override -isEntireFileLoaded to return NO if the contents are lazily loaded.
    NSException *exception = [NSException exceptionWithName:@"UnimplementedMethod" reason:[NSString stringWithFormat:@"%@ is unimplemented", NSStringFromSelector(_cmd)] userInfo:nil];
    @throw exception;
    return YES;
}

@end
