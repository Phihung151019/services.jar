.class public final Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mCallback:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda17;

.field public mGate:Z

.field public mRun:Z


# virtual methods
.method public final run()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mRun:Z

    iget-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mGate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mCallback:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda17;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mCallback:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda17;

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda17;->run()V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
