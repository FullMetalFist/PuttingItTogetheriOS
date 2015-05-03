//
//  AddCourseViewController.h
//  PuttingItTogetheriOS
//
//  Created by Michael Vilabrera on 5/3/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Course.h"

@protocol AddCourseViewControllerDelegate;




@interface AddCourseViewController : UIViewController

@property (nonatomic) Course *course;

@property (nonatomic, weak) id <AddCourseViewControllerDelegate> delegate;

- (void) addCourseViewControllerDidSave;
- (void) addCourseViewControllerDidCancel:(Course *)courseToDrop;

@end
