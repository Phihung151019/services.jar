.class public Lcom/android/server/isrb/IsrbManagerService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mIsrbManagerServiceImpl:Lcom/android/server/isrb/IsrbManagerServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-direct {v0}, Lcom/samsung/android/isrb/IIsrbManager$Stub;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mSystemReady:Z

    iput-boolean v1, v0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mBootComplete:Z

    iput-boolean v1, v0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mIsSystemErrPopup:Z

    iput-boolean v1, v0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mIsNetworkReady:Z

    iput v1, v0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mErrAlertNum:I

    iput v1, v0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsTime:I

    iput v1, v0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsDate:I

    iput v1, v0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsMonth:I

    iput v1, v0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsYear:I

    iput-object p1, v0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/isrb/IsrbManagerService;->mIsrbManagerServiceImpl:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 4

    const/16 v0, 0x258

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerService;->mIsrbManagerServiceImpl:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mSystemReady:Z

    if-nez p1, :cond_0

    iput-boolean v1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mSystemReady:Z

    :cond_0
    new-instance p1, Landroid/os/HandlerThread;

    const-string/jumbo v0, "MessageISRBThread"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mLooper:Landroid/os/Looper;

    new-instance p1, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;

    iget-object v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mLooper:Landroid/os/Looper;

    invoke-direct {p1, p0, v0}, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;-><init>(Lcom/android/server/isrb/IsrbManagerServiceImpl;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mHandler:Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;

    return-void

    :cond_1
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_3

    iget-boolean p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mBootComplete:Z

    if-nez p1, :cond_2

    iput-boolean v1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mBootComplete:Z

    :cond_2
    const-string/jumbo p1, "persist.sys.enable_isrb"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mHandler:Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;

    const/4 v0, 0x3

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string p1, "IsrbManagerServiceImpl"

    const-string/jumbo v0, "PROP_ENABLE_ISRB:disable"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mHandler:Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v0, 0xafc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    return-void
.end method

.method public final onStart()V
    .locals 2

    const-string/jumbo v0, "isrb"

    iget-object v1, p0, Lcom/android/server/isrb/IsrbManagerService;->mIsrbManagerServiceImpl:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
