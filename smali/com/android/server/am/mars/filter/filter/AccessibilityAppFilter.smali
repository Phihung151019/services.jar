.class public final Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public mAccessibilityContentObserver:Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$1;

.field public mContext:Landroid/content/Context;

.field public mEnabledAccessibilityPackages:Ljava/util/ArrayList;

.field public mRegisteredAccessibilityContentObserver:Z


# virtual methods
.method public final addPackages(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "getEnabledAccessibilityPackage: add mEnabledAccessibilityPackages "

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    aget-object p1, p1, v1

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    if-eqz p0, :cond_0

    const-string/jumbo p0, "MARs:AccessibilityAppFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public final deInit()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mRegisteredAccessibilityContentObserver:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mAccessibilityContentObserver:Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mRegisteredAccessibilityContentObserver:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "MARs:AccessibilityAppFilter"

    const-string v0, "IllegalArgumentException occurred in unregisterContentObserver()"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 0

    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    move-result p2

    if-ne p1, p2, :cond_1

    if-eqz p4, :cond_1

    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x13

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

.method public final getEnabledAccessibilityPackage()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "enabled_accessibility_services"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->addPackages(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->addPackages(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->getEnabledAccessibilityPackage()V

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->registerContentObserver()V

    return-void
.end method

.method public registerContentObserver()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mRegisteredAccessibilityContentObserver:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mAccessibilityContentObserver:Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$1;

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "enabled_accessibility_services"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mAccessibilityContentObserver:Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$1;

    iget-object v3, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mRegisteredAccessibilityContentObserver:Z

    :cond_0
    return-void
.end method
