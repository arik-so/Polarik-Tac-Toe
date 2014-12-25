//
//  MainViewController.m
//  MealHub
//
//  Created by Frederik Riedel on 18.12.14.
//  Copyright (c) 2014 Frederik Riedel. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    
    self.title=@"PolArik Tac Toe";
    self.view.backgroundColor=[UIColor whiteColor];
    [super viewDidLoad];
    
    FRPlayField *playFiled = [[FRPlayField alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height)];

    [self.view addSubview:playFiled];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
