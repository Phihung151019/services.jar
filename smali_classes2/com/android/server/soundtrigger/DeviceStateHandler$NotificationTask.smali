.class public final Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mCancelLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mRunnable:Lcom/android/server/soundtrigger/DeviceStateHandler$1;

.field public final mWaitInMillis:J


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger/DeviceStateHandler$1;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;->mCancelLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;->mRunnable:Lcom/android/server/soundtrigger/DeviceStateHandler$1;

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;->mWaitInMillis:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;->mCancelLatch:Ljava/util/concurrent/CountDownLatch;

    iget-wide v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;->mWaitInMillis:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;->mRunnable:Lcom/android/server/soundtrigger/DeviceStateHandler$1;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger/DeviceStateHandler$1;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Unexpected InterruptedException"

    invoke-direct {v0, v1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
