//
//  MoodyController.m
//  Moody
//
//  Created by David Mohl on 18.02.12.
//

#import "MoodyController.h"

@implementation MoodyController

- (void)setPollingInterval:(int)interval {
    NSLog(@"INterval: %i", interval);
}
- (NSString*)executeApplescriptfile:(NSString *)scriptName {
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *scriptPath = [bundle pathForResource:scriptName ofType:@"applescript"];
    NSAppleScript *script = [[NSAppleScript alloc] initWithContentsOfURL:[NSURL fileURLWithPath:scriptPath] error:nil];
    
    NSString *result = [[script executeAndReturnError:nil] stringValue];
    return result;
}

- (void)executeApplescript:(NSString *)script {    
    NSAppleScript *applescript = [[NSAppleScript alloc] initWithSource:script];
    [applescript executeAndReturnError:nil];
}

- (void)setSkypeMood:(NSString *)mood {
    NSString *script = [NSString stringWithFormat:@"tell application \"Skype\" \n" 
                        "send command \"SET PROFILE MOOD_TEXT %@\" script name \"Moody\" \n"
                        "end tell", mood];
    [self executeApplescript:script];
}

- (NSString *)getSkypeMood {
    return [self executeApplescriptfile:@"skype_oldmood"];
}

- (NSString *)getSpotifySong {
    return [self executeApplescriptfile:@"spotify_currentsong"];
}
@end
