//
//  ViewController.h
//  Lec29HWObjC
//
//  Created by badyi on 05.07.2021.
//

#import <UIKit/UIKit.h>
#import "ViewControllerDataSource.h"

@interface ViewController : UIViewController

@property (nonatomic, strong) id<ViewControllerDataSource> dataSource;
//@property (weak, nonnull) ViewControllerDataSource *dataSource;

@end

