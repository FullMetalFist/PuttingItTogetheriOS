//
//  CoursesTableViewController.h
//  PuttingItTogetheriOS
//
//  Created by Michael Vilabrera on 5/1/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface CoursesTableViewController : UITableViewController

@property (nonatomic) NSManagedObjectContext *managedObjectContext;

@property (nonatomic) NSFetchedResultsController *fetchedResultsController;

@end
