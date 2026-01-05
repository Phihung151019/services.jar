.class public final Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public mActiveQuickTilePackages:Ljava/util/ArrayList;

.field public mContext:Landroid/content/Context;

.field public mQuickTileContentObserver:Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter$1;

.field public mRegisteredQuickTileContentObserver:Z


# virtual methods
.method public final deInit()V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mRegisteredQuickTileContentObserver:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mQuickTileContentObserver:Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter$1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mRegisteredQuickTileContentObserver:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "MARs:QuickTilePackageFilter"

    const-string v0, "IllegalArgumentException occurred in unregisterContentObserver()"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 0

    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    move-result p2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mActiveQuickTilePackages:Ljava/util/ArrayList;

    monitor-enter p1

    if-eqz p4, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mActiveQuickTilePackages:Ljava/util/ArrayList;

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x15

    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit p1

    goto :goto_1

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final getActiveQuickTilePackages()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mActiveQuickTilePackages:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mActiveQuickTilePackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sysui_qs_tiles"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    const-string/jumbo v4, "custom"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_1
    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mActiveQuickTilePackages:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v5, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mActiveQuickTilePackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mActiveQuickTilePackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "MARs:QuickTilePackageFilter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getActiveQuickTilePackages: add mActiveQuickTilePackages "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :cond_0
    :goto_1
    monitor-exit v4

    goto :goto_3

    :goto_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v3

    const-string/jumbo v4, "MARs:QuickTilePackageFilter"

    const-string/jumbo v5, "error occurred getActiveQuickTilePackages() ! "

    invoke-static {v3, v5, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->getActiveQuickTilePackages()V

    iget-boolean p1, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mRegisteredQuickTileContentObserver:Z

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mQuickTileContentObserver:Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter$1;

    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "sysui_qs_tiles"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mQuickTileContentObserver:Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter$1;

    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mRegisteredQuickTileContentObserver:Z

    :cond_0
    return-void
.end method
