.class public abstract Lcom/android/server/RescueParty;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field static final DEFAULT_FACTORY_RESET_THROTTLE_DURATION_MIN:J = 0x5a0L

.field static final DEFAULT_OBSERVING_DURATION_MS:J

.field static final DEFAULT_RESCUE_NON_REBOOT_LEVEL_LIMIT:I = 0x2

.field static final DEVICE_CONFIG_RESET_MODE:I = 0x4

.field static final LEVEL_ERASE_NON_APPDATA:I = 0x8

.field static final LEVEL_FACTORY_RESET:I = 0x9

.field public static final LEVEL_ISRB_BOOT:I = 0x6

.field static final LEVEL_NONE:I = 0x0

.field static final LEVEL_RESET_OTHERS:I = 0x5

.field static final LEVEL_RESET_SETTINGS_TRUSTED_DEFAULTS:I = 0x3

.field static final LEVEL_RESET_SETTINGS_UNTRUSTED_CHANGES:I = 0x2

.field static final LEVEL_RESET_SETTINGS_UNTRUSTED_DEFAULTS:I = 0x1

.field static final LEVEL_SAFE_MODE:I = 0x7

.field static final LEVEL_WARM_REBOOT:I = 0x4

.field static final NAMESPACE_CONFIGURATION:Ljava/lang/String; = "configuration"

.field static final NAMESPACE_TO_PACKAGE_MAPPING_FLAG:Ljava/lang/String; = "namespace_to_package_mapping"

.field static final PROP_ENABLE_RESCUE:Ljava/lang/String; = "persist.sys.enable_rescue"

.field static final RESCUE_LEVEL_ALL_DEVICE_CONFIG_RESET:I = 0x2

.field static final RESCUE_LEVEL_ERASE_NON_APPDATA:I = 0xa

.field static final RESCUE_LEVEL_FACTORY_RESET:I = 0xb

.field static final RESCUE_LEVEL_ISRB_BOOT:I = 0x8

.field static final RESCUE_LEVEL_NONE:I = 0x0

.field static final RESCUE_LEVEL_RESET_OTHERS:I = 0x7

.field static final RESCUE_LEVEL_RESET_SETTINGS_TRUSTED_DEFAULTS:I = 0x6

.field static final RESCUE_LEVEL_RESET_SETTINGS_UNTRUSTED_CHANGES:I = 0x5

.field static final RESCUE_LEVEL_RESET_SETTINGS_UNTRUSTED_DEFAULTS:I = 0x4

.field static final RESCUE_LEVEL_SAFE_MODE:I = 0x9

.field static final RESCUE_LEVEL_SCOPED_DEVICE_CONFIG_RESET:I = 0x1

.field static final RESCUE_LEVEL_WARM_REBOOT:I = 0x3

.field static final RESCUE_NON_REBOOT_LEVEL_LIMIT:Ljava/lang/String; = "persist.sys.rescue_non_reboot_level_limit"

.field static final TAG:Ljava/lang/String; = "RescueParty"

.field public static isUnrecoverable:Z


