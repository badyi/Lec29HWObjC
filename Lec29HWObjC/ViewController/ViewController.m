//
//  ViewController.m
//  Lec29HWObjC
//
//  Created by badyi on 05.07.2021.
//
#import <Foundation/Foundation.h>
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed: 0.56 green: 0.21 blue: 0.89 alpha: 1.0];
    
    NSArray *array = [self.dataSource getData];
    NSArray *sortedArray = [self sort:array by: [NSCharacterSet characterSetWithCharactersInString:@"Bb"]];
    
    NSLog(@"%@", sortedArray);
}

- (NSArray *) sort:(NSArray*) array by: (NSCharacterSet*) charSet {
    NSArray *sortedArray = [array sortedArrayUsingComparator:
        ^NSComparisonResult(id obj1, id obj2) {
        
        unsigned long firstObjc = [[obj1 componentsSeparatedByCharactersInSet: charSet] count] - 1;
        
        unsigned long secondObjc = [[obj2 componentsSeparatedByCharactersInSet: charSet] count] - 1;
        
        if (firstObjc > secondObjc) {
            return NSOrderedAscending;
        } else if (firstObjc < secondObjc) {
            return NSOrderedDescending;
        }
        return NSOrderedSame;
    }];
    return sortedArray;
}

@end

