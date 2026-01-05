.class public final Lcom/android/server/audio/HardeningEnforcer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final METRIC_COUNTERS_FOCUS_DENIAL:Landroid/util/SparseArray;

.field public static final METRIC_COUNTERS_FOCUS_GRANT:Landroid/util/SparseArray;


# instance fields
.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mContext:Landroid/content/Context;

.field public final mEventLogger:Lcom/android/server/utils/EventLogger;

.field public final mIsAutomotive:Z

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mShouldEnableAllHardening:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/android/server/audio/HardeningEnforcer;->METRIC_COUNTERS_FOCUS_DENIAL:Landroid/util/SparseArray;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v2, Lcom/android/server/audio/HardeningEnforcer;->METRIC_COUNTERS_FOCUS_GRANT:Landroid/util/SparseArray;

    const-string/jumbo v3, "media_audio.value_audio_focus_gain_granted"

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v3, "media_audio.value_audio_focus_gain_transient_granted"

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v3, "media_audio.value_audio_focus_gain_transient_duck_granted"

    const/4 v6, 0x3

    invoke-virtual {v2, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v3, "media_audio.value_audio_focus_gain_transient_excl_granted"

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v2, "media_audio.value_audio_focus_gain_appops_denial"

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v2, "media_audio.value_audio_focus_gain_transient_appops_denial"

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v2, "media_audio.value_audio_focus_gain_transient_duck_appops_denial"

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v2, "media_audio.value_audio_focus_gain_transient_excl_appops_denial"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/util/concurrent/atomic/AtomicBoolean;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManager;Lcom/android/server/utils/EventLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/HardeningEnforcer;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/server/audio/HardeningEnforcer;->mIsAutomotive:Z

    iput-object p3, p0, Lcom/android/server/audio/HardeningEnforcer;->mShouldEnableAllHardening:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/android/server/audio/HardeningEnforcer;->mAppOps:Landroid/app/AppOpsManager;

    const-class p2, Landroid/app/ActivityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p5, p0, Lcom/android/server/audio/HardeningEnforcer;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p6, p0, Lcom/android/server/audio/HardeningEnforcer;->mEventLogger:Lcom/android/server/utils/EventLogger;

    return-void
.end method

.method public static metricsLogFocusReq(IIZZ)V
    .locals 4

    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/server/audio/HardeningEnforcer;->METRIC_COUNTERS_FOCUS_DENIAL:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/audio/HardeningEnforcer;->METRIC_COUNTERS_FOCUS_GRANT:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "AS.HardeningEnforcer"

    if-eqz v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Bad string for focus metrics gain:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " blocked:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    invoke-static {v0, p1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    const-string/jumbo p2, "media_audio.value_audio_focus_grant_hardening_waived_by_sdk"

    invoke-static {p2, p1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    const-string p3, "Counter error metricId:"

    const-string v1, " for focus req:"

    const-string v3, " from uid:"

    invoke-static {p0, p3, v0, v1, v3}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public final blockFocusMethod(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 19

    move-object/from16 v0, p0

    move/from16 v7, p2

    move-object/from16 v8, p3

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/HardeningEnforcer;->getPackNameForUid(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object/from16 v4, p4

    :goto_0
    iget-object v1, v0, Lcom/android/server/audio/HardeningEnforcer;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v6, 0x0

    const/16 v2, 0x9a

    move/from16 v3, p1

    move-object/from16 v5, p5

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    const/4 v11, 0x1

    :goto_1
    iget-object v1, v0, Lcom/android/server/audio/HardeningEnforcer;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v6, 0x0

    const/16 v2, 0x20

    move/from16 v3, p1

    move-object/from16 v5, p5

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_4

    :cond_3
    const/16 v1, 0x23

    move/from16 v2, p6

    if-ge v2, v1, :cond_4

    const/4 v1, 0x1

    :goto_3
    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :goto_4
    iget-object v5, v0, Lcom/android/server/audio/HardeningEnforcer;->mShouldEnableAllHardening:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_6

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v5, 0x1

    :goto_6
    iget-object v6, v0, Lcom/android/server/audio/HardeningEnforcer;->mShouldEnableAllHardening:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v2, :cond_7

    if-eqz v5, :cond_7

    const/4 v12, 0x1

    goto :goto_7

    :cond_7
    const/4 v12, 0x0

    :goto_7
    invoke-static {v7, v3, v12, v1}, Lcom/android/server/audio/HardeningEnforcer;->metricsLogFocusReq(IIZZ)V

    const-string v1, "AS.HardeningEnforcer"

    const/4 v12, 0x2

    iget-object v0, v0, Lcom/android/server/audio/HardeningEnforcer;->mEventLogger:Lcom/android/server/utils/EventLogger;

    const-string v13, "), "

    const-string v14, " ("

    const-string/jumbo v15, "ignored for "

    const-string v16, " "

    const-string v17, " would be "

    const/16 p4, 0x1

    const-string v9, "AudioHardening focus request for req "

    if-eqz v2, :cond_9

    const/16 v18, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v5, :cond_8

    move-object/from16 v7, v17

    goto :goto_8

    :cond_8
    move-object/from16 v7, v16

    :goto_8
    invoke-static {v10, v7, v15, v4, v14}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", level: partial"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v12, v3, v1}, Lcom/android/server/utils/EventLogger;->enqueueAndSlog(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_9
    const/16 v18, 0x0

    if-nez v11, :cond_b

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v6, :cond_a

    move-object/from16 v7, v17

    goto :goto_9

    :cond_a
    move-object/from16 v7, v16

    :goto_9
    invoke-static {v10, v7, v15, v4, v14}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", level: full"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v12, v3, v1}, Lcom/android/server/utils/EventLogger;->enqueueAndSlog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_a
    if-eqz v2, :cond_c

    if-nez v5, :cond_d

    :cond_c
    if-nez v11, :cond_e

    if-eqz v6, :cond_e

    :cond_d
    return p4

    :cond_e
    return v18
.end method

.method public final blockVolumeMethod(IILjava/lang/String;)Z
    .locals 11

    iget-object v0, p0, Lcom/android/server/audio/HardeningEnforcer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/android/server/audio/HardeningEnforcer;->mIsAutomotive:Z

    const-string v3, "AS.HardeningEnforcer"

    if-eqz v2, :cond_2

    const/16 p0, 0x2710

    if-ge p2, p0, :cond_1

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Preventing volume method "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    iget-object v2, p0, Lcom/android/server/audio/HardeningEnforcer;->mShouldEnableAllHardening:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    iget-object v4, p0, Lcom/android/server/audio/HardeningEnforcer;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v9, 0x0

    const/16 v5, 0x9b

    const/4 v8, 0x0

    move v6, p2

    move-object v7, p3

    invoke-virtual/range {v4 .. v9}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v1

    goto :goto_0

    :cond_3
    move v4, v0

    :goto_0
    const/4 v10, 0x2

    if-nez v4, :cond_4

    const-string/jumbo v4, "media_audio.value_audio_volume_hardening_partial_restriction"

    invoke-static {v4, p2}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    move v4, v0

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/server/audio/HardeningEnforcer;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v9, 0x0

    const/16 v5, 0x9a

    move v6, p2

    move-object v7, p3

    invoke-virtual/range {v4 .. v9}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "media_audio.value_audio_volume_hardening_strict_restriction"

    invoke-static {v4, p2}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    move v4, v10

    goto :goto_1

    :cond_5
    const-string/jumbo v4, "media_audio.value_audio_volume_hardening_allowed"

    invoke-static {v4, p2}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    move v4, v1

    :goto_1
    if-eqz v4, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "AudioHardening volume control for api "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v2, :cond_6

    const-string p1, " would be "

    goto :goto_2

    :cond_6
    const-string p1, " "

    :goto_2
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ignored for "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/android/server/audio/HardeningEnforcer;->getPackNameForUid(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    const-string v7, "), level: "

    invoke-static {p2, p1, v7, v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    if-ne v4, v0, :cond_7

    const-string/jumbo p1, "partial"

    goto :goto_3

    :cond_7
    const-string/jumbo p1, "full"

    :goto_3
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/audio/HardeningEnforcer;->mEventLogger:Lcom/android/server/utils/EventLogger;

    invoke-virtual {p0, v10, p1, v3}, Lcom/android/server/utils/EventLogger;->enqueueAndSlog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz v2, :cond_9

    if-eqz v4, :cond_9

    return v0

    :cond_9
    :goto_4
    return v1
.end method

.method public final getPackNameForUid(I)Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "["

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/HardeningEnforcer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v3, p0

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    aget-object v4, p0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, p0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
