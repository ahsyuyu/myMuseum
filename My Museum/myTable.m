//
//  ViewController.m
//  table
//
//  Created by Anne on 2015/1/30.
//  Copyright (c) 2015年 Anne. All rights reserved.
//

#import "myTable.h"
#import "myTableViewCell.h"
#import "GreenViewController.h"
#import "ViewController.h"
#import "GreenViewController.h"

@interface myTable () <UITableViewDataSource, UITableViewDelegate>
//1. 加入protocol
//按著command點進去看UITableViewDataSource有2個require method 這兩個method都一定要用到，使用的方法：直接複製點進去的整行method 尾巴;去掉改{}貼到下面
@property UITableView *myTableView;

@end

@implementation myTable

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.myTableView = [[UITableView alloc] initWithFrame:CGRectMake(30, 30, 300, 500)];
    
    self.myTableView.dataSource = self;//2. 加入protocol
    self.myTableView.delegate = self; //follow 此protocol 可以implement此
    
    [self.myTableView registerClass:[myTableViewCell class] forCellReuseIdentifier:@"cell"];
    [self.view addSubview:self.myTableView]; //_myTableView = self.myTableView
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma UITableViewDataSource methods
//NSInteger: 要return的東西是integer
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 15;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //myTableViewCell *cell = [[myTableViewCell alloc]init];//改成自己做的myTableViewCell
    NSArray *imageNames = @[@"green.jpg",@"box.jpg",@"meat.jpg",@"boat.jpg",@"bowl.jpg"];
    NSArray *itemNames = @[@"翠玉白菜",@"鍍金內填琺瑯累絲盒",@"肉形石",@"橄欖核小舟",@"磁胎洋彩山水 意轉旋大碗"];
    
    myTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    //    cell.textLabel.text = [NSString stringWithFormat:@"label%lu",indexPath.row+1];
    
    cell.descText = [NSString stringWithFormat:@"%@",itemNames[(long)indexPath.row]];//給myTableViewCell descText
    NSString *eachImageName = imageNames[(long)indexPath.row];

    cell.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",eachImageName]];
    //cell.imageView.layer.cornerRadius = 4;

    //cell.image = [UIImage imageNamed:@"d.png"];//給myTableViewCell.h image
    //NSLog(@"%ld",(long)indexPath.length);
    NSLog(@"%@",eachImageName);
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;{
    return 100.0;
}

-(void)tableView:(UITableView *)tableView didHighlightRowAtIndexPath:(NSIndexPath *)indexPath{
    //NSLog(@"i am highlighted");
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"%ld",(long)indexPath.row);
    //主要工作區
    ViewController *vc = [[ViewController alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
}
//--------------------------------
//-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//    //ViewController2 *vc2 = [[ViewController2 alloc] init];
//    //前面要includeViewController2
//    [self presentationController: vc2 animated: YES completion:nil];
//}


@end
