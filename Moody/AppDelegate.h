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
- (IBAction)prefAction:(id)sender;
- (IBAction)hideAction:(id)sender;

@property (assign) IBOutlet NSMenu *menu;
@property (retain) NSString *oldSkypeStatus;
@property (retain) NSString *currentSong;
@property (weak) IBOutlet NSMenuItem *pollingItem;
@property (unsafe_unretained) IBOutlet NSWindow *prefWindow;

@end
