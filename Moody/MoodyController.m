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

/*
 * Executes the specific applescript file
 */

- (NSString*)executeApplescriptfile:(NSString *)scriptName {
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *scriptPath = [bundle pathForResource:scriptName ofType:@"applescript"];
    NSAppleScript *script = [[NSAppleScript alloc] initWithContentsOfURL:[NSURL fileURLWithPath:scriptPath] error:nil];
    
    NSString *result = [[script executeAndReturnError:nil] stringValue];
    return result;
}

/*
 * As the name says, executes applescript and returns the result
 */

- (NSString *)executeApplescript:(NSString *)script {    
    NSAppleScript *applescript = [[NSAppleScript alloc] initWithSource:script];
    NSString *result = [[applescript executeAndReturnError:nil] stringValue];
    return result;
}

- (bool)isRunning:(NSString *)appname {
    NSString *script = [NSString stringWithFormat:@"tell application \"System Events\" to (name of processes) contains \"%@\"", appname];
    NSString *result = [self executeApplescript:script];
    return [result boolValue];
}

- (void)setSkypeMood:(NSString *)mood {
    NSLog(@"Setting Mood: %@", mood);
    /*
    NSString *script = [NSString stringWithFormat:@"tell application \"Skype\" \n" 
                        "send command \"SET PROFILE MOOD_TEXT %@\" script name \"Moody\" \n"
                        "end tell", mood];
    [self executeApplescript:script];
     */
}

- (NSString *)getSkypeMood {
    return [self executeApplescriptfile:@"skype_oldmood"];
}

- (NSString *)getSpotifySong {
    return [self executeApplescriptfile:@"spotify_currentsong"];        
}
@end
