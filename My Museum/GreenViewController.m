//
//  GreenViewController.m
//  My Museum
//
//  Created by Anne on 2015/3/10.
//  Copyright (c) 2015年 Anne. All rights reserved.
//

#import "GreenViewController.h"

@interface GreenViewController ()

@end

@implementation GreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *menuBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    menuBtn.center = CGPointMake(0, 15);
    [menuBtn setTitle:@"MENU" forState:UIControlStateNormal];
    menuBtn.titleLabel.font = [UIFont systemFontOfSize: 12];
    menuBtn.titleLabel.textColor = [UIColor blackColor];
    [menuBtn sizeToFit];
    
    UITextView *myTextView = [[UITextView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height/2, 300, 300)];
    myTextView.text = @"翠玉白菜";
    
    [self.view addSubview:menuBtn];
    [self.view addSubview:myTextView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)buttonPressed:(UIButton *)menuBtn {
    NSLog(@"Button Pressed");
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
