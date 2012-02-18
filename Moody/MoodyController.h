//
//  MoodyController.h
//  Moody
//
//  Created by David Mohl on 18.02.12.
//

#import <Foundation/Foundation.h>

@interface MoodyController : NSObject

- (void)setPollingInterval:(int)interval;
- (NSString*)executeApplescriptfile:(NSString *)scriptName;
- (void)executeApplescript:(NSString *)script;
- (void)setSkypeMood:(NSString *)mood;
- (NSString *)getSkypeMood;
- (NSString *)getSpotifySong;

@end
