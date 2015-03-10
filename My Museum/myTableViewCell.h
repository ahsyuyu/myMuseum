//
//  myTableViewCell.h
//  table
//
//  Created by Anne on 2015/1/30.
//  Copyright (c) 2015年 Anne. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface myTableViewCell : UITableViewCell

//subviews內部

//@property (nonatomic) UIImageView *roundImageView;
//
//@property (nonatomic) UILabel *descLabel;


// setters外部人assign進來的

@property (nonatomic) NSString *descText;

@property (nonatomic) NSString *eachImageView;

@property (nonatomic) UIImage *image;


@end
