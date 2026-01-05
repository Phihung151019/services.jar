.class public final Lcom/android/server/soundtrigger/DeviceStateHandler$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/soundtrigger/DeviceStateHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger/DeviceStateHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$1;->this$0:Lcom/android/server/soundtrigger/DeviceStateHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$1;->this$0:Lcom/android/server/soundtrigger/DeviceStateHandler;

    iget-object v0, v0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$1;->this$0:Lcom/android/server/soundtrigger/DeviceStateHandler;

    iget-object v2, v1, Lcom/android/server/soundtrigger/DeviceStateHandler;->mPhoneStateChangePendingNotify:Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;->mRunnable:Lcom/android/server/soundtrigger/DeviceStateHandler$1;

    if-ne v2, p0, :cond_0

    const/4 p0, 0x0

    iput-object p0, v1, Lcom/android/server/soundtrigger/DeviceStateHandler;->mPhoneStateChangePendingNotify:Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;

    invoke-virtual {v1}, Lcom/android/server/soundtrigger/DeviceStateHandler;->evaluateStateChange()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
