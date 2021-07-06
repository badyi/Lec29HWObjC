//
//  DataSourceService.m
//  Lec29HWObjC
//
//  Created by badyi on 06.07.2021.
//

#import <Foundation/Foundation.h>

@implementation DataSourceService : NSObject
- (NSArray *) getData {
    NSArray *array = [NSArray arrayWithObjects:@"Hello",@"Kitty",@"Boom",@"Bubble",@"Gym",@"Google",@"BBOY", nil];
    return  array;
}

@end

