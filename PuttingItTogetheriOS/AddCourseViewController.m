//
//  AddCourseViewController.m
//  PuttingItTogetheriOS
//
//  Created by Michael Vilabrera on 5/3/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import "AddCourseViewController.h"

@interface AddCourseViewController ()

@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UITextField *authorField;
@property (weak, nonatomic) IBOutlet UITextField *dateField;

- (IBAction)cancelButton:(id)sender;
- (IBAction)saveButton:(id)sender;

@end

@implementation AddCourseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.titleField.text = [self.course title];
    self.authorField.text = [self.course author];
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    self.dateField.text = [dateFormat stringFromDate:[self.course releaseDate]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancelButton:(id)sender {
    // dismiss and remove the object
    //[self addCourseViewControllerDidCancel:[self course]];
}

- (IBAction)saveButton:(id)sender {
    // dismiss and save the context
    [self.course setTitle:self.titleField.text];
    [self.course setAuthor:self.authorField.text];
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    [self.course setReleaseDate:[dateFormat dateFromString:self.dateField.text]];
    
    //[self addCourseViewControllerDidSave];
}

//- (void) addCourseViewControllerDidSave
//{
//    
//}
//
//- (void) addCourseViewControllerDidCancel:(Course *)courseToDrop
//{
//    
//}
@end
