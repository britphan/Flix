//
//  MovieCell.m
//  Flix
//
//  Created by Britney Phan on 6/28/18.
//  Copyright © 2018 Britney Phan. All rights reserved.
//

#import "MovieCell.h"

@implementation MovieCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
    UIColor *color = self.shadowView.backgroundColor;
    if(selected) {
        self.shadowView.backgroundColor=color;
        [UIView animateWithDuration:0.2 animations:^{
            self.shadowView.alpha = 0.2;
        }];
    }
    else {
        self.shadowView.backgroundColor = color;
        [UIView animateWithDuration:0.2 animations:^{
            self.shadowView.alpha = 0.5;
        }];
    }
}

@end
