.class public final Lcom/android/server/aod/AODManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAODLowPowerUri:Landroid/net/Uri;

.field public final mAODPowerSavingModeUri:Landroid/net/Uri;

.field public final mAODShowStateUri:Landroid/net/Uri;

.field public final mDozeAlwaysOnUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$AODHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "aod_show_state"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mAODShowStateUri:Landroid/net/Uri;

    const-string/jumbo p1, "aod_mode"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    const-string/jumbo p1, "doze_always_on"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mDozeAlwaysOnUri:Landroid/net/Uri;

    const-string/jumbo p1, "low_power"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mAODLowPowerUri:Landroid/net/Uri;

    const-string/jumbo p1, "ultra_powersaving_mode"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mAODPowerSavingModeUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 10

    iget-object p1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mAODShowStateUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mAODLowPowerUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mAODPowerSavingModeUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    iget-object v0, v0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v0, "package"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p2

    :try_start_0
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_1

    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "package"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v3, p2

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_1
    if-eqz p2, :cond_4

    :goto_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object p2, v3

    :goto_3
    :try_start_2
    sget v4, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    const-string v4, "AODManagerService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_4

    goto :goto_2

    :goto_4
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p0

    :cond_3
    move-object v5, p2

    :cond_4
    :goto_5
    iget-object p2, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mAODShowStateUri:Landroid/net/Uri;

    invoke-virtual {p2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, -0x2

    if-eqz p2, :cond_6

    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    iget-object p1, p1, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo p2, "aod_show_state"

    invoke-static {p1, p2, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v2, :cond_5

    move v1, v2

    :cond_5
    iget-boolean p1, p0, Lcom/android/server/aod/AODManagerService;->mIsAODStartStop:Z

    if-eq p1, v1, :cond_f

    iput-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsAODStartStop:Z

    goto/16 :goto_c

    :cond_6
    iget-object p2, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->mDozeAlwaysOnUri:Landroid/net/Uri;

    invoke-virtual {p2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onChange : "

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , called by package : "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget v3, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    invoke-virtual {p1, p2}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onChange : "

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget v3, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    invoke-virtual {p1, p2}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    :goto_6
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    const-string/jumbo p1, "updateDozeAlwaysOn : doze_always_on doesn\'t exist. "

    const-string/jumbo p2, "updateDozeAlwaysOn: dozeAlwaysOn = "

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    iget-object v3, v3, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "doze_always_on"

    invoke-static {v3, v5, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne p1, v2, :cond_8

    move p1, v2

    goto :goto_7

    :cond_8
    move p1, v1

    :goto_7
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    iget-object v3, p2, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    iget p2, p2, Lcom/android/server/aod/AODSettingHelper;->mAODDefaultSetting:I

    const-string/jumbo v5, "aod_mode"

    invoke-static {v3, v5, p2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-ne p2, v2, :cond_9

    move p2, v2

    goto :goto_8

    :cond_9
    move p2, v1

    :goto_8
    if-eq p1, p2, :cond_a

    iget-object p2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    iget-object p2, p2, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "aod_mode"

    invoke-static {p2, v3, p1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_a

    :cond_a
    :goto_9
    iget-object p2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    iget-object p2, p2, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "aod_charging_mode"

    invoke-static {p2, v3, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-ne p2, v2, :cond_b

    move v1, v2

    :cond_b
    if-eq p1, v1, :cond_c

    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    iget-object p0, p0, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo p2, "aod_charging_mode"

    invoke-static {p0, p2, p1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_c
    monitor-exit v4

    goto :goto_c

    :catch_2
    move-exception v0

    move-object p2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    monitor-exit v4

    goto :goto_c

    :goto_a
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :cond_d
    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onChange : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , called by package : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    invoke-virtual {p1, p2}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    goto :goto_b

    :cond_e
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onChange : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    invoke-virtual {p1, p2}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    :goto_b
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$SettingsObserver;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->updateSettings()V

    :cond_f
    :goto_c
    return-void
.end method
