.class public final Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;
.super Lcom/android/internal/app/ILogAccessDialogCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/logcat/LogcatManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/logcat/LogcatManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    invoke-direct {p0}, Lcom/android/internal/app/ILogAccessDialogCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final approveAccessForClient(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    invoke-direct {v0, p1, p2}, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    const/4 p2, 0x1

    iget-object p1, p1, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    iget-object p2, p0, Lcom/android/server/logcat/LogcatManagerService;->mClock:Lcom/android/server/logcat/LogcatManagerService$Injector$$ExternalSyntheticLambda0;

    invoke-virtual {p2}, Lcom/android/server/logcat/LogcatManagerService$Injector$$ExternalSyntheticLambda0;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final declineAccessForClient(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    invoke-direct {v0, p1, p2}, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    const/4 p2, 0x2

    iget-object p1, p1, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    iget-object p2, p0, Lcom/android/server/logcat/LogcatManagerService;->mClock:Lcom/android/server/logcat/LogcatManagerService$Injector$$ExternalSyntheticLambda0;

    invoke-virtual {p2}, Lcom/android/server/logcat/LogcatManagerService$Injector$$ExternalSyntheticLambda0;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method
