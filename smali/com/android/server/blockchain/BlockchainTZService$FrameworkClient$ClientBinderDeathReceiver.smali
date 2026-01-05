.class public final Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mReceiver:Landroid/os/IBinder;

.field public final synthetic this$1:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;


# direct methods
.method public constructor <init>(Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    const-string v0, "BlockchainTZService"

    const-string v1, "Error: Framework App dead, unloading loaded TAs"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;->deleteClient()V

    return-void
.end method

.method public final declared-synchronized deleteClient()V
    .locals 5

    const-string v0, "Error: Client stopped. Clearing Databstructures for "

    monitor-enter p0

    :try_start_0
    const-string v1, "BlockchainTZService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;

    iget-object v0, v0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;

    iget-object v0, v0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mCommnInfo:Landroid/blockchain/BlockchainTZServiceCommnInfo;

    iget-object v0, v0, Landroid/blockchain/BlockchainTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;

    iget-object v2, v2, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mCommnInfo:Landroid/blockchain/BlockchainTZServiceCommnInfo;

    iget-object v2, v2, Landroid/blockchain/BlockchainTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/blockchain/TAController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0x101

    if-ne v1, v3, :cond_1

    iget-boolean v1, v2, Lcom/android/server/blockchain/TAController;->SET_QSEE_SECURE_UI:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/blockchain/BlockchainTZService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/blockchain/Utils;->sendSecureUIAbortIntent(Landroid/content/Context;)V

    const-string v1, "BlockchainTZService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendSecureUIAbortIntent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_1
    const/16 v3, 0xa

    if-ge v1, v3, :cond_1

    iget-boolean v3, v2, Lcom/android/server/blockchain/TAController;->SET_QSEE_SECURE_UI:Z

    if-nez v3, :cond_0

    const-string v1, "BlockchainTZService"

    const-string/jumbo v3, "secureUI unsetted"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_4

    :cond_0
    const-wide/16 v3, 0x64

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_1
    :try_start_3
    const-string v3, "BlockchainTZService"

    const-string v4, "Failed to put thread to sleep!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_3
    invoke-virtual {v2}, Lcom/android/server/blockchain/TAController;->unloadTA()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_4
    :try_start_4
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;

    iget-object v1, v0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->this$0:Lcom/android/server/blockchain/BlockchainTZService;

    iget-object v1, v1, Lcom/android/server/blockchain/BlockchainTZService;->mRegisteredFWKClientMap:Ljava/util/Map;

    iget-object v0, v0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mPackageName:Ljava/lang/String;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :goto_5
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method
