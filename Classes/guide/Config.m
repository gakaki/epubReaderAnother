//
//  Config.m
//  AePubReader
//
//  Created by 贺 贤明 on 13-10-19.
//
//

#import "Config.h"

#define k_is_showed_new_guide @"is_showed_new_guide"

@implementation Config

+(BOOL)is_showed_new_guide
{
    int res  = [[NSUserDefaults standardUserDefaults]boolForKey:k_is_showed_new_guide];
    return res;
}
+(void)set_showed_new_guide
{
    [[NSUserDefaults standardUserDefaults]setBool:YES forKey:k_is_showed_new_guide];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
@end
