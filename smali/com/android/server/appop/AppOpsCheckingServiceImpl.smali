.class public final Lcom/android/server/appop/AppOpsCheckingServiceImpl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/appop/AppOpsCheckingServiceInterface;


# static fields
.field static final CURRENT_VERSION:I = 0x4


# instance fields
.field public final mAppOpsStateParser:Lcom/android/server/appop/LegacyAppOpStateParser;

.field public final mContext:Landroid/content/Context;

.field public mFastWriteScheduled:Z

.field public final mFile:Landroid/util/AtomicFile;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Lcom/android/server/appop/AppOpsService;

.field public final mModeChangedListeners:Ljava/util/List;

.field final mUidModes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserPackageModes:Landroid/util/SparseArray;

.field public mVersionAtBoot:I

.field public final mWriteRunner:Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;

.field public mWriteScheduled:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/android/server/appop/AppOpsService;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mVersionAtBoot:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/appop/LegacyAppOpStateParser;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mAppOpsStateParser:Lcom/android/server/appop/LegacyAppOpStateParser;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mModeChangedListeners:Ljava/util/List;

    new-instance v0, Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;-><init>(Lcom/android/server/appop/AppOpsCheckingServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteRunner:Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;

    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFile:Landroid/util/AtomicFile;

    iput-object p2, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Lcom/android/server/appop/AppOpsService;

    iput-object p3, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final addAppOpsModeChangedListener(Lcom/android/server/appop/AppOpsService$3;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mModeChangedListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final clearAllModes()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getForegroundOps(I)Landroid/util/SparseBooleanArray;
    .locals 4

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseIntArray;

    if-nez p0, :cond_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getForegroundOps(ILjava/lang/String;)Landroid/util/SparseBooleanArray;
    .locals 3

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseIntArray;

    if-nez p0, :cond_1

    monitor-exit v1

    return-object v0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p2

    const/4 v2, 0x4

    if-ne p2, v2, :cond_2

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p2

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getNonDefaultPackageModes(ILjava/lang/String;)Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_0

    new-instance p0, Landroid/util/SparseIntArray;

    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseIntArray;

    if-nez p0, :cond_1

    new-instance p0, Landroid/util/SparseIntArray;

    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    monitor-exit v0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getNonDefaultUidModes(I)Landroid/util/SparseIntArray;
    .locals 2

    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseIntArray;

    if-nez p0, :cond_0

    new-instance p0, Landroid/util/SparseIntArray;

    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getPackageMode(IILjava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_0

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseIntArray;

    if-nez p0, :cond_1

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result p0

    monitor-exit v0

    return p0

    :cond_1
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPackagesWithNonDefaultModes()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserPackage;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    move v5, v2

    :goto_1
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v1

    return-object v0

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getUidMode(IILjava/lang/String;)I
    .locals 1

    iget-object p3, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter p3

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseIntArray;

    if-nez p0, :cond_0

    invoke-static {p2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result p0

    monitor-exit p3

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit p3

    return p0

    :goto_0
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getUidsWithNonDefaultModes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1

    return-object v0

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final readState()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFile:Landroid/util/AtomicFile;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mAppOpsStateParser:Lcom/android/server/appop/LegacyAppOpStateParser;

    iget-object v3, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFile:Landroid/util/AtomicFile;

    iget-object v4, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/android/server/appop/LegacyAppOpStateParser;->readState(Landroid/util/AtomicFile;Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    move-result v2

    iput v2, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mVersionAtBoot:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final removePackage(ILjava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseIntArray;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->scheduleFastWriteLocked()V

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_1
    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeUid(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->scheduleFastWriteLocked()V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public resetUseFullScreenIntentLocked()V
    .locals 15

    const-class v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    iget-object v3, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mContext:Landroid/content/Context;

    const-class v4, Landroid/permission/PermissionManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/permission/PermissionManager;

    const/16 v4, 0x85

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v1

    array-length v6, v0

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_2

    aget-object v9, v0, v8

    array-length v10, v1

    move v11, v7

    :goto_1
    if-ge v11, v10, :cond_1

    aget v12, v1, v11

    const-wide/16 v13, 0x0

    invoke-virtual {v2, v9, v13, v14, v12}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v13

    invoke-static {v12}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v12

    invoke-virtual {v3, v9, v5, v12}, Landroid/permission/PermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v12

    and-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_0

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v12

    invoke-virtual {p0, v13, v4, v12}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->setUidMode(III)Z

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final scheduleFastWriteLocked()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFastWriteScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteScheduled:Z

    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFastWriteScheduled:Z

    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteRunner:Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final setPackageMode(IIILjava/lang/String;)V
    .locals 8

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    if-nez v2, :cond_0

    if-eq p2, v0, :cond_0

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iget-object v4, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v4, p3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    if-ne p2, v4, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    if-ne p2, v0, :cond_3

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->delete(I)V

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v2, p4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    :cond_3
    if-nez v2, :cond_4

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v0, p3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    if-nez v3, :cond_5

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual {v2, p4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->scheduleFastWriteLocked()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mModeChangedListeners:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_7

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$3;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/AppOpsManager;->invalidateAppOpModeCache()V

    iget-object v3, v1, Lcom/android/server/appop/AppOpsService$3;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v3, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda17;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda17;-><init>(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v4, p4

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    invoke-virtual {v1, p4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 p0, p0, 0x1

    move-object p4, v4

    goto :goto_3

    :cond_7
    return-void

    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setUidMode(III)Z
    .locals 6

    const-string/jumbo v0, "default:0"

    invoke-static {p2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    move v4, v1

    :goto_0
    const/4 v5, 0x0

    if-ne p3, v4, :cond_1

    monitor-exit v2

    return v5

    :cond_1
    if-ne p3, v1, :cond_2

    invoke-virtual {v3, p2}, Landroid/util/SparseIntArray;->delete(I)V

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result p3

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    invoke-virtual {v3, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->scheduleFastWriteLocked()V

    new-instance p3, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mModeChangedListeners:Ljava/util/List;

    invoke-direct {p3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v5, p0, :cond_5

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appop/AppOpsService$3;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/appop/AppOpsService$3;->onUidModeChanged(IILjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    const/4 p0, 0x1

    return p0

    :goto_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final shutdown()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteScheduled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteScheduled:Z

    iput-boolean v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFastWriteScheduled:Z

    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mWriteRunner:Lcom/android/server/appop/AppOpsCheckingServiceImpl$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->writeState()V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final systemReady()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mVersionAtBoot:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Upgrading app-ops xml from version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to 4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "LegacyAppOpsServiceInterfaceImpl"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->upgradeRunAnyInBackgroundLocked()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->upgradeScheduleExactAlarmLocked()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->resetUseFullScreenIntentLocked()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->scheduleFastWriteLocked()V

    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public upgradeRunAnyInBackgroundLocked()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x46

    const/16 v4, 0x3f

    if-ge v2, v0, :cond_1

    iget-object v5, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_0

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_4

    iget-object v5, p0, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v7, v1

    :goto_2
    if-ge v7, v6, :cond_3

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseIntArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v9

    if-ltz v9, :cond_2

    invoke-virtual {v8, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    invoke-virtual {v8, v3, v9}, Landroid/util/SparseIntArray;->put(II)V

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public upgradeScheduleExactAlarmLocked()V
    .locals 13

    const-class v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    const/16 v3, 0x6b

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v1

    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v0, v6

    array-length v8, v1

    move v9, v5

    :goto_1
    if-ge v9, v8, :cond_1

    aget v10, v1, v9

    const-wide/16 v11, 0x0

    invoke-virtual {v2, v7, v11, v12, v10}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v10

    const-string/jumbo v11, "default:0"

    invoke-virtual {p0, v10, v3, v11}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->getUidMode(IILjava/lang/String;)I

    move-result v11

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v12

    if-ne v11, v12, :cond_0

    invoke-virtual {p0, v10, v3, v5}, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->setUidMode(III)Z

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final writeState()V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "Failed to write state: "

    iget-object v3, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFile:Landroid/util/AtomicFile;

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v5, 0x0

    invoke-interface {v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v4, "app-ops"

    invoke-interface {v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "v"

    const/4 v6, 0x4

    invoke-interface {v0, v5, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iget-object v7, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v8, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_0

    iget-object v11, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    iget-object v12, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUidModes:Landroid/util/SparseArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    iget-object v10, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_2

    iget-object v12, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    iget-object v13, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mUserPackageModes:Landroid/util/SparseArray;

    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArrayMap;

    new-instance v14, Landroid/util/ArrayMap;

    invoke-direct {v14}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v6, v12, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v12

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v12, :cond_1

    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/SparseIntArray;

    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-virtual {v14, v9, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v8, :cond_4

    :try_start_3
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseIntArray;

    const-string/jumbo v11, "uid"

    const/4 v12, 0x0

    invoke-interface {v0, v12, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "n"

    invoke-interface {v0, v12, v11, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v7, :cond_3

    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v13

    const-string/jumbo v14, "op"

    const/4 v15, 0x0

    invoke-interface {v0, v15, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "n"

    invoke-interface {v0, v15, v14, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "m"

    invoke-interface {v0, v15, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "op"

    invoke-interface {v0, v15, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_c

    :catch_0
    move-exception v0

    goto/16 :goto_9

    :cond_3
    const-string/jumbo v7, "uid"

    const/4 v15, 0x0

    invoke-interface {v0, v15, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v10, :cond_7

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    const-string/jumbo v8, "user"

    const/4 v15, 0x0

    invoke-interface {v0, v15, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "n"

    invoke-interface {v0, v15, v8, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v5, :cond_6

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseIntArray;

    const-string/jumbo v12, "pkg"

    const/4 v15, 0x0

    invoke-interface {v0, v15, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "n"

    invoke-interface {v0, v15, v12, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v9, :cond_5

    invoke-virtual {v11, v12}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v11, v12}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v14

    const-string/jumbo v15, "op"

    move/from16 v16, v4

    const/4 v4, 0x0

    invoke-interface {v0, v4, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v15, "n"

    invoke-interface {v0, v4, v15, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "m"

    invoke-interface {v0, v4, v13, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "op"

    invoke-interface {v0, v4, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v16

    goto :goto_7

    :cond_5
    move/from16 v16, v4

    const-string/jumbo v4, "pkg"

    const/4 v15, 0x0

    invoke-interface {v0, v15, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v8, v8, 0x1

    move/from16 v4, v16

    goto :goto_6

    :cond_6
    move/from16 v16, v4

    const-string/jumbo v4, "user"

    const/4 v15, 0x0

    invoke-interface {v0, v15, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v16, 0x1

    goto/16 :goto_5

    :cond_7
    const-string/jumbo v4, "app-ops"

    const/4 v15, 0x0

    invoke-interface {v0, v15, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    iget-object v0, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_a

    :goto_8
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_9
    :try_start_6
    const-string/jumbo v4, "LegacyAppOpsServiceInterfaceImpl"

    const-string v5, "Failed to write state, restoring backup."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v1, Lcom/android/server/appop/AppOpsCheckingServiceImpl;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_a
    monitor-exit v3

    goto :goto_b

    :catch_1
    move-exception v0

    const-string/jumbo v1, "LegacyAppOpsServiceInterfaceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    :goto_b
    return-void

    :goto_c
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method
