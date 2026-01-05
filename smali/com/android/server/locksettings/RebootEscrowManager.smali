.class public Lcom/android/server/locksettings/RebootEscrowManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final REBOOT_ESCROW_ARMED_KEY:Ljava/lang/String; = "reboot_escrow_armed_count"


# instance fields
.field public final mCallbacks:Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;

.field public final mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

.field public final mKeyGenerationLock:Ljava/lang/Object;

.field public final mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

.field public mLoadEscrowDataErrorCode:I

.field public mLoadEscrowDataWithRetry:Z

.field public mNetworkCallback:Lcom/android/server/locksettings/RebootEscrowManager$1;

.field public mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

.field public mRebootEscrowListener:Lcom/android/internal/widget/RebootEscrowListener;

.field public mRebootEscrowReady:Z

.field public mRebootEscrowTimedOut:Z

.field public mRebootEscrowWanted:Z

.field public final mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

.field public final mUserManager:Landroid/os/UserManager;

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/RebootEscrowManager$Injector;Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    iput-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowTimedOut:Z

    iput-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataWithRetry:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyGenerationLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mCallbacks:Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;

    iput-object p3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget-object p2, p1, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo p3, "user"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mUserManager:Landroid/os/UserManager;

    new-instance p2, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    invoke-direct {p2}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;-><init>()V

    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    iget-object p1, p1, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    iput-object p4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final clearMetricsStorage()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v0, "reboot_escrow_armed_count"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    const-string/jumbo v0, "reboot_escrow_key_stored_timestamp"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    const-string/jumbo v0, "reboot_escrow_key_vbmeta_digest"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    const-string/jumbo v0, "reboot_escrow_key_other_vbmeta_digest"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    const-string/jumbo v0, "reboot_escrow_key_provider"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    return-void
.end method

