.class public Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/locksettings/RebootEscrowProviderInterface;


# instance fields
.field public final mInjector:Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;

    return-void
.end method


# virtual methods
.method public final clearRebootEscrowKey()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;->getRebootEscrow()Landroid/hardware/rebootescrow/IRebootEscrow;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    :try_start_0
    new-array v0, v0, [B

    check-cast p0, Landroid/hardware/rebootescrow/IRebootEscrow$Stub$Proxy;

    invoke-virtual {p0, v0}, Landroid/hardware/rebootescrow/IRebootEscrow$Stub$Proxy;->storeKey([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "RebootEscrowProviderHal"

    const-string v0, "Could not call RebootEscrow HAL to shred key"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final getAndClearRebootEscrowKey(Ljavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowKey;
    .locals 6

    const-string p1, "IRebootEscrow returned key of incorrect size "

    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;->getRebootEscrow()Landroid/hardware/rebootescrow/IRebootEscrow;

    move-result-object p0

    const/4 v0, 0x0

    const-string/jumbo v1, "RebootEscrowProviderHal"

    if-nez p0, :cond_0

    const-string p0, "Had reboot escrow data for users, but RebootEscrow HAL is unavailable"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    check-cast p0, Landroid/hardware/rebootescrow/IRebootEscrow$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/rebootescrow/IRebootEscrow$Stub$Proxy;->retrieveKey()[B

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "Had reboot escrow data for users, but could not retrieve key"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    array-length v3, v2

    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, v2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    const/4 p1, 0x0

    move v3, p1

    :goto_0
    array-length v5, v2

    if-ge p1, v5, :cond_3

    aget-byte v5, v2, p1

    or-int/2addr v3, v5

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    const-string p0, "IRebootEscrow returned an all-zeroes key"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_4
    new-array p1, v4, [B

    invoke-virtual {p0, p1}, Landroid/hardware/rebootescrow/IRebootEscrow$Stub$Proxy;->storeKey([B)V

    new-instance p0, Lcom/android/server/locksettings/RebootEscrowKey;

    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {p1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/RebootEscrowKey;-><init>(Ljavax/crypto/SecretKey;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Got service-specific exception: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {p1, p0, v1}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-object v0

    :catch_1
    const-string p0, "Could not retrieve escrow data"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final getType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final hasRebootEscrowSupport()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;->getRebootEscrow()Landroid/hardware/rebootescrow/IRebootEscrow;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final storeRebootEscrowKey(Lcom/android/server/locksettings/RebootEscrowKey;Ljavax/crypto/SecretKey;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;->getRebootEscrow()Landroid/hardware/rebootescrow/IRebootEscrow;

    move-result-object p0

    const/4 p2, 0x0

    const-string/jumbo v0, "RebootEscrowProviderHal"

    if-nez p0, :cond_0

    const-string p0, "Escrow marked as ready, but RebootEscrow HAL is unavailable"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_0
    :try_start_0
    iget-object p1, p1, Lcom/android/server/locksettings/RebootEscrowKey;->mKey:Ljavax/crypto/SecretKey;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    check-cast p0, Landroid/hardware/rebootescrow/IRebootEscrow$Stub$Proxy;

    invoke-virtual {p0, p1}, Landroid/hardware/rebootescrow/IRebootEscrow$Stub$Proxy;->storeKey([B)V

    const-string/jumbo p0, "Reboot escrow key stored with RebootEscrow HAL"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Failed escrow secret to RebootEscrow HAL"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p2
.end method
