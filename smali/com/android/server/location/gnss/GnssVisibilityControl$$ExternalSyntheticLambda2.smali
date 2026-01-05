.class public final synthetic Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:B

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:B

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:B

.field public final synthetic f$7:Z

.field public final synthetic f$8:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssVisibilityControl;Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-byte p3, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$2:B

    iput-object p4, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iput-byte p5, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$4:B

    iput-object p6, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$5:Ljava/lang/String;

    iput-byte p7, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$6:B

    iput-boolean p8, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$7:Z

    iput-boolean p9, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$8:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

    iget-object v3, v0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-byte v4, v0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$2:B

    iget-object v5, v0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iget-byte v6, v0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$4:B

    iget-object v7, v0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$5:Ljava/lang/String;

    iget-byte v8, v0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$6:B

    iget-boolean v9, v0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$7:Z

    iget-boolean v10, v0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$8:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;

    invoke-direct/range {v2 .. v10}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;-><init>(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    move-object v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Non-framework location access notification: "

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v12, "GnssVisibilityControl"

    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    if-eqz v9, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v8, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "Emergency non-framework location request incorrectly rejected. Notification: "

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v15

    :goto_0
    iget-object v11, v1, Lcom/android/server/location/gnss/GnssVisibilityControl;->mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    const-wide/32 v13, 0x1f400

    invoke-virtual {v11, v13, v14}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency(J)Z

    move-result v11

    if-nez v11, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "Emergency state mismatch. Device currently not in user initiated emergency session. Notification: "

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v15

    goto :goto_1

    :cond_1
    move v11, v2

    :goto_1
    const/16 v2, 0x83

    invoke-static/range {v2 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;IZZZ)V

    const/4 v2, 0x2

    if-ne v8, v2, :cond_15

    iget-object v2, v1, Lcom/android/server/location/gnss/GnssVisibilityControl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    if-nez v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not notify user of emergency location request. Notification: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, v1, Lcom/android/server/location/gnss/GnssVisibilityControl;->mContext:Landroid/content/Context;

    const v1, 0x1040640

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x10405fd

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$Builder;

    const-string/jumbo v6, "NETWORK_STATUS"

    invoke-direct {v5, v0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v6, 0x1080c1d

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v15}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const v7, 0x106001c

    invoke-virtual {v0, v7}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v6, v0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void

    :cond_3
    const/4 v2, 0x0

    iget-object v11, v1, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v11, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;

    if-eqz v8, :cond_4

    move v14, v15

    goto :goto_2

    :cond_4
    move v14, v2

    :goto_2
    if-eqz v8, :cond_5

    move v11, v15

    goto :goto_3

    :cond_5
    move v11, v2

    :goto_3
    if-eqz v13, :cond_8

    iget-boolean v2, v1, Lcom/android/server/location/gnss/GnssVisibilityControl;->mIsGpsEnabled:Z

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    iget-boolean v2, v13, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->mHasLocationPermission:Z

    if-eq v2, v11, :cond_7

    move v11, v15

    goto :goto_4

    :cond_7
    const/4 v11, 0x0

    :cond_8
    :goto_4
    const/16 v2, 0x83

    invoke-static/range {v2 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;IZZZ)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-nez v14, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Non-framework location request rejected. ProxyAppPackageName field is not set in the notification: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Number of configured proxy apps: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ProxyAppPackageName field is not set. AppOps service not notified for notification: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    if-nez v13, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find proxy app "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in the value specified for config parameter: NFW_PROXY_APPS. AppOps service not notified for notification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    invoke-virtual {v1, v3}, Lcom/android/server/location/gnss/GnssVisibilityControl;->getProxyAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-nez v2, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Proxy app "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not found. AppOps service not notified for notification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 v4, 0x2

    if-ne v8, v4, :cond_11

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v5, v13, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->mIsLocationIconOn:Z

    iget-object v6, v1, Lcom/android/server/location/gnss/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    if-nez v5, :cond_e

    invoke-virtual {v1, v4, v3, v15}, Lcom/android/server/location/gnss/GnssVisibilityControl;->updateLocationIcon(ILjava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to show Location icon for notification: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_d
    iput-boolean v15, v13, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->mIsLocationIconOn:Z

    goto :goto_5

    :cond_e
    invoke-virtual {v6, v13}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Location icon on. "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_f

    const-string v5, "Extending"

    goto :goto_6

    :cond_f
    const-string/jumbo v5, "Setting"

    :goto_6
    const-string v9, " icon display timer. Uid: "

    const-string v10, ", proxyAppPkgName: "

    invoke-static {v4, v5, v9, v10, v7}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda1;

    const/4 v7, 0x2

    invoke-direct {v5, v1, v3, v7}, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/GnssVisibilityControl;Ljava/lang/Object;I)V

    const-wide/16 v9, 0x1388

    invoke-virtual {v6, v5, v13, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {v1, v13, v4, v3}, Lcom/android/server/location/gnss/GnssVisibilityControl;->clearLocationIcon(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;ILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to show location icon for the full duration for notification: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_7
    iget-object v4, v1, Lcom/android/server/location/gnss/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v15, v2, v3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    :cond_11
    if-eqz v11, :cond_15

    const-string/jumbo v2, "Permission mismatch. Proxy app "

    const-string v4, " location permission is set to "

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v13, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->mHasLocationPermission:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " and GNSS HAL enabled is set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v1, Lcom/android/server/location/gnss/GnssVisibilityControl;->mIsGpsEnabled:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " but GNSS non-framework location access response type is "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_14

    if-eq v8, v15, :cond_13

    const/4 v4, 0x2

    if-eq v8, v4, :cond_12

    const-string v1, "<Unknown>"

    goto :goto_8

    :cond_12
    const-string v1, "ACCEPTED_LOCATION_PROVIDED"

    goto :goto_8

    :cond_13
    const-string v1, "ACCEPTED_NO_LOCATION_PROVIDED"

    goto :goto_8

    :cond_14
    const-string/jumbo v1, "REJECTED"

    :goto_8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for notification: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return-void
.end method
