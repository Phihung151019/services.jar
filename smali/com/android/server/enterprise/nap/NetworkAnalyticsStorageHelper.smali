.class public final Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static mDefaultHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

.field public static mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public static final mSynObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->mSynObj:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;
    .locals 4

    const-class v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->mDefaultHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->mSynObj:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sput-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->mDefaultHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->mDefaultHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    return-object p0

    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method
