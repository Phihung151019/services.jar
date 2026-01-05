.class public final Lcom/android/server/dreams/DreamController$DreamRecord;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/content/ServiceConnection;


# instance fields
.field public mAppTask:Lcom/android/server/wm/AppTaskImpl;

.field public mBound:Z

.field public final mCanDoze:Z

.field public mConnected:Z

.field public mDreamIsObscured:Z

.field public mDreamStartTime:J

.field public final mDreamingStartedCallback:Lcom/android/server/dreams/DreamController$DreamRecord$1;

.field public final mIsPreviewMode:Z

.field public final mName:Landroid/content/ComponentName;

.field public final mReleaseWakeLockIfNeeded:Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

.field public mService:Landroid/service/dreams/IDreamService;

.field public final mStopPreviousDreamsIfNeeded:Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

.field public mStopReason:Ljava/lang/String;

.field public final mStopStubbornDreamRunnable:Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

.field public final mStopUnconnectedDreamRunnable:Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

.field public final mToken:Landroid/os/Binder;

.field public final mUserId:I

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mWakingGently:Z

.field public final synthetic this$0:Lcom/android/server/dreams/DreamController;


# direct methods
.method public constructor <init>(Lcom/android/server/dreams/DreamController;Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    new-instance v0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;I)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopPreviousDreamsIfNeeded:Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    new-instance v0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;I)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mReleaseWakeLockIfNeeded:Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    new-instance v1, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;I)V

    iput-object v1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopUnconnectedDreamRunnable:Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    new-instance v1, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;I)V

    iput-object v1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopStubbornDreamRunnable:Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    new-instance v1, Lcom/android/server/dreams/DreamController$DreamRecord$1;

    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamController$DreamRecord$1;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    iput-object v1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mDreamingStartedCallback:Lcom/android/server/dreams/DreamController$DreamRecord$1;

    iput-object p2, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    iput-object p3, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mName:Landroid/content/ComponentName;

    iput-boolean p4, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsPreviewMode:Z

    iput-boolean p5, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    iput p6, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mUserId:I

    iput-object p7, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p7, :cond_0

    invoke-virtual {p7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    iget-object p0, p1, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x2710

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    iget-object v0, v0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    iget-object p1, p1, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;Landroid/os/IBinder;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    iget-object p1, p1, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final releaseWakeLockIfNeeded()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    iget-object v0, v0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mReleaseWakeLockIfNeeded:Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
