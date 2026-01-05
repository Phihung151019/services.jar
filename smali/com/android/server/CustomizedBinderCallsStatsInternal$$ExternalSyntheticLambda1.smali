.class public final synthetic Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/CustomizedBinderCallsStatsInternal;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/CustomizedBinderCallsStatsInternal;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/CustomizedBinderCallsStatsInternal;

    iput p2, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/CustomizedBinderCallsStatsInternal;

    iget v0, v0, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda1;->f$1:I

    iget-object v4, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/os/BinderCallsStats;->store(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastStoreTime:J

    iget-wide v4, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastWriteTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const-string v5, "CustomizedBinderCallsStatsInternal"

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastWriteTime:J

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x1b7740

    cmp-long v4, v8, v10

    if-ltz v4, :cond_1

    :cond_0
    const-string/jumbo v4, "should write the current data!!"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v8, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda2;

    invoke-direct {v8, v3}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/CustomizedBinderCallsStatsInternal;)V

    invoke-virtual {v4, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastWriteTime:J

    :cond_1
    const/16 v4, 0x14

    if-lt v0, v4, :cond_7

    iget-object v4, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    const/16 v8, 0x5a

    invoke-virtual {v4, v8}, Lcom/android/internal/os/BinderCallsStats;->getHeaviestApplicationUid(I)Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;

    move-result-object v4

    if-eqz v4, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "heavy binder caller : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v4, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v4, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mUid:I

    const-string v10, ")"

    invoke-static {v9, v10, v5, v8}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v8, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastNotifyTime:J

    cmp-long v6, v8, v6

    if-eqz v6, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastNotifyTime:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x5265c00

    cmp-long v6, v6, v8

    if-ltz v6, :cond_7

    :cond_2
    iget-object v6, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mAm:Landroid/app/ActivityManagerInternal;

    if-nez v6, :cond_3

    const-class v6, Landroid/app/ActivityManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManagerInternal;

    iput-object v6, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mAm:Landroid/app/ActivityManagerInternal;

    :cond_3
    iget-object v7, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mAm:Landroid/app/ActivityManagerInternal;

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v6, "com.sec.android.sdhms.action.APP_ERROR"

    invoke-direct {v8, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mPackageName:Ljava/lang/String;

    const-string/jumbo v9, "pkgName"

    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "userId"

    invoke-virtual {v8, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "uid"

    iget v9, v4, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mUid:I

    invoke-virtual {v8, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "type"

    const-string/jumbo v9, "excessive_binder"

    invoke-virtual {v8, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "com.sec.android.sdhms"

    invoke-virtual {v8, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "android.permission.BATTERY_STATS"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v15}, Landroid/app/ActivityManagerInternal;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;ZI[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    iget-object v6, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mContext:Landroid/content/Context;

    const-string v7, "HqmManagerService"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroid/os/SemHqmManager;

    if-eqz v7, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\"PKG\":\""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v4, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "\"SSCPU\":\""

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "\"RATIO\":\""

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v4, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mRatio:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v10, "%.2f"

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget-object v8, v4, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mExtraInfo:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v0

    add-int/lit8 v0, v8, 0xa

    const/16 v9, 0x3e8

    const-string v10, "\""

    const-string v11, "\"EXTRA\":\""

    if-le v0, v9, :cond_4

    add-int/lit16 v8, v8, -0x3de

    iget-object v0, v4, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mExtraInfo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mExtraInfo:Ljava/lang/String;

    sub-int/2addr v0, v8

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mExtraInfo:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Data is : "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v12, "0.0"

    const-string v16, ""

    const/4 v8, 0x0

    const-string v9, "AP"

    const-string v10, "HBCA"

    const-string/jumbo v11, "sm"

    const-string v13, ""

    const-string v14, ""

    invoke-virtual/range {v7 .. v16}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "Failed to send anomaly application info. to HWParam"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string v0, "Cannot get HqmManagerService !!!"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastNotifyTime:J

    :cond_7
    iget-object v0, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v0}, Lcom/android/internal/os/BinderCallsStats;->isNeededResetData()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Clear all data"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    new-array v3, v1, [Z

    aput-boolean v1, v3, v2

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    :cond_8
    return-void
.end method
