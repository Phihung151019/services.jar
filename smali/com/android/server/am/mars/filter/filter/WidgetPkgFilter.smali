.class public final Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public final mBoundedWidgetPkgs:Landroid/util/ArrayMap;

.field public mContext:Landroid/content/Context;

.field public mContextUserId:I

.field public final mRunningWidgets:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContextUserId:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final deInit()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 3

    iget p2, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContextUserId:I

    const/4 v0, 0x0

    if-eq p1, p2, :cond_3

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x96

    if-lt p1, p2, :cond_1

    const/16 p2, 0xa0

    if-gt p1, p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return v0

    :cond_3
    :goto_1
    const/4 p2, 0x3

    const/4 v1, 0x4

    if-eq p3, p2, :cond_4

    const/16 p2, 0xf

    if-ne p3, p2, :cond_6

    :cond_4
    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    if-lez p3, :cond_5

    iget-object p3, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    if-eqz p3, :cond_5

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    monitor-exit p2

    return v1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_5
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    iget-object p3, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    monitor-enter p3

    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;

    if-eqz p0, :cond_8

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_2

    :cond_7
    move p0, v0

    :goto_2
    if-eqz p0, :cond_8

    monitor-exit p3

    return v1

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_8
    monitor-exit p3

    return v0

    :goto_3
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :goto_4
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final getBoundAppWidgetPackages()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    iget v4, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContextUserId:I

    if-eq v3, v4, :cond_3

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/16 v4, 0x96

    if-lt v3, v4, :cond_2

    const/16 v4, 0xa0

    if-gt v3, v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    :goto_1
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v2}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Landroid/appwidget/AppWidgetManager;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-nez v7, :cond_4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_4
    :goto_3
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "FILTER 4 add to bound"

    invoke-static {v8, v5}, Lcom/android/server/am/mars/MARsUtils;->addFilterDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v5, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v6

    goto :goto_5

    :goto_4
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_6
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    iput p1, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mContextUserId:I

    return-void
.end method

.method public final onAppWidgetDisabled(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-gtz v2, :cond_2

    iget-object v2, v1, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v2, v1, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v2, "FILTER 4 remove from running"

    invoke-static {v2, p2}, Lcom/android/server/am/mars/MARsUtils;->addFilterDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_3
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v2, "FILTER 4 remove from bound"

    invoke-static {v2, p2}, Lcom/android/server/am/mars/MARsUtils;->addFilterDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mBoundedWidgetPkgs:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_4
    :goto_3
    monitor-exit v1

    return-void

    :goto_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :goto_5
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onAppWidgetEnabled(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v1, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->mMap:Landroid/util/ArrayMap;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, v1, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_1
    iget-object v3, v1, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPackages;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "FILTER 4 add to running"

    invoke-static {v2, p2}, Lcom/android/server/am/mars/MARsUtils;->addFilterDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->mRunningWidgets:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
