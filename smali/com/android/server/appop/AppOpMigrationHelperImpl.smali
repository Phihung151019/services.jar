.class public final Lcom/android/server/appop/AppOpMigrationHelperImpl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAppIdAppOpModes:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public mPackageAppOpModes:Landroid/util/SparseArray;

.field public mVersionAtBoot:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mAppIdAppOpModes:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mPackageAppOpModes:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static getAppOpModesForOpName(Landroid/util/SparseIntArray;)Ljava/util/Map;
    .locals 5

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final getLegacyAppOpVersion()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mAppIdAppOpModes:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mPackageAppOpModes:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpMigrationHelperImpl;->readLegacyAppOpState()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p0, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mVersionAtBoot:I

    return p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final readLegacyAppOpState()V
    .locals 11

    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "appops.xml"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/android/server/appop/LegacyAppOpStateParser;->readState(Landroid/util/AtomicFile;Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    move-result v1

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v1, v3, :cond_1

    if-eq v1, v4, :cond_0

    iput v1, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mVersionAtBoot:I

    goto :goto_0

    :cond_0
    iput v5, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mVersionAtBoot:I

    goto :goto_0

    :cond_1
    iput v4, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mVersionAtBoot:I

    :goto_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v4, v5

    :goto_1
    if-ge v4, v3, :cond_3

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    if-nez v8, :cond_2

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v1, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseIntArray;

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Lcom/android/server/appop/AppOpMigrationHelperImpl;->getAppOpModesForOpName(Landroid/util/SparseIntArray;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iput-object v1, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mAppIdAppOpModes:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v3, v5

    :goto_2
    if-ge v3, v1, :cond_6

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-nez v6, :cond_4

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v7

    move v8, v5

    :goto_3
    if-ge v8, v7, :cond_5

    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseIntArray;

    invoke-static {v10}, Lcom/android/server/appop/AppOpMigrationHelperImpl;->getAppOpModesForOpName(Landroid/util/SparseIntArray;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    iput-object v0, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mPackageAppOpModes:Landroid/util/SparseArray;

    return-void
.end method
