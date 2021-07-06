//
//  DataSourceDelegate.h
//  Lec29HWObjC
//
//  Created by badyi on 06.07.2021.
//

@protocol ViewControllerDataSource <NSObject>
@required
- (NSArray *) getData;
@end
