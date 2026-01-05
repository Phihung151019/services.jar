.class public final Lcom/android/server/inputmethod/InputContentUriTokenHandler;
.super Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public mPermissionOwnerToken:Landroid/os/IBinder;

.field public final mSourceUid:I

.field public final mSourceUserId:I

.field public final mTargetPackage:Ljava/lang/String;

.field public final mTargetUserId:I

.field public final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/net/Uri;II)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mUri:Landroid/net/Uri;

    iput p1, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mSourceUid:I

    iput-object p2, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mTargetPackage:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mSourceUserId:I

    iput p5, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mTargetUserId:I

    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final release()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    const-class v2, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mUri:Landroid/net/Uri;

    iget v5, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mSourceUserId:I

    check-cast v2, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v6, v5}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-object v1, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    monitor-exit v0

    return-void

    :catchall_1
    move-exception v2

    iput-object v1, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    throw v2

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final take()V
    .locals 13

    iget-object v1, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    const-string v2, "InputContentUriTokenHandler"

    check-cast v0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    invoke-virtual {v0, v2}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v3

    iget v5, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mSourceUid:I

    iget-object v6, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mTargetPackage:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mUri:Landroid/net/Uri;

    iget v9, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mSourceUserId:I

    iget v10, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mTargetUserId:I

    const/4 v8, 0x1

    invoke-interface/range {v3 .. v10}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    :try_start_3
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1

    return-void

    :goto_1
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
