.class public final Lcom/android/server/logcat/LogcatManagerService$BinderService;
.super Landroid/os/logcat/ILogcatManagerService$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/logcat/LogcatManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/logcat/LogcatManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService$BinderService;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    invoke-direct {p0}, Landroid/os/logcat/ILogcatManagerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final finishThread(IIII)V
    .locals 1

    new-instance v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;-><init>(IIII)V

    iget-object p1, p0, Lcom/android/server/logcat/LogcatManagerService$BinderService;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    const/4 p2, 0x3

    iget-object p1, p1, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService$BinderService;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    iget-object p2, p0, Lcom/android/server/logcat/LogcatManagerService;->mClock:Lcom/android/server/logcat/LogcatManagerService$Injector$$ExternalSyntheticLambda0;

    invoke-virtual {p2}, Lcom/android/server/logcat/LogcatManagerService$Injector$$ExternalSyntheticLambda0;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final onKnoxSecurityLogEvent(Landroid/os/logcat/SecurityLogEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService$BinderService;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    const/16 v1, 0x64

    iget-object v0, v0, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService$BinderService;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mSecurityLogHandlerCallback:Lcom/android/server/logcat/LogcatManagerService$KnoxSecurityLogHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final startThread(IIII)V
    .locals 1

    new-instance v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;-><init>(IIII)V

    iget-object p1, p0, Lcom/android/server/logcat/LogcatManagerService$BinderService;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    const/4 p2, 0x0

    iget-object p1, p1, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService$BinderService;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    iget-object p2, p0, Lcom/android/server/logcat/LogcatManagerService;->mClock:Lcom/android/server/logcat/LogcatManagerService$Injector$$ExternalSyntheticLambda0;

    invoke-virtual {p2}, Lcom/android/server/logcat/LogcatManagerService$Injector$$ExternalSyntheticLambda0;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method