# direct methods
.method public static -$$Nest$smexecuteRescueLevel(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "Finished rescue level "

    invoke-static {}, Landroid/sysprop/CrashRecoveryProperties;->attemptingFactoryReset()Ljava/util/Optional;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string/jumbo v6, "RescueParty"

    if-nez v4, :cond_9

    invoke-static {}, Landroid/sysprop/CrashRecoveryProperties;->attemptingReboot()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_9

    :cond_0
    const-string/jumbo v4, "com.android.systemui"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, ""

    if-nez v5, :cond_1

    if-nez v1, :cond_5

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "!@ Attempting rescue level "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_2

    move-object v8, v7

    goto :goto_0

    :cond_2
    const-string v8, " by "

    invoke-virtual {v8, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_0
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "persist.sys.rescue_level"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "saveRescuePartyLog : logcat -v raw -b crash -t \'"

    const/4 v8, 0x0

    :try_start_0
    new-instance v9, Ljava/io/File;

    const-string v10, "/data/log/rescueparty_log"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    const-string v11, "/cache/recovery/rescueparty_log"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_1
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string/jumbo v12, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    new-instance v14, Ljava/util/Date;

    const-wide/32 v15, 0x927c0

    sub-long/2addr v12, v15

    invoke-direct {v14, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' -f /cache/recovery/rescueparty_log"

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string/jumbo v15, "logcat"

    const-string v16, "-v"

    const-string/jumbo v17, "raw"

    const-string v18, "-b"

    const-string/jumbo v19, "crash"

    const-string v20, "-t"

    const-string v22, "-f"

    const-string v23, "/data/log/rescueparty_log"

    move-object/from16 v21, v11

    filled-new-array/range {v15 .. v23}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    invoke-static {v9, v10}, Lcom/android/server/RescueParty;->truncateAndCopyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :goto_3
    if-eqz v8, :cond_4

    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_4
    throw v0

    :catch_1
    if-eqz v8, :cond_5

    goto :goto_2

    :catch_2
    :cond_5
    :goto_4
    :try_start_3
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    if-eqz v1, :cond_6

    const/4 v4, 0x4

    if-lt v2, v4, :cond_6

    goto/16 :goto_5

    :cond_6
    invoke-static {v2}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v5

    const/16 v6, 0x7a

    invoke-virtual {v5, v6}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v5, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v5, v4}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v5}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    invoke-virtual {v5}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v4

    invoke-static {v4}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    invoke-static {}, Landroid/sysprop/CrashRecoveryProperties;->attemptingReboot()Ljava/util/Optional;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_5

    :cond_7
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4}, Landroid/sysprop/CrashRecoveryProperties;->attemptingFactoryReset(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/android/server/RescueParty;->runDumpstateAndWait()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Landroid/sysprop/CrashRecoveryProperties;->lastFactoryResetTimeMs(Ljava/lang/Long;)V

    new-instance v4, Lcom/android/server/RescueParty$1;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/server/RescueParty$1;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_5

    :pswitch_1
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "persist.sys.enable_isrb"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "persist.sys.rescue_mode"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "persist.sys.isrb_alertnum"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4}, Landroid/sysprop/CrashRecoveryProperties;->attemptingReboot(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/android/server/RescueParty;->runDumpstateAndWait()V

    new-instance v4, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v1, v2, v5}, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_5

    :pswitch_2
    invoke-static/range {p0 .. p2}, Lcom/android/server/RescueParty;->executeISRBReboot(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_5

    :pswitch_3
    invoke-static/range {p0 .. p1}, Lcom/android/server/RescueParty;->executeResetOthers(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_4
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4}, Landroid/sysprop/CrashRecoveryProperties;->attemptingReboot(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/android/server/RescueParty;->runDumpstateAndWait()V

    new-instance v4, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v1, v2, v5}, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_5
    const/16 v0, 0xb56

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(II)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for package "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/android/server/crashrecovery/CrashRecoveryUtils;->logCrashRecoveryEvent(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_8

    :goto_7
    invoke-static {v2, v1, v0}, Lcom/android/server/RescueParty;->logRescueException(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_8
    return-void

    :cond_9
    :goto_9
    const-string v0, "!@ Reboot was already triggered, don\'t level-up"

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static -$$Nest$smgetSecRescueLevel(IZLandroid/content/pm/VersionedPackage;)I
    .locals 7

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_0

    const-string/jumbo v5, "com.android.systemui"

    invoke-virtual {p2}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_0
    const-string/jumbo p0, "persist.sys.rescue_level"

    invoke-static {p0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p2, :cond_4

    if-eqz p0, :cond_3

    if-eq p0, v1, :cond_2

    if-eq p0, v2, :cond_1

    goto :goto_0

    :cond_1
    move p0, v4

    goto :goto_1

    :cond_2
    move p0, v0

    goto :goto_1

    :cond_3
    move p0, v2

    goto :goto_1

    :cond_4
    :goto_0
    add-int/2addr p0, v4

    :cond_5
    :goto_1
    if-ne p0, v4, :cond_6

    return v4

    :cond_6
    const/4 p2, 0x2

    if-ne p0, p2, :cond_7

    return p2

    :cond_7
    if-ne p0, v1, :cond_8

    return v1

    :cond_8
    if-ne p0, v2, :cond_9

    return v2

    :cond_9
    if-ne p0, v0, :cond_a

    invoke-static {p1}, Lcom/android/server/RescueParty;->getMaxRescueLevel(Z)I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_a
    const/4 p2, 0x6

    if-ne p0, p2, :cond_b

    invoke-static {p1}, Lcom/android/server/RescueParty;->getMaxRescueLevel(Z)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_b
    const/4 p2, 0x7

    if-ne p0, p2, :cond_c

    invoke-static {p1}, Lcom/android/server/RescueParty;->getMaxRescueLevel(Z)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_c
    const/16 p2, 0x8

    if-ne p0, p2, :cond_d

    invoke-static {p1}, Lcom/android/server/RescueParty;->getMaxRescueLevel(Z)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_d
    const/16 p2, 0x9

    if-lt p0, p2, :cond_f

    if-le p0, p2, :cond_e

    move v3, v4

    :cond_e
    sput-boolean v3, Lcom/android/server/RescueParty;->isUnrecoverable:Z

    invoke-static {p1}, Lcom/android/server/RescueParty;->getMaxRescueLevel(Z)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_f
    const-string p1, "Expected positive mitigation count, was "

    const-string/jumbo p2, "RescueParty"

    invoke-static {p0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public static -$$Nest$smisDisabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/RescueParty;->DEFAULT_OBSERVING_DURATION_MS:J

    return-void
.end method

.method public static executeEraseAppData(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5

    const-string/jumbo v0, "reboot,RescueParty"

    const-string/jumbo v1, "RescueParty"

    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/recovery/rescueparty"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v3, "emergency_reset"

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, ""

    const-string v4, " by "

    if-eqz p0, :cond_1

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    const-string/jumbo p0, "sys.powerctl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_5

    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    invoke-static {p2, p1, p0}, Lcom/android/server/RescueParty;->logRescueException(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static executeISRBReboot(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.enable_isrb"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.isrb_alertnum"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "RescueParty"

    const-string v1, "LEVEL_ISRB_BOOT rescueParty set ISRB_ENABLE."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Landroid/sysprop/CrashRecoveryProperties;->attemptingReboot(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/android/server/RescueParty;->runDumpstateAndWait()V

    new-instance v0, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static executeResetOthers(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "com.android.systemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const-string/jumbo v1, "RescueParty"

    if-eqz p1, :cond_0

    const-string/jumbo p1, "setSysUiSafeMode = true"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-class p1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iput-boolean v0, p1, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiSafeMode:Z

    :cond_0
    const-string/jumbo p1, "android"

    const-string/jumbo v2, "reset wallpaper"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v3, "wallpaper"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3, p1, v0, v2}, Landroid/app/IWallpaperManager;->clearWallpaper(Ljava/lang/String;II)V

    const/16 v4, 0x11

    invoke-interface {v3, p1, v4, v2}, Landroid/app/IWallpaperManager;->clearWallpaper(Ljava/lang/String;II)V

    const/16 v4, 0x21

    invoke-interface {v3, p1, v4, v2}, Landroid/app/IWallpaperManager;->clearWallpaper(Ljava/lang/String;II)V

    const/4 v4, 0x2

    invoke-interface {v3, p1, v4, v2}, Landroid/app/IWallpaperManager;->clearWallpaper(Ljava/lang/String;II)V

    const/16 v4, 0x12

    invoke-interface {v3, p1, v4, v2}, Landroid/app/IWallpaperManager;->clearWallpaper(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    const-string/jumbo p1, "reset dls settings"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v3, "dls_state"

    invoke-static {p1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v3, "lockstar_enabled"

    invoke-static {p1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "plugin_lock_sub_enabled"

    invoke-static {p0, p1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object p0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    new-array p1, v0, [I

    aput p0, p1, v2

    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getDataSystemDeDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eq v4, p0, :cond_2

    invoke-static {p1, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_0
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_2
    const-string/jumbo v0, "Trouble discovering users"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    invoke-static {p1}, Lcom/samsung/android/wifi/util/SemWifiRescueParty;->resetAllWifiStoredData([I)I

    return-void
.end method

.method public static getElapsedRealtime()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMaxRescueLevel(Z)I
    .locals 1

    if-eqz p0, :cond_1

    const-string/jumbo p0, "persist.device_config.configuration.disable_rescue_party_factory_reset"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x9

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x3

    return p0
.end method

.method public static getRescuePartyReason()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "persist.sys.rescue_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static levelToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "FACTORY_RESET"

    return-object p0

    :pswitch_1
    const-string p0, "ERASE_NON_APPDATA"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "SAFE_MODE"

    return-object p0

    :pswitch_3
    const-string p0, "ISRB_BOOT"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "RESET_OTHERS"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "WARM_REBOOT"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "RESET_SETTINGS_TRUSTED_DEFAULTS"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "RESET_SETTINGS_UNTRUSTED_CHANGES"

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "RESET_SETTINGS_UNTRUSTED_DEFAULTS"

    return-object p0

    :pswitch_9
    const-string/jumbo p0, "NONE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static logRescueException(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    const-string v1, ": "

    if-eqz p2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xb57

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed rescue level "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, " for package "

    invoke-static {p0, v0, p1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p1, p0}, Lcom/android/server/crashrecovery/CrashRecoveryUtils;->logCrashRecoveryEvent(ILjava/lang/String;)V

    return-void
.end method

.method public static runDumpstateAndWait()V
    .locals 5

    const-string/jumbo v0, "RescueParty"

    const-string v1, "!@ make dumpstate_sys_error for rescueparty"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "dumpstate.is_running"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "bugreportm"

    if-eqz v1, :cond_0

    const-string/jumbo v1, "cancel previous dumpstate, and start new one"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "ctl.stop"

    const-string/jumbo v3, "bugreportd"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "dumpstate"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "dumpstatez"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v1, "bugreport.mode"

    const-string/jumbo v3, "sys_rescue"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "dumpstate.process"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ctl.start"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x32

    if-ge v1, v3, :cond_2

    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "Failed to sleep"

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const-string/jumbo v1, "init.svc.bugreportm"

    const-string/jumbo v3, "stopped"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public static truncateAndCopyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0

    const-wide/32 v2, 0x10000

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    new-array p0, p0, [B

    invoke-virtual {v0, p0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Ljava/io/BufferedOutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    return-void
.end method
