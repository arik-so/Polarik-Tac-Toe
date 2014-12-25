//
//  FRPlayField.m
//  PolArik Tac Toe
//
//  Created by Frederik Riedel on 25.12.14.
//  Copyright (c) 2014 Frederik Riedel. All rights reserved.
//

#import "FRPlayField.h"

@implementation FRPlayField

-(id) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if(self) {
        float size = MIN(frame.size.width/3, frame.size.height/3);
        
        for(int x=0; x<3; x++) {
            for(int y=0; y<3; y++) {
                UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(x*size, y*size, size, size)];
                button.layer.borderWidth = 1;
                [button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
                [self addSubview:button];
            }
        }
        
    }
    
    
    return self;
}


-(void) buttonPressed:(UIButton *) sender {
    [sender setImage:[UIImage imageNamed:@"Kreuz.png"] forState:UIControlStateNormal];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
