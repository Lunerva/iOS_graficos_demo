//
//  Graficos.m
//  app_graficos1
//
//  Created by Luis Barranco on 25/10/24.
//

#import "Graficos.h"

@implementation Graficos

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
 */
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef canvas = UIGraphicsGetCurrentContext();
    
    CGContextSetStrokeColorWithColor(canvas, [UIColor orangeColor].CGColor);
    
    CGContextSetLineWidth(canvas, 5.5);
    CGContextMoveToPoint(canvas, 150, 50);
    //rombo
    CGContextAddLineToPoint(canvas, 250, 250);
    CGContextAddLineToPoint(canvas, 150, 450);
    CGContextAddLineToPoint(canvas, 50, 250);
    CGContextAddLineToPoint(canvas, 150, 50);
    CGContextStrokePath(canvas);

    //rectangulo
    CGContextSetStrokeColorWithColor(canvas, [UIColor magentaColor].CGColor);
    CGRect rectangulo = CGRectMake(50, 50, 50, 50);
    CGContextAddRect(canvas, rectangulo);
    CGContextStrokePath(canvas);
    CGContextSetFillColorWithColor(canvas, [UIColor purpleColor].CGColor);
    CGContextFillRect(canvas, rectangulo);

    //triangulo
    CGContextMoveToPoint(canvas, 150, 70);
    CGContextSetStrokeColorWithColor(canvas, [UIColor redColor].CGColor);
    CGContextAddLineToPoint(canvas, 220, 250);
    CGContextAddLineToPoint(canvas, 80, 250);
    CGContextAddLineToPoint(canvas, 150, 70);
    CGContextStrokePath(canvas);
    
    
    // curva de bezier
    CGContextSetStrokeColorWithColor(canvas, [UIColor greenColor].CGColor);
    CGContextMoveToPoint(canvas, 0, 450);
    CGContextAddLineToPoint(canvas, 100, 200);
    CGContextAddCurveToPoint(canvas, 60, 420, 380, 100, 180, 20);
    CGContextStrokePath(canvas);
    
}


@end
