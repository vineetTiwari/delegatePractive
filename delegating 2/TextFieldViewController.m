//
//  TextFieldViewController.m
//  delegating 2
//
//  Created by Vineet Tiwari on 2015-05-19.
//  Copyright (c) 2015 vinny.co. All rights reserved.
//

#import "TextFieldViewController.h"

@interface TextFieldViewController ()

@end

@implementation TextFieldViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)textChange:(UITextField *)sender {

  if ([self.delegate respondsToSelector:@selector(textFieldViewController:textFieldContentDidChage:)]) {

    [self.delegate textFieldViewController:self textFieldContentDidChage:sender.text];
  }

}

- (IBAction)buttonTapped {

  [self dismissViewControllerAnimated:YES completion:nil];
}



@end
