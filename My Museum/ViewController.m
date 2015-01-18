//
//  ViewController.m
//  My Museum
//
//  Created by Anne on 2015/1/16.
//  Copyright (c) 2015年 Anne. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *myTextView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //[self.view setBackgroundColor:[UIColor grayColor]];
    UIImageView *myImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 50, 400, 400)];
    myImageView.image = [UIImage imageNamed:@"white.png"];
    
    myImageView.layer.borderColor = [UIColor blackColor].CGColor;
    
    UITextView *myTextView = [[UITextView alloc] initWithFrame:CGRectMake(0, 450, 350, 300)];
//    myTextView.backgroundColor = [UIColor blackColor];
    myTextView.text = @"「清　翠玉白菜」是中華民國在臺灣的國立故宮博物院所珍藏的玉器雕刻，長18.7公分，寬9.1公分，厚5.07公分，利用翠玉天然的色澤雕出白菜的形狀。";
//    myTextView.textColor = [UIColor whiteColor];
    myTextView.font = [UIFont systemFontOfSize:20];
    
    
    [self.view addSubview:myImageView];
    [self.view addSubview:myTextView];

    NSLog(@"hello museum");

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
