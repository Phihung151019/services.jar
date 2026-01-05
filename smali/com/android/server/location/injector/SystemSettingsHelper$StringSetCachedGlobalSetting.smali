.class public final Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;
.super Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBaseValuesSupplier:Lcom/android/server/location/injector/SystemSettingsHelper$$ExternalSyntheticLambda0;

.field public mCachedValue:Landroid/util/ArraySet;

.field public final mContext:Landroid/content/Context;

.field public final mSettingName:Ljava/lang/String;

.field public mValid:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/SystemSettingsHelper$$ExternalSyntheticLambda0;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "location_background_throttle_package_whitelist"

    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mSettingName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mBaseValuesSupplier:Lcom/android/server/location/injector/SystemSettingsHelper$$ExternalSyntheticLambda0;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mValid:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized getValue()Ljava/util/Set;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mCachedValue:Landroid/util/ArraySet;

    iget-boolean v1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mValid:Z

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mBaseValuesSupplier:Lcom/android/server/location/injector/SystemSettingsHelper$$ExternalSyntheticLambda0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/SystemConfig;->mAllowUnthrottledLocation:Landroid/util/ArraySet;

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iget-object v3, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_0
    :goto_0
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->mRegistered:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    monitor-exit p0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mValid:Z

    iput-object v2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mCachedValue:Landroid/util/ArraySet;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_1
    :goto_1
    move-object v0, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_2
    :goto_3
    monitor-exit p0

    return-object v0

    :goto_4
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0
.end method

.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mValid:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mCachedValue:Landroid/util/ArraySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->onChange(ZLandroid/net/Uri;I)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
