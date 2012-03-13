//
//  AppDelegate.h
//  Moody
//
//  Created by David Mohl on 17.02.12.
//

#import <Cocoa/Cocoa.h>
#import "MoodyController.h"

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    NSStatusItem *statusItem;
    MoodyController *moody;
}
- (IBAction)onQuit:(id)sender;

@property (retain) NSString *oldSkypeStatus;
@property (retain) NSString *currentSong;

@property (assign) IBOutlet NSMenu *menu;
@property (weak) IBOutlet NSMenuItem *currentsongItem;

@end
