//
//  ViewController.m
//  PassingData2
//
//  Created by 戸田 真紀 on 2017-03-13.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    self.textFiled.text = self.textContent;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"toInput"]) {
        
        SecondViewController *controller = (SecondViewController *) segue.destinationViewController;
        
        controller.textContent = self.textFiled.text;
    }
}


@end
