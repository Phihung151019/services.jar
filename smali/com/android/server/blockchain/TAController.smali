.class public final Lcom/android/server/blockchain/TAController;
.super Landroid/blockchain/ITAController$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public SET_QSEE_SECURE_UI:Z

.field public mContext:Landroid/content/Context;

.field public mNative:Lcom/android/server/blockchain/BlockchainTZNative;

.field public mTAId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/server/blockchain/BlockchainTZService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/blockchain/TAController;->DEBUG:Z

    return-void
.end method


# virtual methods
.method public final loadTA(Landroid/os/ParcelFileDescriptor;JJ)Z
    .locals 7

    const-string/jumbo v0, "TA fd="

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "loadTA"

    invoke-static {v1}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/blockchain/TAController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v2, "BlockchainTZService"

    const-string/jumbo v3, "TAController::loadTA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    if-eqz v1, :cond_2

    const-string v1, "BlockchainTZService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " offset="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " size="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/blockchain/TAController;->mNative:Lcom/android/server/blockchain/BlockchainTZNative;

    iget-object v1, p0, Lcom/android/server/blockchain/TAController;->mContext:Landroid/content/Context;

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/blockchain/BlockchainTZNative;->loadTA(Landroid/content/Context;IJJ)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return p2

    :catchall_1
    move-exception v0

    move-object p2, v0

    :try_start_4
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object p1, v0

    :try_start_5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    throw p2

    :goto_3
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public final processTACommand(Landroid/blockchain/TACommandRequest;)Landroid/blockchain/TACommandResponse;
    .locals 3

    const-string/jumbo v0, "TAController::processTACommand: request = "

    invoke-virtual {p0}, Landroid/blockchain/ITAController$Stub;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "processTACommand"

    invoke-static {v1}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/blockchain/TAController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "BlockchainTZService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; request.mCommandId = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/blockchain/TACommandRequest;->mCommandId:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; this.mTAId = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/blockchain/TAController;->mTAId:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget v0, p1, Landroid/blockchain/TACommandRequest;->mCommandId:I

    const v1, 0x90190

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/blockchain/TAController;->SET_QSEE_SECURE_UI:Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/blockchain/TAController;->mNative:Lcom/android/server/blockchain/BlockchainTZNative;

    invoke-virtual {v0, p1}, Lcom/android/server/blockchain/BlockchainTZNative;->processTACommand(Landroid/blockchain/TACommandRequest;)Landroid/blockchain/TACommandResponse;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/blockchain/TAController;->SET_QSEE_SECURE_UI:Z

    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    const-string p0, "BlockchainTZService"

    const-string/jumbo p1, "binder for cmd is died"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final unloadTA()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "unloadTA"

    invoke-static {v0}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/blockchain/TAController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BlockchainTZService"

    const-string/jumbo v1, "TAController::unloadTA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/blockchain/TAController;->SET_QSEE_SECURE_UI:Z

    iget-object v0, p0, Lcom/android/server/blockchain/TAController;->mNative:Lcom/android/server/blockchain/BlockchainTZNative;

    invoke-virtual {v0}, Lcom/android/server/blockchain/BlockchainTZNative;->unloadTA()V

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
