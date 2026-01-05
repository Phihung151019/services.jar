.class public final Lcom/android/server/am/PersistentConnection$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/PersistentConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/am/PersistentConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 4

    const-string p1, "Binding died: "

    const-string v0, "Binding died: "

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    iget-object v1, v1, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    iget-boolean v3, v2, Lcom/android/server/am/PersistentConnection;->mBound:Z

    if-nez v3, :cond_0

    iget-object p1, v2, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    iget-object v0, v0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " u"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    iget p0, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " but not bound, ignore."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v0, v2, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    iget-object p1, p1, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " u"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    iget p1, p1, Lcom/android/server/am/PersistentConnection;->mUserId:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    iget p1, p0, Lcom/android/server/am/PersistentConnection;->mNumBindingDied:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/am/PersistentConnection;->mNumBindingDied:I

    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->scheduleRebindLocked()V

    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    const-string p1, "Connected: "

    const-string v0, "Connected: "

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    iget-object v1, v1, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    iget-boolean v3, v2, Lcom/android/server/am/PersistentConnection;->mBound:Z

    if-nez v3, :cond_0

    iget-object p1, v2, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    iget-object v0, v0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " u"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    iget p0, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " but not bound, ignore."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v0, v2, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    iget-object p1, p1, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " u"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    iget p1, p1, Lcom/android/server/am/PersistentConnection;->mUserId:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    iget v0, p1, Lcom/android/server/am/PersistentConnection;->mNumConnected:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p1, Lcom/android/server/am/PersistentConnection;->mNumConnected:I

    iput-boolean v2, p1, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    invoke-virtual {p1}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/am/PersistentConnection;->mLastConnectedTime:J

    iget-object p1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-virtual {p1, p2}, Lcom/android/server/am/PersistentConnection;->asInterface(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p1, Lcom/android/server/am/PersistentConnection;->mService:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    iget-object p1, p0, Lcom/android/server/am/PersistentConnection;->mStableCheck:Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1}, Lcom/android/server/am/PersistentConnection;->injectRemoveCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/server/am/PersistentConnection;->mStableCheck:Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/am/PersistentConnection;->mResetBackoffDelay:J

    add-long/2addr v2, v4

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/am/PersistentConnection;->injectPostAtTime(Ljava/lang/Runnable;J)V

    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string p1, "Disconnected: "

    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    iget-object v0, v0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    iget-object v1, v1, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    iget-object p1, p1, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " u"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    iget p1, p1, Lcom/android/server/am/PersistentConnection;->mUserId:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    iget p1, p0, Lcom/android/server/am/PersistentConnection;->mNumDisconnected:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/am/PersistentConnection;->mNumDisconnected:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    iget-object p1, p0, Lcom/android/server/am/PersistentConnection;->mStableCheck:Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1}, Lcom/android/server/am/PersistentConnection;->injectRemoveCallbacks(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