.method public final clearRebootEscrowIfNeeded()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowWanted:Z

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/RebootEscrowManager;->setRebootEscrowReady(Z)V

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->createRebootEscrowProviderIfNeeded()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "RebootEscrowManager"

    const-string/jumbo v2, "RebootEscrowProvider is unavailable for clear request"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->clearRebootEscrowKey()V

    :goto_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mRebootEscrowProvider:Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearMetricsStorage()V

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    iget-object v3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v3, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowFile(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;-><init>(ILjava/lang/Integer;)V

    iget v1, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mEntries:[Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    array-length v0, v2

    rem-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    return-void
.end method

.method public final compareAndSetLoadEscrowDataErrorCode(Landroid/os/Handler;II)V
    .locals 1

    iget v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p3, p1}, Lcom/android/server/locksettings/RebootEscrowManager;->setLoadEscrowDataErrorCode(ILandroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public final loadRebootEscrowDataWithRetry(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    iget-object v3, v1, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    iget-object v0, v1, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    iget-object v5, v0, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->getKeyStoreEncryptionKeyLocked()Ljavax/crypto/SecretKey;

    move-result-object v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v5, "RebootEscrowManager"

    if-nez v6, :cond_0

    const-string v0, "Failed to load the key for resume on reboot from key store."

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v7, 0x1

    const/4 v8, 0x3

    const/4 v9, 0x4

    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->createRebootEscrowProviderIfNeeded()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    iget-object v11, v1, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    const/4 v12, 0x0

    const/4 v13, 0x7

    if-nez v0, :cond_1

    :try_start_2
    const-string v0, "Had reboot escrow data for users, but RebootEscrowProvider is unavailable"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/locksettings/RebootEscrowManager;->setLoadEscrowDataErrorCode(ILandroid/os/Handler;)V

    :goto_0
    move-object v9, v12

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->getType()I

    move-result v14

    if-ne v14, v7, :cond_2

    if-nez v6, :cond_2

    invoke-virtual {v1, v13, v2}, Lcom/android/server/locksettings/RebootEscrowManager;->setLoadEscrowDataErrorCode(ILandroid/os/Handler;)V

    goto :goto_0

    :cond_2
    invoke-interface {v0, v6}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->getAndClearRebootEscrowKey(Ljavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowKey;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    invoke-direct {v14, v9, v12}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;-><init>(ILjava/lang/Integer;)V

    iget v15, v11, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    iget-object v9, v11, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mEntries:[Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    aput-object v14, v9, v15

    add-int/2addr v15, v7

    array-length v9, v9

    rem-int/2addr v15, v9

    iput v15, v11, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    move-object v9, v0

    :goto_1
    iget-object v14, v1, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    if-nez v9, :cond_6

    iget v0, v1, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    if-nez v0, :cond_5

    invoke-virtual {v3}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->serverBasedResumeOnReboot()Z

    move-result v0

    const-string/jumbo v3, "reboot_escrow_key_provider"

    const/4 v5, -0x1

    invoke-virtual {v14, v5, v10, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->getInt(IILjava/lang/String;)I

    move-result v3

    if-eq v0, v3, :cond_4

    const/4 v0, 0x6

    invoke-virtual {v1, v0, v2}, Lcom/android/server/locksettings/RebootEscrowManager;->setLoadEscrowDataErrorCode(ILandroid/os/Handler;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v8, v2}, Lcom/android/server/locksettings/RebootEscrowManager;->setLoadEscrowDataErrorCode(ILandroid/os/Handler;)V

    :cond_5
    :goto_2
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {v1, v4, v0, v2}, Lcom/android/server/locksettings/RebootEscrowManager;->onGetRebootEscrowKeyFailed(Ljava/util/List;ILandroid/os/Handler;)V

    return-void

    :cond_6
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    invoke-direct {v0, v7, v12}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;-><init>(ILjava/lang/Integer;)V

    iget v3, v11, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    iget-object v4, v11, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mEntries:[Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    aput-object v0, v4, v3

    add-int/2addr v3, v7

    array-length v0, v4

    rem-int/2addr v3, v0

    iput v3, v11, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v7

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v8, v0, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v0, "Restored reboot escrow data for user "

    invoke-virtual {v14, v8}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowFile(I)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    move-result v12

    if-nez v12, :cond_7

    move/from16 v16, v7

    :goto_4
    move v0, v10

    goto :goto_6

    :cond_7
    :try_start_3
    invoke-virtual {v14, v8}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowFile(I)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    move-result-object v12

    invoke-virtual {v14, v8}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowFile(I)Ljava/io/File;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    invoke-static {v9, v12, v6}, Lcom/android/server/locksettings/RebootEscrowData;->fromEncryptedData(Lcom/android/server/locksettings/RebootEscrowKey;[BLjavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowData;

    move-result-object v12

    iget-object v15, v1, Lcom/android/server/locksettings/RebootEscrowManager;->mCallbacks:Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move/from16 v16, v7

    :try_start_4
    iget-byte v7, v12, Lcom/android/server/locksettings/RebootEscrowData;->mSpVersion:B

    iget-object v12, v12, Lcom/android/server/locksettings/RebootEscrowData;->mSyntheticPassword:[B

    check-cast v15, Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-virtual {v15, v7, v12, v8}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->onRebootEscrowRestored(B[BI)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v13, v7}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;-><init>(ILjava/lang/Integer;)V

    iget v7, v11, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    iget-object v12, v11, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mEntries:[Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    aput-object v0, v12, v7

    add-int/lit8 v7, v7, 0x1

    array-length v0, v12

    rem-int/2addr v7, v0

    iput v7, v11, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move/from16 v0, v16

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move/from16 v16, v7

    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "Could not load reboot escrow data for user "

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :goto_6
    and-int/2addr v4, v0

    move/from16 v7, v16

    goto :goto_3

    :cond_8
    move/from16 v16, v7

    if-nez v4, :cond_9

    const/4 v0, 0x5

    invoke-virtual {v1, v2, v10, v0}, Lcom/android/server/locksettings/RebootEscrowManager;->compareAndSetLoadEscrowDataErrorCode(Landroid/os/Handler;II)V

    :cond_9
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {v1, v4, v0, v2}, Lcom/android/server/locksettings/RebootEscrowManager;->onEscrowRestoreComplete(ZILandroid/os/Handler;)V

    return-void

    :catch_2
    move-exception v0

    move/from16 v16, v7

    const-string v6, "Failed to load escrow key, scheduling retry."

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    add-int/lit8 v0, p2, 0x1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "ota"

    const-string/jumbo v6, "load_escrow_data_retry_count"

    invoke-static {v3, v6, v8}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v7, "load_escrow_data_retry_interval_seconds"

    const/16 v8, 0x1e

    invoke-static {v3, v7, v8}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    if-ge v0, v6, :cond_a

    iget-boolean v3, v1, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowTimedOut:Z

    if-nez v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Scheduling loadRebootEscrowData retry number: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v0

    new-instance v0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda4;

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/locksettings/RebootEscrowManager;Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v3, v7

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8

    :cond_a
    move v3, v0

    iget-boolean v0, v1, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowTimedOut:Z

    if-eqz v0, :cond_b

    const-string v0, "Failed to load reboot escrow data within timeout"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x9

    invoke-virtual {v1, v2, v10, v0}, Lcom/android/server/locksettings/RebootEscrowManager;->compareAndSetLoadEscrowDataErrorCode(Landroid/os/Handler;II)V

    goto :goto_7

    :cond_b
    const-string v0, "Failed to load reboot escrow data after "

    const-string v6, " attempts"

    invoke-static {v3, v0, v6, v5}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x4

    invoke-virtual {v1, v2, v10, v5}, Lcom/android/server/locksettings/RebootEscrowManager;->compareAndSetLoadEscrowDataErrorCode(Landroid/os/Handler;II)V

    :goto_7
    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/locksettings/RebootEscrowManager;->onGetRebootEscrowKeyFailed(Ljava/util/List;ILandroid/os/Handler;)V

    :goto_8
    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public final onEscrowRestoreComplete(ZILandroid/os/Handler;)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v0, p3

    iget-object v2, v1, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v4, "reboot_escrow_armed_count"

    const/4 v5, -0x1

    const/4 v10, 0x0

    invoke-virtual {v2, v5, v10, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->getInt(IILjava/lang/String;)I

    move-result v2

    iget-object v4, v1, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    iget-object v4, v4, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "boot_count"

    invoke-static {v4, v6, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    sub-int/2addr v4, v2

    const/4 v11, 0x0

    if-nez v3, :cond_0

    if-eq v2, v5, :cond_8

    const/4 v2, 0x5

    if-gt v4, v2, :cond_8

    :cond_0
    iget-object v2, v1, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v2}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->serverBasedResumeOnReboot()Z

    move-result v2

    const/4 v4, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    move v2, v5

    move v5, v4

    goto :goto_0

    :cond_1
    move v2, v5

    move v5, v6

    :goto_0
    const-string/jumbo v7, "reboot_escrow_key_stored_timestamp"

    iget-object v8, v1, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v8, v7, v11, v10}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const-wide/16 v12, -0x1

    if-eqz v9, :cond_2

    move-wide v14, v12

    goto :goto_1

    :cond_2
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    cmp-long v7, v14, v12

    if-eqz v7, :cond_3

    cmp-long v7, v16, v14

    if-lez v7, :cond_3

    sub-long v12, v16, v14

    long-to-int v2, v12

    div-int/lit16 v2, v2, 0x3e8

    :cond_3
    move v7, v2

    const-string/jumbo v2, "ro.boot.vbmeta.digest"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v9, "reboot_escrow_key_vbmeta_digest"

    const-string v12, ""

    invoke-virtual {v8, v9, v12, v10}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v13, "reboot_escrow_key_other_vbmeta_digest"

    invoke-virtual {v8, v13, v12, v10}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_2
    move v8, v10

    goto :goto_3

    :cond_4
    move v8, v4

    goto :goto_3

    :cond_5
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v8, v6

    :goto_3
    if-nez v3, :cond_7

    invoke-virtual {v1, v0, v10, v6}, Lcom/android/server/locksettings/RebootEscrowManager;->compareAndSetLoadEscrowDataErrorCode(Landroid/os/Handler;II)V

    :cond_7
    const-string/jumbo v2, "Reporting RoR recovery metrics, success: "

    const-string v4, ", service type: "

    const-string v6, ", error code: "

    invoke-static {v5, v2, v4, v6, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    const-string/jumbo v6, "RebootEscrowManager"

    invoke-static {v2, v4, v6}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v4, v1, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    const/16 v2, 0xee

    const/4 v9, -0x1

    move/from16 v6, p2

    invoke-static/range {v2 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZIIIIII)V

    invoke-virtual {v1, v10, v0}, Lcom/android/server/locksettings/RebootEscrowManager;->setLoadEscrowDataErrorCode(ILandroid/os/Handler;)V

    :cond_8
    iget-object v0, v1, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    iget-object v2, v0, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v0, "AndroidKeystore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    new-instance v3, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;

    const/16 v4, 0x78

    invoke-direct {v3, v4}, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string/jumbo v3, "reboot_escrow_key_store_encryption_key"

    invoke-virtual {v0, v3}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v3, "RebootEscrowKeyStoreManager"

    const-string/jumbo v4, "Unable to delete encryption key in keystore."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v1, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    iput-object v11, v0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mRebootEscrowProvider:Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    invoke-virtual {v1}, Lcom/android/server/locksettings/RebootEscrowManager;->clearMetricsStorage()V

    iget-object v0, v1, Lcom/android/server/locksettings/RebootEscrowManager;->mNetworkCallback:Lcom/android/server/locksettings/RebootEscrowManager$1;

    if-eqz v0, :cond_a

    iget-object v2, v1, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    iget-object v2, v2, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    const-class v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_a
    :goto_5
    iget-object v0, v1, Lcom/android/server/locksettings/RebootEscrowManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_b
    return-void

    :goto_6
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final onGetRebootEscrowKeyFailed(Ljava/util/List;ILandroid/os/Handler;)V
    .locals 2

    const-string/jumbo v0, "RebootEscrowManager"

    const-string v1, "Had reboot escrow data for users, but no key; removing escrow storage."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowFile(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/RebootEscrowManager;->onEscrowRestoreComplete(ZILandroid/os/Handler;)V

    return-void
.end method

.method public final setLoadEscrowDataErrorCode(ILandroid/os/Handler;)V
    .locals 1

    new-instance v0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/locksettings/RebootEscrowManager;I)V

    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setRebootEscrowReady(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowReady:Z

    if-eq v0, p1, :cond_0

    new-instance v0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/locksettings/RebootEscrowManager;Z)V

    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowReady:Z

    return-void
.end method
