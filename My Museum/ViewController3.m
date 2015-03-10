//
//  ViewController3.m
//  My Museum
//
//  Created by Anne on 2015/1/23.
//  Copyright (c) 2015年 Anne. All rights reserved.
//

#import "ViewController3.h"
#define MYTEXTVIEW_HEIGHT 200
#define MYTEXTVIEW_WIDTH 300


@interface ViewController3 () <UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UIButton *highlightBtn;
@property (weak, nonatomic) IBOutlet UITextView *toHighlight;
@property (weak, nonatomic) IBOutlet UIButton *unHighlightBtn;
@property (weak, nonatomic) IBOutlet UITextView *commentTextView;
@property (weak, nonatomic) IBOutlet UILabel *wordCounterLabel;



@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    UITextView *myTextView = [[UITextView alloc] initWithFrame:CGRectMake((self.view.frame.size.width - MYTEXTVIEW_WIDTH) / 2, 50, MYTEXTVIEW_WIDTH,MYTEXTVIEW_HEIGHT) ];
//    myTextView.backgroundColor = [UIColor grayColor];
//    myTextView.textColor= [UIColor whiteColor];
//    myTextView.text = @"「清　翠玉白菜」是中華民國在臺灣的國立故宮博物院所珍藏的玉器雕刻，長18.7公分，寬9.1公分，厚5.07公分，利用翠玉天然的色澤雕出白菜的形狀。";
//    myTextView.font = [UIFont systemFontOfSize:20];
    
    
    self.toHighlight.frame = CGRectMake((self.view.frame.size.width - MYTEXTVIEW_WIDTH) / 2, 50, MYTEXTVIEW_WIDTH,MYTEXTVIEW_HEIGHT);
    self.toHighlight.text = @"「清　翠玉白菜」是中華民國在臺灣的國立故宮博物院所珍藏的玉器雕刻，長18.7公分，寬9.1公分，厚5.07公分，利用翠玉天然的色澤雕出白菜的形狀。";
    //self.toHighlight.font = [UIFont systemFontOfSize:20];
    
    [self.highlightBtn setTitle:@"highlight" forState:UIControlStateNormal];
    [self.highlightBtn addTarget:self action:@selector(highlighted) forControlEvents:UIControlEventTouchUpInside];

    [self.unHighlightBtn setTitle:@"unhighlight" forState:UIControlStateNormal];
    [self.unHighlightBtn addTarget:self action:@selector(unHighlighted) forControlEvents:UIControlEventTouchUpInside];
    
    self.commentTextView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.commentTextView.layer.borderWidth = 1.0;
    
    self.commentTextView.delegate = self;
    
    //[self.view addSubview:myTextView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)highlighted{
    NSLog(@"highlighted");
    //[_highlightBtn setTitle:@"123" forState:UIControlStateNormal];
    _toHighlight.textColor = [UIColor blueColor];
    _toHighlight.font = [UIFont boldSystemFontOfSize:14];
}

- (void)unHighlighted{
    _toHighlight.textColor = [UIColor blackColor];
    _toHighlight.font = [UIFont systemFontOfSize:14];
}

- (void)textViewDidBeginEditing:(UITextView *)textView{
    _commentTextView.text = @"";
}

- (void)textViewDidChange:(UITextView *)textView{
    NSUInteger len =textView.text.length;
    _wordCounterLabel.text=[NSString stringWithFormat:@"%lu character left",10-len];
    NSLog(@"%lu", (unsigned long)len );
    if(len >= 10){
//        textView.editable = NO;
        [textView resignFirstResponder];
        textView.textColor =[UIColor redColor];
    }
}

- (void)textViewDidEndEditing:(UITextView *)textView{
    
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
