//
//  NSArray+Extensions.m
//
//  Created by yuan on 13-11-19.
//  Copyright (c) 2013年 http://www.heyuan110.com. All rights reserved.
//

#import "NSArray+Extensions.h"

@implementation NSArray (NSArray_Extensions)

- (BOOL)writeToFile:(NSString *)path{
    NSData * data = [NSKeyedArchiver archivedDataWithRootObject:self];
    return [data writeToFile:path
                  atomically:YES];
}

+(NSArray*)readFile:(NSString*)path{
    NSData * data = [NSData dataWithContentsOfFile:path];
    return  [NSKeyedUnarchiver unarchiveObjectWithData:data];
}
@end

@implementation NSDictionary (NSDictionary_Extensions)
- (BOOL)writeToFile:(NSString *)path{
    NSData * data = [NSKeyedArchiver archivedDataWithRootObject:self];
    return [data writeToFile:path
                  atomically:YES];
}

+(NSArray*)readFile:(NSString*)path{
    NSData * data = [NSData dataWithContentsOfFile:path];
    return  [NSKeyedUnarchiver unarchiveObjectWithData:data];
}
@end
