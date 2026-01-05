.class public Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field mCachedLocale:Ljava/util/Locale;

.field public mCachedNotificationInfos:Landroid/util/SparseArray;

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCachedLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mCachedLocale:Ljava/util/Locale;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public loadNotificationInfos()Landroid/util/SparseArray;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, v0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10701ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10701e7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10701e6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10701e5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10701ec

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10701eb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10701e9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iget-object v0, v0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x10701e8

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v9, v2

    array-length v10, v3

    if-ne v9, v10, :cond_2

    array-length v9, v2

    array-length v10, v4

    if-ne v9, v10, :cond_2

    array-length v9, v2

    array-length v10, v5

    if-ne v9, v10, :cond_2

    array-length v9, v2

    array-length v10, v6

    if-ne v9, v10, :cond_2

    array-length v9, v2

    array-length v10, v7

    if-ne v9, v10, :cond_2

    array-length v9, v2

    array-length v10, v8

    if-ne v9, v10, :cond_2

    array-length v9, v2

    array-length v10, v0

    if-ne v9, v10, :cond_2

    const/4 v9, 0x0

    :goto_0
    array-length v10, v2

    if-ge v9, v10, :cond_1

    aget v10, v2, v9

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    goto :goto_1

    :cond_0
    new-instance v12, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;

    aget-object v13, v3, v9

    aget-object v14, v4, v9

    aget-object v15, v5, v9

    aget-object v16, v6, v9

    aget-object v17, v7, v9

    aget-object v18, v8, v9

    aget-object v19, v0, v9

    invoke-direct/range {v12 .. v19}, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The length of state identifiers and notification texts must match!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public refreshNotificationInfos(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mCachedLocale:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->loadNotificationInfos()Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mCachedNotificationInfos:Landroid/util/SparseArray;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
