.class Lcom/android/server/broadcastradio/hal1/TunerCallback;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/radio/ITunerCallback;


# static fields
.field public static final TAG:Ljava/lang/String; = "BcRadio1Srv.TunerCallback"


# instance fields
.field public final mClientCallback:Landroid/hardware/radio/ITunerCallback;

.field public mInitialConfigurationDone:Z

.field public final mNativeContext:J

.field public final mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/hardware/radio/ProgramList$Filter;",
            ">;"
        }
    .end annotation
.end field

.field public final mTuner:Lcom/android/server/broadcastradio/hal1/Tuner;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/hal1/Tuner;Landroid/hardware/radio/ITunerCallback;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mInitialConfigurationDone:Z

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mTuner:Lcom/android/server/broadcastradio/hal1/Tuner;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-direct {p0, p1, p3}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->nativeInit(Lcom/android/server/broadcastradio/hal1/Tuner;I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mNativeContext:J

    return-void
.end method

.method private native nativeDetach(J)V
.end method

.method private native nativeFinalize(J)V
.end method

.method private native nativeInit(Lcom/android/server/broadcastradio/hal1/Tuner;I)J
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "Not a binder"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final detach()V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->nativeDetach(J)V

    return-void
.end method

.method public final dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "BcRadio1Srv.TunerCallback"

    const-string/jumbo v0, "client died"

    invoke-static {p1, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->nativeFinalize(J)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final handleHwFailure()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->onError(I)V

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mTuner:Lcom/android/server/broadcastradio/hal1/Tuner;

    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->close()V

    return-void
.end method

.method public final isInitialConfigurationDone()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mInitialConfigurationDone:Z

    return p0
.end method

.method public final synthetic lambda$onAntennaState$5(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onAntennaState(Z)V

    return-void
.end method

.method public final synthetic lambda$onBackgroundScanAvailabilityChange$6(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onBackgroundScanAvailabilityChange(Z)V

    return-void
.end method

.method public final synthetic lambda$onBackgroundScanComplete$7()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0}, Landroid/hardware/radio/ITunerCallback;->onBackgroundScanComplete()V

    return-void
.end method

.method public final synthetic lambda$onConfigurationChanged$1(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V

    return-void
.end method

.method public final synthetic lambda$onCurrentProgramInfoChanged$2(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    return-void
.end method

.method public final synthetic lambda$onEmergencyAnnouncement$4(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onEmergencyAnnouncement(Z)V

    return-void
.end method

.method public final synthetic lambda$onError$0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onError(I)V

    return-void
.end method

.method public final synthetic lambda$onProgramListChanged$8()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0}, Landroid/hardware/radio/ITunerCallback;->onProgramListChanged()V

    return-void
.end method

.method public final synthetic lambda$onProgramListUpdated$10(Landroid/hardware/radio/ProgramList$Chunk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V

    return-void
.end method

.method public final synthetic lambda$onTrafficAnnouncement$3(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onTrafficAnnouncement(Z)V

    return-void
.end method

.method public final synthetic lambda$sendProgramListUpdate$9(Landroid/hardware/radio/ProgramList$Chunk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V

    return-void
.end method

.method public final onAntennaState(Z)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onAntennaState$5(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "BcRadio1Srv.TunerCallback"

    const-string/jumbo v0, "client died"

    invoke-static {p1, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final onBackgroundScanAvailabilityChange(Z)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onBackgroundScanAvailabilityChange$6(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "BcRadio1Srv.TunerCallback"

    const-string/jumbo v0, "client died"

    invoke-static {p1, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final onBackgroundScanComplete()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onBackgroundScanComplete$7()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "BcRadio1Srv.TunerCallback"

    const-string/jumbo v1, "client died"

    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final onConfigFlagUpdated(IZ)V
    .locals 0

    const-string p0, "BcRadio1Srv.TunerCallback"

    const-string/jumbo p1, "Not applicable for HAL 1.x"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mInitialConfigurationDone:Z

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onConfigurationChanged$1(Landroid/hardware/radio/RadioManager$BandConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "BcRadio1Srv.TunerCallback"

    const-string/jumbo v0, "client died"

    invoke-static {p1, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onCurrentProgramInfoChanged$2(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "BcRadio1Srv.TunerCallback"

    const-string/jumbo v0, "client died"

    invoke-static {p1, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final onEmergencyAnnouncement(Z)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onEmergencyAnnouncement$4(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "BcRadio1Srv.TunerCallback"

    const-string/jumbo v0, "client died"

    invoke-static {p1, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final onError(I)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onError$0(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "BcRadio1Srv.TunerCallback"

    const-string/jumbo v0, "client died"

    invoke-static {p1, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final onParametersUpdated(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "BcRadio1Srv.TunerCallback"

    const-string/jumbo p1, "Not applicable for HAL 1.x"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onProgramListChanged()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onProgramListChanged$8()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BcRadio1Srv.TunerCallback"

    const-string/jumbo v2, "client died"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->sendProgramListUpdate()V

    return-void
.end method

.method public final onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onProgramListUpdated$10(Landroid/hardware/radio/ProgramList$Chunk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "BcRadio1Srv.TunerCallback"

    const-string/jumbo v0, "client died"

    invoke-static {p1, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final onTrafficAnnouncement(Z)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onTrafficAnnouncement$3(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "BcRadio1Srv.TunerCallback"

    const-string/jumbo v0, "client died"

    invoke-static {p1, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V
    .locals 0

    const-string p0, "BcRadio1Srv.TunerCallback"

    const-string/jumbo p1, "Not applicable for HAL 1.x"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final sendProgramListUpdate()V
    .locals 5

    const-string v0, "BcRadio1Srv.TunerCallback"

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/ProgramList$Filter;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mTuner:Lcom/android/server/broadcastradio/hal1/Tuner;

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramList$Filter;->getVendorFilter()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/broadcastradio/hal1/Tuner;->getProgramList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    new-instance v2, Landroid/hardware/radio/ProgramList$Chunk;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v4, v4, v1, v3}, Landroid/hardware/radio/ProgramList$Chunk;-><init>(ZZLjava/util/Set;Ljava/util/Set;)V

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$sendProgramListUpdate$9(Landroid/hardware/radio/ProgramList$Chunk;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo v1, "client died"

    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :catch_1
    const-string/jumbo p0, "Program list not ready yet"

    invoke-static {v0, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Landroid/hardware/radio/ProgramList$Filter;

    invoke-direct {p1}, Landroid/hardware/radio/ProgramList$Filter;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->sendProgramListUpdate()V

    return-void
.end method

.method public final stopProgramListUpdates()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
