.class public final Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDeferredMap:Landroid/util/ArrayMap;

.field public final mLock:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/server/DropBoxManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mLock:Ljava/lang/Object;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mDeferredMap:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mDeferredMap:Landroid/util/ArrayMap;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->prepareAndSendBroadcast(Landroid/content/Intent;Z)V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->prepareAndSendBroadcast(Landroid/content/Intent;Z)V

    return-void
.end method

.method public final maybeDeferBroadcast(JLjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mDeferredMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mDeferredMap:Landroid/util/ArrayMap;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.DROPBOX_ENTRY_ADDED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "tag"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "time"

    invoke-virtual {v3, v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo p1, "android.os.extra.DROPPED_COUNT"

    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1, p3, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->this$0:Lcom/android/server/DropBoxManagerService;

    iget-wide p2, p2, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "time"

    invoke-virtual {v1, p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo p0, "android.os.extra.DROPPED_COUNT"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string/jumbo p1, "android.os.extra.DROPPED_COUNT"

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v1, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final prepareAndSendBroadcast(Landroid/content/Intent;Z)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->this$0:Lcom/android/server/DropBoxManagerService;

    iget-boolean v0, v0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    const-wide/32 v1, 0x11a58811

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/BroadcastOptions;->setRequireCompatChange(JZ)V

    const-string/jumbo v3, "android.intent.action.DROPBOX_ENTRY_ADDED"

    const/4 v4, 0x2

    const-string/jumbo v5, "tag"

    if-eqz p2, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-READ_DROPBOX_DATA"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v7

    invoke-virtual {v7, v3, v6}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    move-result-object v6

    sget-object v7, Lcom/android/server/DropBoxManagerService;->sDropboxEntryAddedExtrasMerger:Landroid/os/BundleMerger;

    invoke-virtual {v6, v7}, Landroid/app/BroadcastOptions;->setDeliveryGroupExtrasMerger(Landroid/os/BundleMerger;)Landroid/app/BroadcastOptions;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    :cond_1
    iget-object v6, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v6}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v8, "android.permission.READ_DROPBOX_DATA"

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v6, p1, v7, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v2, v6}, Landroid/app/BroadcastOptions;->setRequireCompatChange(JZ)V

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-READ_LOGS"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v4}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v1

    invoke-virtual {v1, v3, p2}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    move-result-object p2

    sget-object v1, Lcom/android/server/DropBoxManagerService;->sDropboxEntryAddedExtrasMerger:Landroid/os/BundleMerger;

    invoke-virtual {p2, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupExtrasMerger(Landroid/os/BundleMerger;)Landroid/app/BroadcastOptions;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    :cond_2
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo p2, "android.permission.READ_LOGS"

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v7, p2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
