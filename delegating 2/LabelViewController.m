//
//  ViewController.m
//  delegating 2
//
//  Created by Vineet Tiwari on 2015-05-19.
//  Copyright (c) 2015 vinny.co. All rights reserved.
//

#import "LabelViewController.h"
#import "TextFieldViewController.h"

@interface LabelViewController () <TextFieldViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation LabelViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (void)textFieldViewController:(TextFieldViewController *)sender textFieldContentDidChage:(NSString *)textFieldContent {

  self.label.text = textFieldContent;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

  if ([segue.identifier isEqualToString:@"presentModally"]) {

    TextFieldViewController *destinationViewController = (TextFieldViewController *)segue.destinationViewController;
    destinationViewController.delegate = self;
  }
}

@end









