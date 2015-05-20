//
//  TextFieldViewController.h
//  delegating 2
//
//  Created by Vineet Tiwari on 2015-05-19.
//  Copyright (c) 2015 vinny.co. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TextFieldViewControllerDelegate;

@interface TextFieldViewController : UIViewController

@property (nonatomic, weak) id<TextFieldViewControllerDelegate> delegate;

@end

@protocol TextFieldViewControllerDelegate <NSObject>

- (void) textFieldViewController:(TextFieldViewController *)sender textFieldContentDidChage:(NSString *)textFieldContent;

@end