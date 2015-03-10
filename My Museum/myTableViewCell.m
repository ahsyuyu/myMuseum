//
//  myTableViewCell.m
//  table
//
//  Created by Anne on 2015/1/30.
//  Copyright (c) 2015年 Anne. All rights reserved.
//

#import "myTableViewCell.h"


#define IMG_SIZE 60
@interface myTableViewCell()//

@property (nonatomic, readwrite) UIImageView *roundImageView;//

@property (nonatomic, readwrite) UILabel *descLabel;//

@end//

@implementation myTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self){
        [self.contentView addSubview:self.roundImageView];//在這個cell要做的事
        [self.contentView addSubview:self.descLabel];//在這個cell要做的事
    }
    return self;
}

- (UIImageView *)roundImageView {
    if(!_roundImageView) {
        _roundImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, IMG_SIZE, IMG_SIZE)];
        _roundImageView.layer.cornerRadius = IMG_SIZE/2;
    }
    return _roundImageView;
}

- (UILabel *) descLabel {
    if(!_descLabel){
        _descLabel = [[UILabel alloc] initWithFrame:CGRectMake(15+IMG_SIZE, 15, 200, 30)];
    }
    return _descLabel;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

#pragma Setter

- (void)setImage:(UIImage *)image{
    _roundImageView.image = image;

}

- (void)setDescText:(NSString *)descText{
    _descLabel.text = descText;
}

@end

