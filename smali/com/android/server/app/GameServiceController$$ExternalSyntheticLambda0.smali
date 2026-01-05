.class public final synthetic Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/app/GameServiceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/app/GameServiceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/app/GameServiceController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object p0, p0, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/app/GameServiceController;

    const-string/jumbo v0, "Starting Game Service provider: "

    const-string/jumbo v1, "Stopping Game Service provider: "

    iget-boolean v2, p0, Lcom/android/server/app/GameServiceController;->mHasBootCompleted:Z

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v2, p0, Lcom/android/server/app/GameServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderSelector:Lcom/android/server/app/GameServiceProviderSelectorImpl;

    iget-object v4, p0, Lcom/android/server/app/GameServiceController;->mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

    iget-object v5, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderOverride:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/app/GameServiceProviderSelectorImpl;->get(Lcom/android/server/SystemService$TargetUser;Ljava/lang/String;)Lcom/android/server/app/GameServiceConfiguration;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    move-object v5, v4

    goto :goto_0

    :cond_1
    iget-object v5, v3, Lcom/android/server/app/GameServiceConfiguration;->mPackageName:Ljava/lang/String;

    :goto_0
    if-nez v3, :cond_2

    move-object v3, v4

    goto :goto_1

    :cond_2
    iget-object v3, v3, Lcom/android/server/app/GameServiceConfiguration;->mGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/server/app/GameServiceController;->evaluateGameServiceProviderPackageChangedListenerLocked(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_3
    iget-object v5, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstance:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    if-eqz v5, :cond_4

    const-string v5, "GameServiceController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstance:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    iget-object v5, v1, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->stopLocked()V

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-object v4, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstance:Lcom/android/server/app/GameServiceProviderInstanceImpl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :cond_4
    :goto_2
    iput-object v3, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    iget-object v1, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    if-nez v1, :cond_5

    monitor-exit v2

    goto :goto_3

    :cond_5
    const-string v1, "GameServiceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstanceFactory:Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;

    iget-object v1, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;->create(Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;)Lcom/android/server/app/GameServiceProviderInstanceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstance:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    iget-object p0, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstance:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->startLocked()V

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    return-void

    :catchall_2
    move-exception p0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p0

    :goto_4
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0
.end method
