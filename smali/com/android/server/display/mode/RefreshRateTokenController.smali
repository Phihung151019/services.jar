.class public final Lcom/android/server/display/mode/RefreshRateTokenController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mRefreshRateTokenHistory:Lcom/samsung/android/core/SystemHistory;

.field public final mRefreshRateTokens:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/RefreshRateTokenController;->mRefreshRateTokens:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateTokenController;->mLock:Ljava/lang/Object;

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/samsung/android/core/SystemHistory;

    const/16 v0, 0xf

    const-string/jumbo v1, "RefreshRateTokenController"

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/core/SystemHistory;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateTokenController;->mRefreshRateTokenHistory:Lcom/samsung/android/core/SystemHistory;

    :cond_0
    return-void
.end method


# virtual methods
.method public final createRefreshRateToken(Lcom/android/server/display/mode/RefreshRateToken;Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;)V
    .locals 3

    const-string v0, "Adding refreshRateToken="

    iget-object v1, p0, Lcom/android/server/display/mode/RefreshRateTokenController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/mode/RefreshRateTokenController;->mRefreshRateTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/display/mode/RefreshRateTokenController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/display/mode/RefreshRateTokenController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/RefreshRateTokenController;)V

    iput-object p2, p1, Lcom/android/server/display/mode/RefreshRateToken;->mInfo:Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;

    iput-object v2, p1, Lcom/android/server/display/mode/RefreshRateToken;->mRemoveConsumer:Lcom/android/server/display/mode/RefreshRateTokenController$$ExternalSyntheticLambda0;

    iget-object p2, p2, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p2, p1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/display/mode/RefreshRateToken;->accept()V

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateTokenController;->mRefreshRateTokenHistory:Lcom/samsung/android/core/SystemHistory;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", caller="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x5

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/core/SystemHistory;->add(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
