.class public final Lcom/android/server/credentials/CredentialDescriptionRegistry;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final sCredentialDescriptionSessionPerUser:Landroid/util/SparseArray;

.field public static final sLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field public mCredentialDescriptions:Ljava/util/Map;

.field public mTotalDescriptionCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sCredentialDescriptionSessionPerUser:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public static clearAllSessions()V
    .locals 2

    sget-object v0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    sget-object v1, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sCredentialDescriptionSessionPerUser:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public static forUser(I)Lcom/android/server/credentials/CredentialDescriptionRegistry;
    .locals 4

    sget-object v0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    sget-object v1, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sCredentialDescriptionSessionPerUser:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/credentials/CredentialDescriptionRegistry;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/server/credentials/CredentialDescriptionRegistry;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mTotalDescriptionCount:I

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public static setSession(ILcom/android/server/credentials/CredentialDescriptionRegistry;)V
    .locals 2

    sget-object v0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    sget-object v1, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sCredentialDescriptionSessionPerUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method
