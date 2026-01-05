.class public Lcom/android/server/ConsumerIrService;
.super Landroid/hardware/IConsumerIrService$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAidlService:Landroid/hardware/ir/IConsumerIr;

.field public final mHalLock:Ljava/lang/Object;

.field public final mHasNativeHal:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/android/server/utils/LazyJniRegistrar;->registerConsumerIrService()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Landroid/hardware/IConsumerIrService$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ConsumerIrService;->mAidlService:Landroid/hardware/ir/IConsumerIr;

    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "ConsumerIrService"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/hardware/ir/IConsumerIr;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/default"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v3, v0, Landroid/hardware/ir/IConsumerIr;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/hardware/ir/IConsumerIr;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/hardware/ir/IConsumerIr$Stub$Proxy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroid/hardware/ir/IConsumerIr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    :goto_0
    iput-object v0, p0, Lcom/android/server/ConsumerIrService;->mAidlService:Landroid/hardware/ir/IConsumerIr;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/server/ConsumerIrService;->getHidlHalService()Z

    move-result v2

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string/jumbo p1, "android.hardware.consumerir"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "FEATURE_CONSUMER_IR present, but no IR HAL loaded!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    if-nez v2, :cond_5

    :goto_2
    return-void

    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "IR HAL present, but FEATURE_CONSUMER_IR is not set!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native getHidlHalService()Z
.end method

.method private static native halGetCarrierFrequencies()[I
.end method

.method private static native halTransmit(I[I)I
.end method


# virtual methods
.method public final getCarrierFrequencies()[I
    .locals 6

    invoke-super {p0}, Landroid/hardware/IConsumerIrService$Stub;->getCarrierFrequencies_enforcePermission()V

    iget-boolean v0, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/ConsumerIrService;->mAidlService:Landroid/hardware/ir/IConsumerIr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    :try_start_1
    check-cast p0, Landroid/hardware/ir/IConsumerIr$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/ir/IConsumerIr$Stub$Proxy;->getCarrierFreqs()[Landroid/hardware/ir/ConsumerIrFreqRange;

    move-result-object p0

    array-length v1, p0

    if-gtz v1, :cond_0

    const-string v1, "ConsumerIrService"

    const-string v2, "Error getting carrier frequencies."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_1

    mul-int/lit8 v3, v2, 0x2

    aget-object v4, p0, v2

    iget v5, v4, Landroid/hardware/ir/ConsumerIrFreqRange;->minHz:I

    aput v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    iget v4, v4, Landroid/hardware/ir/ConsumerIrFreqRange;->maxHz:I

    aput v4, v1, v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :try_start_2
    monitor-exit v0

    return-object v1

    :catch_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {}, Lcom/android/server/ConsumerIrService;->halGetCarrierFrequencies()[I

    move-result-object p0

    monitor-exit v0

    return-object p0

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "IR emitter not available"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasIrEmitter()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    return p0
.end method

.method public final transmit(Ljava/lang/String;I[I)V
    .locals 5

    invoke-super {p0}, Landroid/hardware/IConsumerIrService$Stub;->transmit_enforcePermission()V

    array-length p1, p3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    aget v3, p3, v2

    if-lez v3, :cond_0

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Non-positive IR slice"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-wide/32 v2, 0x1e8480

    cmp-long p1, v0, v2

    if-gtz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/ConsumerIrService;->mAidlService:Landroid/hardware/ir/IConsumerIr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    :try_start_1
    check-cast p0, Landroid/hardware/ir/IConsumerIr$Stub$Proxy;

    invoke-virtual {p0, p2, p3}, Landroid/hardware/ir/IConsumerIr$Stub$Proxy;->transmit(I[I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string p0, "ConsumerIrService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error transmitting frequency: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    invoke-static {p2, p3}, Lcom/android/server/ConsumerIrService;->halTransmit(I[I)I

    move-result p0

    if-gez p0, :cond_3

    const-string p2, "ConsumerIrService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error transmitting: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "IR emitter not available"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "IR pattern too long"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
