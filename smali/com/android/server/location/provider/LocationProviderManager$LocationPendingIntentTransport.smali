.class public final Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;
.implements Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final deliverOnFlushComplete(I)V
    .locals 10

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setDontSendToRestrictedApps(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mContext:Landroid/content/Context;

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "flushComplete"

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final deliverOnLocationChanged(Landroid/location/LocationResult;Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v2

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/BroadcastOptions;->setDontSendToRestrictedApps(Z)V

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    const-string v7, ""

    const-wide/16 v3, 0x2710

    const/4 v5, 0x0

    const/16 v6, 0x138

    invoke-virtual/range {v2 .. v7}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "location"

    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationResult;->size()I

    move-result v3

    if-le v3, v8, :cond_0

    const-string/jumbo v3, "locations"

    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationResult;->asList()Ljava/util/List;

    move-result-object v4

    new-array v5, v9, [Landroid/location/Location;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/Parcelable;

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    const/4 v3, 0x0

    if-eqz v1, :cond_1

    new-instance v4, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda17;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda17;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    iget-object v10, v0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v11, v0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v17

    if-eqz v4, :cond_2

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mCallback:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda17;

    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;)V

    move-object v14, v1

    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v1, v3

    move-object v14, v1

    :goto_1
    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v17}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz v1, :cond_4

    monitor-enter v1

    :try_start_0
    iput-boolean v8, v1, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mGate:Z

    iget-boolean v0, v1, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mRun:Z

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mCallback:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda17;

    if-eqz v0, :cond_3

    iput-object v3, v1, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mCallback:Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda17;

    move-object v3, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda17;->run()V

    return-void

    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    return-void
.end method

.method public final deliverOnProviderEnabledChanged(Ljava/lang/String;Z)V
    .locals 9

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/BroadcastOptions;->setDontSendToRestrictedApps(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mContext:Landroid/content/Context;

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "providerEnabled"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
