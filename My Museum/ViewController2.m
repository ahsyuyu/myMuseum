//
//  ViewController2.m
//  My Museum
//
//  Created by Anne on 2015/1/22.
//  Copyright (c) 2015年 Anne. All rights reserved.
//

#import "ViewController2.h"
#define BOUNDARY_HORIZONTAL 20
#define BOUNDARY_TOP 50
#define IMG_SIZE 300

@interface ViewController2 ()
//從storyboard拉過來放這裡
//如果要重新連除了文字要刪掉，也要在storyboard該元件上按右鍵在Referencing Outlet內取消連結
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@property (weak, nonatomic) IBOutlet UIButton *myButton;

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor purpleColor]];
    
    NSLog(@"image size is %f %f",self.view.frame.size.width, self.view.frame.size.height);
    self.imageView.frame = CGRectMake(0,0,100,100);//改變imageView的大小，但是在這裡是由storyboard拉出來，而storyboard有contrain這個大小，所以無法改
    self.imageView.image = [UIImage imageNamed:@"white.png"];
    self.imageView.clipsToBounds = YES;
    self.imageView.layer.cornerRadius = IMG_SIZE/2;
    self.imageView.layer.borderColor = [UIColor whiteColor].CGColor;
    self.imageView.layer.borderWidth = 1.0;
    
    

    self.textView.backgroundColor = [UIColor grayColor];
    self.textView.text = @"「清　翠玉白菜」是中華民國在臺灣的國立故宮博物院所珍藏的玉器雕刻，長18.7公分，寬9.1公分，厚5.07公分，利用翠玉天然的色澤雕出白菜的形狀。";
    self.textView.textColor = [UIColor whiteColor];
    self.textView.font = [UIFont systemFontOfSize:20];
    self.textView.textContainer.lineFragmentPadding = 20.0;//加padding 留白邊邊(按著command 點進lineFragmentPadding可以知道要送進去的是一個CGFloat)
    
    ////////////////////////button////////////////////
    [self.myButton setTitle:@"click me" forState:UIControlStateNormal];
    [self.myButton addTarget:self action:@selector(onClicked) forControlEvents:UIControlEventTouchUpInside];//=onClicked is method name
    
    
    
    //premitive
    int i = 1;
    CGFloat f = 1.0;
    BOOL yesOrNo = YES;
    
    //Value Object
    NSString *string = @"123";
    NSDate *date = [NSDate new];
    NSNumber *numberOfInt = [NSNumber numberWithInt:i]; // 用object打包起來才能放進array
    NSNumber *numberOfFloat = [NSNumber numberWithFloat:f];// 用object包起來才能放進array
    NSNumber *numberOfBoolean = [NSNumber numberWithBool:yesOrNo];// 用object包起來才能放進array
    
    //Collection Objects
    NSArray *array = @[string,string,string];
    NSMutableArray *mutableArray = [[NSMutableArray alloc] initWithArray:array];
    [mutableArray addObject:@"456"];//push
    mutableArray[0] = @"456"; //改變array內的值
    
    NSDictionary *dictionary = @{@"Name":@"Anne",
                                 @"sex":@"female",
                                 @"3":@"xyz",
                                 @"int":numberOfInt
                                 };
    NSMutableDictionary *mutDictionary = [[NSMutableDictionary alloc] initWithDictionary:dictionary];
    [mutDictionary setObject:numberOfBoolean forKey:@"B"]; // 在dictionary加上新的值
    NSLog(@"Name is %@",mutDictionary[@"B"]);
    
    NSLog(@"dictionary item %@", [dictionary  valueForKey:@"Name"]);
    //只要呼叫一個method都要用[]包起來
    NSLog(@"array item 0 %@" ,array[0]);
    
    
    NSLog(@"dimension of a square whose size is 20 is %i",[self getDimension:20]);
    NSLog(@"dimension of a square whose size is 20 is %i",[self getDimensionOfWidth:20 height:50]);
}


// make a method
//- (return 的值)methodName(input)
- (int)getDimension:(int)size { //- (int)getDimension:(int)size; 放到.h就可以被外部呼叫
    return size * size;
}

- (int)getDimensionOfWidth:(int)width height:(int)height {
    return width * height;
}

- (void)onClicked {
    NSLog(@"button clicked");
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
