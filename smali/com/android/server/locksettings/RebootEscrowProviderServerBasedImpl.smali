.class public Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/locksettings/RebootEscrowProviderInterface;


# instance fields
.field public final mInjector:Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

.field public mServerBlob:[B

.field public final mStorage:Lcom/android/server/locksettings/LockSettingsStorage;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsStorage;Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

    return-void
.end method


# virtual methods
.method public final clearRebootEscrowKey()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowServerBlobFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    return-void
.end method

.method public final getAndClearRebootEscrowKey(Ljavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowKey;
    .locals 4

    const-string v0, "Decrypted reboot escrow key has incorrect size "

    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mServerBlob:[B

    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    if-nez v1, :cond_0

    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowServerBlobFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mServerBlob:[B

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowServerBlobFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mServerBlob:[B

    const/4 v2, 0x0

    const-string/jumbo v3, "RebootEscrowProviderServerBased"

    if-nez v1, :cond_1

    const-string p0, "Failed to read reboot escrow server blob from storage"

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    if-nez p1, :cond_2

    const-string p0, "Failed to decrypt the escrow key; decryption key from keystore is null."

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    const-string/jumbo v1, "Loaded reboot escrow server blob from storage"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mServerBlob:[B

    invoke-virtual {p0, v1, p1}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->unwrapServerBlob([BLjavax/crypto/SecretKey;)[B

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, "Decrypted reboot escrow key bytes should not be null"

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_3
    array-length p1, p0

    const/16 v1, 0x20

    if-eq p1, v1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_4
    new-instance p1, Lcom/android/server/locksettings/RebootEscrowKey;

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/android/server/locksettings/RebootEscrowKey;-><init>(Ljavax/crypto/SecretKey;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_0
    const-string p1, "Failed to decrypt the server blob "

    invoke-static {v3, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public final getType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final hasRebootEscrowSupport()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;->mServiceConnection:Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final storeRebootEscrowKey(Lcom/android/server/locksettings/RebootEscrowKey;Ljavax/crypto/SecretKey;)Z
    .locals 3

    const-string/jumbo v0, "RebootEscrowProviderServerBased"

    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowServerBlobFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    const/4 v2, 0x0

    :try_start_0
    iget-object p1, p1, Lcom/android/server/locksettings/RebootEscrowKey;->mKey:Ljavax/crypto/SecretKey;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->wrapEscrowKey([BLjavax/crypto/SecretKey;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Failed to encrypt the reboot escrow key"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowServerBlobFile()Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v1, p1, p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    const-string/jumbo p0, "Reboot escrow key encrypted and stored."

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :goto_0
    const-string p1, "Failed to encrypt the reboot escrow key "

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public final unwrapServerBlob([BLjavax/crypto/SecretKey;)[B
    .locals 7

    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;->mServiceConnection:Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;

    const/4 v0, 0x0

    const-string/jumbo v1, "RebootEscrowProviderServerBased"

    if-nez p0, :cond_0

    const-string p0, "Had reboot escrow data for users, but resume on reboot server service is unavailable"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p2, v2}, Lcom/android/server/locksettings/AesEncryptionUtil;->decrypt(Ljavax/crypto/SecretKey;Ljava/io/DataInputStream;)[B

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "Decrypted server blob should not be null"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const-string/jumbo p2, "ota"

    const-string/jumbo v1, "server_based_service_timeout_in_seconds"

    const-wide/16 v2, 0xa

    invoke-static {p2, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->bindToService(J)V

    invoke-static {p2, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    iget-object p2, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mBinder:Landroid/service/resumeonreboot/IResumeOnRebootService;

    if-eqz p2, :cond_5

    invoke-interface {p2}, Landroid/service/resumeonreboot/IResumeOnRebootService;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {p2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v4, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;

    invoke-direct {v4, p2}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    iget-object v5, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mBinder:Landroid/service/resumeonreboot/IResumeOnRebootService;

    new-instance v6, Landroid/os/RemoteCallback;

    invoke-direct {v6, v4}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v5, p1, v6}, Landroid/service/resumeonreboot/IResumeOnRebootService;->unwrap([BLandroid/os/RemoteCallback;)V

    const-string/jumbo p1, "unWrapSecret"

    invoke-static {p2, v1, v2, p1}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->waitForLatch(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V

    iget-object p1, v4, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->mResult:Landroid/os/Bundle;

    const-string/jumbo p2, "exception_key"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, v4, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->mResult:Landroid/os/Bundle;

    const-class v1, Landroid/os/ParcelableException;

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelableException;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/ParcelableException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_2

    const-class p2, Ljava/io/IOException;

    invoke-virtual {p1, p2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p2, "ResumeOnRebootServiceConnection wrap/unwrap failed"

    invoke-direct {p0, p2, p1, v3, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    throw p0

    :cond_3
    :goto_0
    iget-object p1, v4, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->mResult:Landroid/os/Bundle;

    const-string/jumbo p2, "unrwapped_blob_key"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mServiceConnection:Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection$1;

    if-eqz p2, :cond_4

    iget-object v1, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_4
    iput-object v0, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mBinder:Landroid/service/resumeonreboot/IResumeOnRebootService;

    return-object p1

    :cond_5
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "Service not bound"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final wrapEscrowKey([BLjavax/crypto/SecretKey;)[B
    .locals 11

    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;->mServiceConnection:Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;

    const/4 v0, 0x0

    const-string/jumbo v1, "RebootEscrowProviderServerBased"

    if-nez p0, :cond_0

    const-string p0, "Failed to encrypt the reboot escrow key: resume on reboot server service is unavailable"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-string/jumbo v2, "ota"

    const-string/jumbo v3, "server_based_service_timeout_in_seconds"

    const-wide/16 v4, 0xa

    invoke-static {v2, v3, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->bindToService(J)V

    const-wide/32 v6, 0x927c0

    const-string/jumbo v8, "server_based_server_blob_lifetime_in_millis"

    invoke-static {v2, v8, v6, v7}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v2, v3, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mBinder:Landroid/service/resumeonreboot/IResumeOnRebootService;

    if-eqz v4, :cond_5

    invoke-interface {v4}, Landroid/service/resumeonreboot/IResumeOnRebootService;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v8, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;

    invoke-direct {v8, v4}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    iget-object v9, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mBinder:Landroid/service/resumeonreboot/IResumeOnRebootService;

    new-instance v10, Landroid/os/RemoteCallback;

    invoke-direct {v10, v8}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v9, p1, v6, v7, v10}, Landroid/service/resumeonreboot/IResumeOnRebootService;->wrapSecret([BJLandroid/os/RemoteCallback;)V

    const-string/jumbo p1, "wrapSecret"

    invoke-static {v4, v2, v3, p1}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->waitForLatch(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V

    iget-object p1, v8, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->mResult:Landroid/os/Bundle;

    const-string/jumbo v2, "exception_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v8, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->mResult:Landroid/os/Bundle;

    const-class v3, Landroid/os/ParcelableException;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelableException;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/ParcelableException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/IOException;

    if-eqz v2, :cond_1

    const-class v2, Ljava/io/IOException;

    invoke-virtual {p1, v2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p2, "ResumeOnRebootServiceConnection wrap/unwrap failed"

    invoke-direct {p0, p2, p1, v5, v5}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    throw p0

    :cond_2
    :goto_0
    iget-object p1, v8, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->mResult:Landroid/os/Bundle;

    const-string/jumbo v2, "wrapped_blob_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mServiceConnection:Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection$1;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_3
    iput-object v0, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mBinder:Landroid/service/resumeonreboot/IResumeOnRebootService;

    if-nez p1, :cond_4

    const-string/jumbo p0, "Server encrypted reboot escrow key cannot be null"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_4
    invoke-static {p1, p2}, Lcom/android/server/locksettings/AesEncryptionUtil;->encrypt([BLjavax/crypto/SecretKey;)[B

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "Service not bound"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
