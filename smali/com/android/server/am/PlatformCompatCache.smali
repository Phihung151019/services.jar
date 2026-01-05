.class public final Lcom/android/server/am/PlatformCompatCache;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final CACHED_COMPAT_CHANGE_IDS_MAPPING:[J

.field public static sPlatformCompatCache:Lcom/android/server/am/PlatformCompatCache;


# instance fields
.field public final mCacheEnabled:Z

.field public final mCaches:Landroid/util/LongSparseArray;

.field public final mIPlatformCompatProxy:Lcom/android/internal/compat/IPlatformCompat;

.field public final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/PlatformCompatCache;->CACHED_COMPAT_CHANGE_IDS_MAPPING:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x81f62a4
        0x81e8a55
        0xaf7340d
    .end array-data
.end method

.method public constructor <init>([J)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    instance-of v2, v1, Lcom/android/server/compat/PlatformCompat;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/compat/PlatformCompat;

    iput-object v0, p0, Lcom/android/server/am/PlatformCompatCache;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    array-length v0, p1

    :goto_0
    if-ge v4, v0, :cond_0

    aget-wide v1, p1, v4

    iget-object v5, p0, Lcom/android/server/am/PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    new-instance v6, Lcom/android/server/am/PlatformCompatCache$CacheItem;

    iget-object v7, p0, Lcom/android/server/am/PlatformCompatCache;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-direct {v6, v7, v1, v2}, Lcom/android/server/am/PlatformCompatCache$CacheItem;-><init>(Lcom/android/server/compat/PlatformCompat;J)V

    invoke-virtual {v5, v1, v2, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lcom/android/server/am/PlatformCompatCache;->mIPlatformCompatProxy:Lcom/android/internal/compat/IPlatformCompat;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/am/PlatformCompatCache;->mCacheEnabled:Z

    return-void

    :cond_1
    invoke-static {v1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/PlatformCompatCache;->mIPlatformCompatProxy:Lcom/android/internal/compat/IPlatformCompat;

    iput-object v3, p0, Lcom/android/server/am/PlatformCompatCache;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iput-boolean v4, p0, Lcom/android/server/am/PlatformCompatCache;->mCacheEnabled:Z

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/PlatformCompatCache;
    .locals 2

    sget-object v0, Lcom/android/server/am/PlatformCompatCache;->sPlatformCompatCache:Lcom/android/server/am/PlatformCompatCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/PlatformCompatCache;

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/android/server/am/PlatformCompatCache;-><init>([J)V

    sput-object v0, Lcom/android/server/am/PlatformCompatCache;->sPlatformCompatCache:Lcom/android/server/am/PlatformCompatCache;

    :cond_0
    sget-object v0, Lcom/android/server/am/PlatformCompatCache;->sPlatformCompatCache:Lcom/android/server/am/PlatformCompatCache;

    return-object v0

    :array_0
    .array-data 8
        0x81f62a4
        0x81e8a55
        0xaf7340d
    .end array-data
.end method
