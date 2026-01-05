.class public final Lcom/android/server/display/ExternalDisplayStatsService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/ExternalDisplayStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/ExternalDisplayStatsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    iget-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    iget-object p1, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    iget-object p2, p2, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    if-nez p2, :cond_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_0
    const/4 p2, 0x0

    move v0, p2

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    iget-object v2, v2, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    iget-object v3, v2, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    iget-object v2, v2, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v4, v3, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mPowerManager:Landroid/os/PowerManager;

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/PowerManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, v3, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mPowerManager:Landroid/os/PowerManager;

    :cond_1
    iget-object v3, v3, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Landroid/os/PowerManager;->isInteractive(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    iget v0, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mInteractiveExternalDisplays:I

    if-ne v0, v1, :cond_5

    return-void

    :cond_5
    const/4 v2, 0x1

    const/16 v3, 0x326

    const/4 v4, 0x2

    if-nez v1, :cond_8

    iget-object v5, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    monitor-enter v5

    :goto_1
    :try_start_1
    iget-object v0, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_7

    iget-object v0, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    iget-object v6, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    if-eq v6, v2, :cond_6

    if-eq v6, v4, :cond_6

    iget-object v7, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    add-int/lit8 v8, p2, 0x1

    iget-boolean v9, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x4

    invoke-static {v3, v7, v8, v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZ)V

    sget-boolean v9, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    if-eqz v9, :cond_6

    const-string v9, "ExternalDisplayStatsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "logExternalDisplayIdleStarted displayId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " currentState="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " countOfExternalDisplays="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " state="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mIsExternalDisplayUsedForAudio="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_6
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_7
    monitor-exit v5

    goto :goto_7

    :goto_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_8
    const/4 v5, -0x1

    if-eq v5, v0, :cond_d

    iget-object v0, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    monitor-enter v0

    :cond_9
    :goto_4
    :try_start_2
    iget-object v5, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge p2, v5, :cond_c

    iget-object v5, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    iget-object v6, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    if-eq v6, v2, :cond_b

    if-ne v6, v4, :cond_a

    goto :goto_5

    :cond_a
    iget-object v7, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    add-int/lit8 p2, p2, 0x1

    iget-boolean v8, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v6, p2, v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZ)V

    sget-boolean v7, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    if-eqz v7, :cond_9

    const-string v7, "ExternalDisplayStatsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "logExternalDisplayIdleEnded displayId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " state="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " countOfExternalDisplays="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mIsExternalDisplayUsedForAudio="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_6

    :cond_b
    :goto_5
    monitor-exit v0

    goto :goto_7

    :cond_c
    monitor-exit v0

    goto :goto_7

    :goto_6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :cond_d
    :goto_7
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    iput v1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInteractiveExternalDisplays:I

    return-void

    :goto_8
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
