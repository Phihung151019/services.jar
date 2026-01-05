.class public final Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final mBaseValuesSupplier:Ljava/util/function/Supplier;

.field public mCachedValue:Landroid/os/PackageTagsList;

.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mName:Ljava/lang/String;

.field public mRegistered:Z

.field public mValid:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/function/Supplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mName:Ljava/lang/String;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mBaseValuesSupplier:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final declared-synchronized getValue()Landroid/os/PackageTagsList;
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mCachedValue:Landroid/os/PackageTagsList;

    iget-boolean v1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mValid:Z

    if-nez v1, :cond_7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Landroid/os/PackageTagsList$Builder;

    invoke-direct {v2}, Landroid/os/PackageTagsList$Builder;-><init>()V

    iget-object v3, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mBaseValuesSupplier:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-virtual {v2, v3}, Landroid/os/PackageTagsList$Builder;->add(Ljava/util/Map;)Landroid/os/PackageTagsList$Builder;

    move-result-object v2

    const-string/jumbo v3, "location"

    iget-object v4, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_5

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v4, :cond_5

    aget-object v8, v3, v7

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_3

    :cond_0
    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v9, v8, v6

    array-length v10, v8

    if-ne v10, v5, :cond_1

    invoke-virtual {v2, v9}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_5

    :cond_1
    move v10, v5

    :goto_1
    array-length v11, v8

    if-ge v10, v11, :cond_4

    aget-object v11, v8, v10

    const-string/jumbo v12, "null"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v11, 0x0

    :cond_2
    const-string v12, "*"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v2, v9}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v9, v11}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Landroid/os/PackageTagsList$Builder;->build()Landroid/os/PackageTagsList;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mRegistered:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    monitor-exit p0

    if-eqz v0, :cond_6

    iput-boolean v5, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mValid:Z

    iput-object v2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mCachedValue:Landroid/os/PackageTagsList;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_6
    :goto_4
    move-object v0, v2

    goto :goto_6

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0

    :goto_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_7
    :goto_6
    monitor-exit p0

    return-object v0

    :goto_7
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0
.end method

.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mValid:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mCachedValue:Landroid/os/PackageTagsList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mName:Ljava/lang/String;

    const-string/jumbo v0, "location device config setting changed: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "LocationManagerService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;->onSettingChanged(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
