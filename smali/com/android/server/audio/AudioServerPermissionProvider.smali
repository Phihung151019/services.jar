.class public final Lcom/android/server/audio/AudioServerPermissionProvider;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final HDS_PERMS:[B

.field public static final MONITORED_PERMS:[Ljava/lang/String;


# instance fields
.field public mDest:Lcom/android/media/permission/INativePermissionController;

.field public mHdsUid:I

.field public mIsUpdateDeferred:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPackageMap:Ljava/util/Map;

.field public final mPermMap:[[I

.field public final mPermissionPredicate:Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda17;

.field public final mUserIdSupplier:Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda18;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/audio/AudioServerPermissionProvider;->MONITORED_PERMS:[Ljava/lang/String;

    const/16 v1, 0xa

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v5, v4, [B

    fill-array-data v5, :array_0

    sput-object v5, Lcom/android/server/audio/AudioServerPermissionProvider;->HDS_PERMS:[B

    const-string/jumbo v5, "android.permission.RECORD_AUDIO"

    aput-object v5, v0, v3

    const/4 v3, 0x1

    const-string/jumbo v5, "android.permission.MODIFY_AUDIO_ROUTING"

    aput-object v5, v0, v3

    const/4 v3, 0x2

    const-string/jumbo v5, "android.permission.MODIFY_AUDIO_SETTINGS"

    aput-object v5, v0, v3

    const-string/jumbo v3, "android.permission.MODIFY_PHONE_STATE"

    aput-object v3, v0, v4

    const/4 v3, 0x4

    const-string/jumbo v4, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "android.permission.WRITE_SECURE_SETTINGS"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "android.permission.CALL_AUDIO_INTERCEPTION"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "android.permission.ACCESS_ULTRASOUND"

    aput-object v4, v0, v3

    const-string/jumbo v3, "android.permission.CAPTURE_AUDIO_OUTPUT"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "android.permission.CAPTURE_MEDIA_OUTPUT"

    aput-object v3, v0, v2

    const-string/jumbo v2, "android.permission.CAPTURE_AUDIO_HOTWORD"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "android.permission.CAPTURE_TUNER_AUDIO_INPUT"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "android.permission.CAPTURE_VOICE_COMMUNICATION_OUTPUT"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "android.permission.BLUETOOTH_CONNECT"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "android.permission.BYPASS_CONCURRENT_RECORD_AUDIO_RESTRICTION"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    aput-object v2, v0, v1

    return-void

    :array_0
    .array-data 1
        0xat
        0x8t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Collection;Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda17;Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda18;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mLock:Ljava/lang/Object;

    const/16 v0, 0x10

    new-array v1, v0, [[I

    iput-object v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Lcom/android/server/audio/AudioServerPermissionProvider;->MONITORED_PERMS:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mUserIdSupplier:Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda18;

    iput-object p2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermissionPredicate:Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda17;

    new-instance p2, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda0;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance p3, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda1;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {p3}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p3

    invoke-static {p2, p3}, Ljava/util/stream/Collectors;->mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p3, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v0, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {p3, v0, p2}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getUidsHoldingPerm(I)[I
    .locals 11

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iget-object v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mUserIdSupplier:Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda18;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda18;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget v5, v1, v4

    iget-object v6, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v5, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Lcom/android/server/audio/AudioServerPermissionProvider;->MONITORED_PERMS:[Ljava/lang/String;

    aget-object v9, v9, p1

    iget-object v10, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermissionPredicate:Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda17;

    invoke-virtual {v10, v8, v9}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda17;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0, v7}, Landroid/util/IntArray;->add(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/server/audio/AudioServerPermissionProvider;->HDS_PERMS:[B

    :goto_2
    const/4 v2, 0x3

    if-ge v3, v2, :cond_4

    aget-byte v2, v1, v3

    if-ne p1, v2, :cond_3

    iget p0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_4

    invoke-virtual {v0, p0}, Landroid/util/IntArray;->add(I)V

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    return-object p0
.end method

.method public final onModifyPackageState(ILjava/lang/String;Z)V
    .locals 4

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p3, :cond_0

    :try_start_0
    iget-object p3, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda0;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    iget-object p3, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    if-eqz p3, :cond_1

    invoke-interface {p3, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    if-nez p2, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    new-instance p2, Lcom/android/media/permission/UidPackageState;

    invoke-direct {p2}, Lcom/android/media/permission/UidPackageState;-><init>()V

    iput p1, p2, Lcom/android/media/permission/UidPackageState;->uid:I

    if-eqz p3, :cond_3

    invoke-static {p3}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_3
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_1
    iput-object p1, p2, Lcom/android/media/permission/UidPackageState;->packageNames:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    invoke-interface {p1, p2}, Lcom/android/media/permission/INativePermissionController;->updatePackagesForUid(Lcom/android/media/permission/UidPackageState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    const/4 p1, 0x0

    :try_start_2
    iput-object p1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onPermissionStateChanged()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    const-string/jumbo v1, "audioserver_permission_update"

    const-wide/32 v3, 0x80000

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :goto_0
    const/16 v5, 0x10

    if-ge v1, v5, :cond_2

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioServerPermissionProvider;->getUidsHoldingPerm(I)[I

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aget-object v6, v6, v1

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aput-object v5, v6, v1

    iget-object v6, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    invoke-interface {v6, v1, v5}, Lcom/android/media/permission/INativePermissionController;->populatePermissionState(B[I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    iput-boolean v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_3

    :goto_2
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
