.class public final Lcom/android/server/am/mars/filter/filter/TopPackageFilter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public final mTopPkg:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->mTopPkg:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final deInit()V
    .locals 0

    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->isChinaPolicyEnabled()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->getScreenOnState()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    sget-object p2, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p4, v2, v2}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0xe

    if-ne p3, p2, :cond_1

    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->getScreenOnState()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x6

    if-eq p3, p2, :cond_2

    const/4 p2, 0x3

    if-ne p3, p2, :cond_3

    :cond_2
    sget-boolean p2, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object p2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {p2}, Lcom/android/server/am/MARsPolicyManager;->isFirstTimeTriggerAutorun()Z

    move-result p2

    if-eqz p2, :cond_3

    :goto_0
    return v0

    :cond_3
    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->mTopPkg:Landroid/util/ArrayMap;

    monitor-enter p2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->mTopPkg:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0xc

    monitor-exit p2

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_4
    monitor-exit p2

    return v0

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final updateTopPkgList(ILjava/util/ArrayList;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->mTopPkg:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->mTopPkg:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->mTopPkg:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method
