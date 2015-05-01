//
//  Course.h
//  
//
//  Created by Michael Vilabrera on 5/1/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Course : NSManagedObject

@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * author;
@property (nonatomic, retain) NSDate * releaseDate;

@end
