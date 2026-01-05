.class public final synthetic Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Lcom/android/server/devicestate/OverrideRequest;II)V
    .locals 17

    move-object/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x2

    sget-object v4, Lcom/android/server/devicestate/DeviceStateManagerService;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    move-object/from16 v4, p0

    iget-object v4, v4, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    iget v5, v0, Lcom/android/server/devicestate/OverrideRequest;->mRequestType:I

    const-string/jumbo v6, "Unknown request status: "

    iget v7, v0, Lcom/android/server/devicestate/OverrideRequest;->mPid:I

    if-ne v5, v2, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v5, v4, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveBaseStateOverride:Ljava/util/Optional;

    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v4, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveBaseStateOverride:Ljava/util/Optional;

    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_8

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveBaseStateOverride:Ljava/util/Optional;

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v1, v6}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, v0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->setBaseState(I)V

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iput-object v1, v4, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveBaseStateOverride:Ljava/util/Optional;

    iget-object v1, v4, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    iget-object v0, v0, Lcom/android/server/devicestate/OverrideRequest;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v0}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyRequestActiveAsync(Landroid/os/IBinder;)V

    return-void

    :cond_2
    if-nez v5, :cond_c

    const/high16 v5, 0x4000000

    const/4 v8, 0x0

    iget-object v9, v4, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStateNotificationController:Lcom/android/server/devicestate/DeviceStateNotificationController;

    if-eq v1, v2, :cond_6

    if-ne v1, v3, :cond_5

    iget-object v6, v4, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    invoke-virtual {v6}, Ljava/util/Optional;->isPresent()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v4, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_8

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    iget-object v6, v0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v6}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v6

    invoke-virtual {v9}, Lcom/android/server/devicestate/DeviceStateNotificationController;->getNotificationInfos()Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    iget-object v6, v9, Lcom/android/server/devicestate/DeviceStateNotificationController;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda1;

    invoke-direct {v10, v9}, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/devicestate/DeviceStateNotificationController;)V

    invoke-virtual {v6, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    and-int/lit8 v6, p3, 0x1

    if-ne v6, v2, :cond_4

    iget-object v5, v0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v5}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v5

    invoke-virtual {v9}, Lcom/android/server/devicestate/DeviceStateNotificationController;->getNotificationInfos()Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;

    if-eqz v5, :cond_8

    iget-object v6, v5, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->thermalCriticalNotificationTitle:Ljava/lang/String;

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v10, v5, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->name:Ljava/lang/String;

    iget-object v11, v5, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->thermalCriticalNotificationTitle:Ljava/lang/String;

    iget-object v12, v5, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->thermalCriticalNotificationContent:Ljava/lang/String;

    const/4 v13, 0x0

    const v14, 0x1080638

    invoke-virtual/range {v9 .. v16}, Lcom/android/server/devicestate/DeviceStateNotificationController;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/app/PendingIntent;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    and-int/lit8 v6, p3, 0x2

    if-ne v6, v3, :cond_8

    iget-object v6, v0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v6}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v6

    invoke-virtual {v9}, Lcom/android/server/devicestate/DeviceStateNotificationController;->getNotificationInfos()Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;

    if-eqz v6, :cond_8

    iget-object v10, v6, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->powerSaveModeNotificationTitle:Ljava/lang/String;

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_8

    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v11, "android.settings.BATTERY_SAVER_SETTINGS"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v11, v9, Lcom/android/server/devicestate/DeviceStateNotificationController;->mContext:Landroid/content/Context;

    invoke-static {v11, v8, v10, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    iget-object v5, v9, Lcom/android/server/devicestate/DeviceStateNotificationController;->mContext:Landroid/content/Context;

    const v8, 0x104047a

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    iget-object v11, v6, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->powerSaveModeNotificationTitle:Ljava/lang/String;

    iget-object v12, v6, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->powerSaveModeNotificationContent:Ljava/lang/String;

    iget-object v10, v6, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->name:Ljava/lang/String;

    const/4 v13, 0x0

    const v14, 0x1080638

    invoke-virtual/range {v9 .. v16}, Lcom/android/server/devicestate/DeviceStateNotificationController;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/app/PendingIntent;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v1, v6}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    iget-object v6, v0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v6}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v6

    invoke-virtual {v9}, Lcom/android/server/devicestate/DeviceStateNotificationController;->getNotificationInfos()Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;

    if-eqz v10, :cond_8

    iget-object v11, v10, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->activeNotificationTitle:Ljava/lang/String;

    if-eqz v11, :cond_8

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_8

    iget-object v11, v9, Lcom/android/server/devicestate/DeviceStateNotificationController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v12, v0, Lcom/android/server/devicestate/OverrideRequest;->mUid:I

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v11

    :try_start_0
    iget-object v13, v9, Lcom/android/server/devicestate/DeviceStateNotificationController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v14

    invoke-virtual {v13, v11, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget-object v13, v9, Lcom/android/server/devicestate/DeviceStateNotificationController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v13}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v11, 0x0

    :goto_1
    if-eqz v11, :cond_7

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v12, "com.android.server.devicestate.INTENT_ACTION_CANCEL_STATE"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v12, v9, Lcom/android/server/devicestate/DeviceStateNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    iget-object v12, v9, Lcom/android/server/devicestate/DeviceStateNotificationController;->mContext:Landroid/content/Context;

    invoke-static {v12, v8, v6, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    iget-object v5, v10, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->activeNotificationContent:Ljava/lang/String;

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iget-object v5, v9, Lcom/android/server/devicestate/DeviceStateNotificationController;->mContext:Landroid/content/Context;

    const v6, 0x104047b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    iget-object v5, v10, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->name:Ljava/lang/String;

    iget-object v11, v10, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->activeNotificationTitle:Ljava/lang/String;

    const/4 v13, 0x1

    const v14, 0x108045b

    move-object v10, v5

    invoke-virtual/range {v9 .. v16}, Lcom/android/server/devicestate/DeviceStateNotificationController;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Cannot determine the requesting app name when showing state active notification. uid="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", state="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DeviceStateNotificationController"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_2
    invoke-virtual {v4}, Lcom/android/server/devicestate/DeviceStateManagerService;->updatePendingStateLocked()Z

    move-result v5

    iget-object v6, v4, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    iget-object v7, v4, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    if-nez v6, :cond_9

    new-instance v0, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v0, v4, v3}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;I)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_9
    if-ne v1, v2, :cond_a

    if-nez v5, :cond_b

    iget-object v1, v4, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v0, v0, Lcom/android/server/devicestate/OverrideRequest;->mToken:Landroid/os/IBinder;

    invoke-virtual {v6, v0}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyRequestActiveAsync(Landroid/os/IBinder;)V

    goto :goto_3

    :cond_a
    iget-object v0, v0, Lcom/android/server/devicestate/OverrideRequest;->mToken:Landroid/os/IBinder;

    invoke-virtual {v6, v0}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyRequestCanceledAsync(Landroid/os/IBinder;)V

    :cond_b
    :goto_3
    new-instance v0, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v0, v4, v3}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;I)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_4
    return-void

    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unknown OverrideRest type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/android/server/devicestate/OverrideRequest;->mRequestType:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
