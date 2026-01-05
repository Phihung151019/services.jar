.class public final Lcom/android/server/am/mars/filter/filter/AllowListFilter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public mCarrierAllowList:Ljava/util/List;

.field public mContext:Landroid/content/Context;

.field public mDefaultAllowList:Ljava/util/ArrayList;


# virtual methods
.method public final deInit()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mDefaultAllowList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mDefaultAllowList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mCarrierAllowList:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mCarrierAllowList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->setCarrierAllowList()V

    return-void
.end method

.method public final isInDefaultAllowList(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mCarrierAllowList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mCarrierAllowList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mDefaultAllowList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mDefaultAllowList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    monitor-exit v1

    return v2

    :catchall_1
    move-exception p0

    goto :goto_0

    :cond_1
    monitor-exit v1

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final setCarrierAllowList()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCarrierPrivilegedPackagesForAllActiveSubscriptions()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mCarrierAllowList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mCarrierAllowList:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->mCarrierAllowList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method
