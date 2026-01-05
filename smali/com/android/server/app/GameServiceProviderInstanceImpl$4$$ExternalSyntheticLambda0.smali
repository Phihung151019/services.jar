.class public final synthetic Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$4;ILandroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$7;ILcom/android/internal/infra/AndroidFuture;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;

    iget v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/infra/AndroidFuture;

    iget-object v0, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->takeScreenshot(ILcom/android/internal/infra/AndroidFuture;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;

    iget v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/content/ComponentName;

    iget-object v0, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    iget-object v2, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

    const-string v3, "Found cached task info for taskId "

    iget-object v4, v2, Lcom/android/server/app/GameTaskInfoProvider;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, v2, Lcom/android/server/app/GameTaskInfoProvider;->mGameTaskInfoCache:Landroid/util/LruCache;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/app/GameTaskInfo;

    if-eqz v5, :cond_1

    iget-object v6, v5, Lcom/android/server/app/GameTaskInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v6, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "GameTaskInfoProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but cached component name "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lcom/android/server/app/GameTaskInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " does not match "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    monitor-exit v4

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2, v1, p0}, Lcom/android/server/app/GameTaskInfoProvider;->generateGameInfo(ILandroid/content/ComponentName;)Lcom/android/server/app/GameTaskInfo;

    move-result-object v5

    :goto_1
    iget-boolean p0, v5, Lcom/android/server/app/GameTaskInfo;->mIsGameTask:Z

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_1
    invoke-virtual {v0, v5}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->gameTaskStartedLocked(Lcom/android/server/app/GameTaskInfo;)V

    monitor-exit p0

    :goto_2
    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :goto_3
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
