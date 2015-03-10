//
//  ViewController.m
//  My Museum
//
//  Created by Anne on 2015/1/16.
//  Copyright (c) 2015年 Anne. All rights reserved.
//

#import "ViewController.h"
//define global variable(習慣性global variable命名是全大寫)
//用global variable把數字拉出來，這樣如果要改就統一都改這裡，不需要進去程式裡一行一行改
#define BOUNDARY_HORIZONTAL 20
#define BOUNDARY_TOP 50
#define IMG_SIZE 300

@interface ViewController () <UITextViewDelegate>// 1. follow the protocol(點進去可以看有哪些method可以用)
@property (weak, nonatomic) IBOutlet UITextView *myTextView;
@property (weak, nonatomic) IBOutlet UIButton *commentBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view setBackgroundColor:[UIColor purpleColor]];
    
    CIImage *blurImage = [[UIImageView alloc] initWithFrame:CGRectMake((self.view.frame.size.width-IMG_SIZE)/2, BOUNDARY_TOP, IMG_SIZE, IMG_SIZE)];
    
    
    
    UIImageView *myImageView = [[UIImageView alloc] initWithFrame:CGRectMake((self.view.frame.size.width-IMG_SIZE)/2, BOUNDARY_TOP, IMG_SIZE, IMG_SIZE)];
    
    NSLog(@"image size is %f %f",self.view.frame.size.width, self.view.frame.size.height);
    myImageView.image = [UIImage imageNamed:@"white.png"];
    myImageView.clipsToBounds = YES;
    myImageView.layer.cornerRadius = IMG_SIZE/2;
    myImageView.layer.borderColor = [UIColor whiteColor].CGColor;
    myImageView.layer.borderWidth = 1.0;
    
    //myImageView.frame.origin.y == BOUNDARY_TOP
    //myImageView.frame.origin.height == IMG_SIZE

    UITextView *myTextView = [[UITextView alloc] initWithFrame:CGRectMake(0, 450, self.view.frame.size.width, 300)];
    myTextView.backgroundColor = [UIColor grayColor];
    myTextView.text = @"「清　翠玉白菜」是中華民國在臺灣的國立故宮博物院所珍藏的玉器雕刻，長18.7公分，寬9.1公分，厚5.07公分，利用翠玉天然的色澤雕出白菜的形狀。";
    myTextView.textColor = [UIColor whiteColor];
    myTextView.font = [UIFont systemFontOfSize:20];
    myTextView.textContainer.lineFragmentPadding = 20.0;//加padding 留白邊邊(按著command 點進lineFragmentPadding可以知道要送進去的是一個CGFloat)
    
    myTextView.delegate = self; //2. Become the delegate

    [self.view addSubview:myImageView];
    [self.view addSubview:myTextView];


    NSLog(@"hello museum");

}


#pragma UITextViewDelegate method // 3. Implement the delegate methods

- (void)textViewDidBeginEditing:(UITextView *)textView{
    NSLog(@"user has begun typing");
    textView.text = @""; // 清空textView
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
