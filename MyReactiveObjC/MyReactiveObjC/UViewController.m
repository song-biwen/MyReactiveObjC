//
//  UViewController.m
//  MyReactiveObjC
//
//  Created by LongTu Qi on 2020/9/28.
//

#import "UViewController.h"
#import <ReactiveObjC/ReactiveObjC.h>
#import <ReactiveObjC/RACEXTScope.h>

@interface UViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;//输入框
@property (weak, nonatomic) IBOutlet UILabel *txtLabel;//文本
@property (weak, nonatomic) IBOutlet UIButton *actionButton;//按钮

@property (assign, nonatomic) NSInteger count;//倒计时

@property (strong, nonatomic) RACSignal *timerSignal;//定时器

@end

@implementation UViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    @weakify(self)
    
//    [self.textField.rac_textSignal subscribeNext:^(NSString * _Nullable text) {
//        NSLog(@"%@",text);
//        @strongify(self)
//        self.txtLabel.text = text;
//
//    }];
    

//    [[self.textField.rac_textSignal filter:^BOOL(NSString * _Nullable value) {
//         return value.length > 5;
//     }] subscribeNext:^(NSString * _Nullable x) {
//         @strongify(self)
//         self.txtLabel.text = x;
//     }];
    
    
//    [[self.textField.rac_textSignal map:^id _Nullable(NSString * _Nullable value) {
//            return [NSString stringWithFormat:@"hhhh___%@",value];
//    }] subscribeNext:^(id  _Nullable x) {
//        @strongify(self)
//        self.txtLabel.text = x;
//    }];
    
    //监听输入框内容，并且给文本赋值
//    RAC(self.txtLabel,text) = self.textField.rac_textSignal;
    
//    [[self.textField rac_signalForControlEvents:UIControlEventEditingChanged] subscribeNext:^(__kindof UIControl * _Nullable x) {
//        NSLog(@"%@",[(UITextField *)x text]);
//    }];
    
    //获取验证码
//    [self.actionButton setTitle:@"获取验证码" forState:UIControlStateNormal];
//    [[self.actionButton rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
//        @strongify(self)
//        NSLog(@"按钮被点击了");
//        [self buttonAction];
//    }];
    
    //延迟2秒
//    [[[RACSignal createSignal:^RACDisposable * _Nullable(id<RACSubscriber>  _Nonnull subscriber) {
//            [subscriber sendNext:@"延迟10秒"];
//            return nil;
//        }] delay:10] subscribeNext:^(id  _Nullable x) {
//            NSLog(@"%@",x);
//        }];
    
    //监听按钮标题变化
//    [RACObserve(self.actionButton, titleLabel.text) subscribeNext:^(id  _Nullable x) {
//        NSLog(@"按钮__%@",x);
//    }];
    
    //遍历数组
//    NSArray *array = @[@"1", @"2", @"3", @"4", @"5"];
//    [array.rac_sequence.signal subscribeNext:^(id  _Nullable x) {
//        NSLog(@"%@",x);
//    }];
    
    //监听按钮点击事件
//    [[self rac_signalForSelector:@selector(buttonAction)] subscribeNext:^(RACTuple * _Nullable x) {
//        NSLog(@"%@",x);
//    }];
    
    //RACMulticastConnection -- 用于当一个信号，被多次订阅时，为了保证创建信号时，避免多次调用创建信号中的block
//    RACSignal *signal1 = [RACSignal createSignal:^RACDisposable * _Nullable(id<RACSubscriber>  _Nonnull subscriber) {
//        [subscriber sendNext:@"signal1"];
//        [subscriber sendCompleted];
//        return [RACDisposable disposableWithBlock:^{
//            NSLog(@"signal1被销毁了");
//        }];
//    }];
//
//    RACMulticastConnection *connection = [signal1 publish];
//    [connection.signal subscribeNext:^(id  _Nullable x) {
//        NSLog(@"subscribeNext-->1");
//    }];
//    [connection.signal subscribeNext:^(id  _Nullable x) {
//        NSLog(@"subscribeNext-->1");
//    }];
//    [connection.signal subscribeNext:^(id  _Nullable x) {
//        NSLog(@"subscribeNext-->1");
//    }];
//    [connection connect];
    
    //RACCommand -- 可以监听信号的状态等
//    NSString *input = @"执行";
//    RACCommand *command = [[RACCommand alloc] initWithSignalBlock:^RACSignal * _Nonnull(id  _Nullable input) {
//        return [RACSignal createSignal:^RACDisposable * _Nullable(id<RACSubscriber>  _Nonnull subscriber) {
//            [subscriber sendNext:@"RACCommand"];
//            [subscriber sendError:[NSError errorWithDomain:@"error" code:-1 userInfo:nil]];
//            return [RACDisposable disposableWithBlock:^{
//                NSLog(@"signal销毁了");
//            }];
//        }];
//    }];
//
//    [command.executionSignals subscribeNext:^(RACSignal  *_Nullable x) {
//        NSLog(@"executionSignals-->%@",x);
//        [x subscribeNext:^(id  _Nullable x1) {
//            NSLog(@"executionSignals-->RACSignal-->%@",x1);
//        }];
//    }];
//
//    [[command.executionSignals switchToLatest] subscribeNext:^(id  _Nullable x) {
//        NSLog(@"executionSignals.switchToLatest-->%@",x);
//    }];
//    [command.executing subscribeNext:^(NSNumber * _Nullable x) {
//        NSLog(@"executing-->%@",x);
//    }];
//    [command.errors subscribeNext:^(NSError * _Nullable x) {
//        NSLog(@"errors-->%@",x);
//    }];
//    //开始执行
//    [command execute:input];
    
    RACSignal *signal21 = [RACSignal createSignal:^RACDisposable * _Nullable(id<RACSubscriber>  _Nonnull subscriber) {
        [subscriber sendNext:@"signal21---"];
        [subscriber sendCompleted];
        return nil;
    }];
    
    RACSignal *signal22 = [RACSignal createSignal:^RACDisposable * _Nullable(id<RACSubscriber>  _Nonnull subscriber) {
        [subscriber sendNext:@"signal22---"];
        [subscriber sendCompleted];
        return nil;
    }];
    
    //连接信号
    RACSignal *signal23 = [signal21 concat:signal22];
    [signal23 subscribeNext:^(id  _Nullable x) {
        NSLog(@"signal23---%@",x);
    }];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}


//按钮点击事件
- (void)buttonAction {
    
    self.actionButton.enabled = NO;
    self.count = 60;
    @weakify(self)
    [[[RACSignal interval:1.0 onScheduler:[RACScheduler mainThreadScheduler]] take:self.count] subscribeNext:^(NSDate * _Nullable x) {
        @strongify(self)
        self.count -= 1;
        if (self.count == 0) {
            [self.actionButton setTitle:@"获取验证码" forState:UIControlStateNormal];
            self.actionButton.enabled = YES;
            
        }else {
            [self.actionButton setTitle:[NSString stringWithFormat:@"%@s后重新获取",@(self.count)] forState:UIControlStateNormal];
        }
        
        
    }];
    
}
@end
