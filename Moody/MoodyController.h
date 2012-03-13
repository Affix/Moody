//
//  MoodyController.h
//  Moody
//
//  Created by David Mohl on 18.02.12.
//

#import <Foundation/Foundation.h>

@interface MoodyController : NSObject

- (NSString*)executeApplescriptfile:(NSString *)scriptName;
- (NSString *)executeApplescript:(NSString *)script;
- (void)setSkypeMood:(NSString *)mood;
- (NSString *)getSkypeMood;
- (NSString *)getSpotifySong;
- (bool)isRunning:(NSString *)appname;

@end
