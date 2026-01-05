.class public final Lcom/android/server/broadcastradio/aidl/TunerSession;
.super Landroid/hardware/radio/ITuner$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCallback:Landroid/hardware/radio/ITunerCallback;

.field public mIsClosed:Z

.field public mIsMuted:Z

.field public final mLock:Ljava/lang/Object;

.field public final mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

.field public final mModule:Lcom/android/server/broadcastradio/aidl/RadioModule;

.field public mPlaceHolderConfig:Landroid/hardware/radio/RadioManager$BandConfig;

.field public mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

.field public final mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

.field public final mUid:I

.field public final mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/aidl/RadioModule;Landroid/hardware/broadcastradio/IBroadcastRadio;Landroid/hardware/radio/ITunerCallback;Lcom/android/server/broadcastradio/RadioServiceUserController;)V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/radio/ITuner$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mModule:Lcom/android/server/broadcastradio/aidl/RadioModule;

    const-string/jumbo p1, "service cannot be null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    iput-object p3, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    const-string/jumbo p1, "User controller can not be null"

    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    iput p1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUserId:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iput p1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUid:I

    new-instance p1, Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string p2, "BcRadioAidlSrv.session"

    invoke-direct {p1, p2}, Lcom/android/server/broadcastradio/RadioEventLogger;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    const-string v0, "BcRadioAidlSrv.session"

    const-string v1, "Cancel"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    check-cast v0, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "BcRadioAidlSrv.session"

    const-string v0, "Cannot cancel on AIDL HAL client from non-current user"

    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    check-cast p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->cancel()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "BcRadioAidlSrv.session"

    const-string v2, "Failed to cancel tuner session"

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final cancelAnnouncement()V
    .locals 1

    const-string p0, "BcRadioAidlSrv.session"

    const-string v0, "Announcements control doesn\'t involve cancelling at the HAL level in AIDL"

    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final checkNotClosedLocked()V
    .locals 1

    iget-boolean p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mIsClosed:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "Tuner is closed, no further operations are allowed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Close tuner"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->close(Ljava/lang/Integer;)V

    return-void
.end method

.method public final close(Ljava/lang/Integer;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string v1, "Close tuner session on error null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string v1, "Close tuner session on error %d"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mIsClosed:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mIsClosed:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/hardware/radio/ITunerCallback;->onError(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "BcRadioAidlSrv.session"

    const-string/jumbo v2, "mCallback.onError(%s) failed"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v0, v2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mModule:Lcom/android/server/broadcastradio/aidl/RadioModule;

    iget-object v1, p1, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    filled-new-array {p0}, [Lcom/android/server/broadcastradio/aidl/TunerSession;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/broadcastradio/aidl/RadioModule;->onTunerSessionsClosedLocked([Lcom/android/server/broadcastradio/aidl/TunerSession;)V

    monitor-exit v1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final dispatchClientUpdateChunks(Ljava/util/List;)V
    .locals 6

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    :try_start_0
    iget v2, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUid:I

    const-wide/32 v3, 0xf9a4b7c

    invoke-static {v3, v4, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/ProgramList$Chunk;

    iget v3, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUid:I

    invoke-static {v2, v3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->convertChunkToTargetSdkVersion(Landroid/hardware/radio/ProgramList$Chunk;I)Landroid/hardware/radio/ProgramList$Chunk;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v3, v2}, Landroid/hardware/radio/ITunerCallback;->onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/ProgramList$Chunk;

    invoke-interface {v2, v3}, Landroid/hardware/radio/ITunerCallback;->onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "BcRadioAidlSrv.session"

    const-string/jumbo v5, "mCallback.onProgramListUpdated() failed"

    invoke-static {v4, v2, v5, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_3
    return-void
.end method

.method public final dumpInfo(Landroid/util/IndentingPrintWriter;)V
    .locals 4

    const-string/jumbo v0, "TunerSession\n"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v2, "Is session closed? %s\n"

    iget-boolean v3, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mIsClosed:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "Yes"

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo v3, "No"

    :goto_0
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v2, "Is muted? %s\n"

    iget-boolean v3, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mIsMuted:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "Yes"

    goto :goto_1

    :cond_1
    const-string/jumbo v3, "No"

    :goto_1
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v2, "ProgramInfoCache: %s\n"

    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v2, "Config: %s\n"

    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mPlaceHolderConfig:Landroid/hardware/radio/RadioManager$BandConfig;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "Tuner session events:\n"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    iget-object p0, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mEventLogger:Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getConfiguration()Landroid/hardware/radio/RadioManager$BandConfig;
    .locals 1

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V

    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mPlaceHolderConfig:Landroid/hardware/radio/RadioManager$BandConfig;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getImage(I)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Get image for %d"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mModule:Lcom/android/server/broadcastradio/aidl/RadioModule;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string v2, "Get image for id = %d"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    check-cast p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->getImage(I)[B

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    array-length p1, p0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    array-length v0, p0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Image ID is missing"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getParameters(Ljava/util/List;)Ljava/util/Map;
    .locals 4

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string v1, "Get parameters "

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    check-cast p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->getParameters([Ljava/lang/String;)[Landroid/hardware/broadcastradio/VendorKeyValue;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->vendorInfoFromHalVendorKeyValues([Landroid/hardware/broadcastradio/VendorKeyValue;)Ljava/util/Map;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final isClosed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mIsClosed:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isConfigFlagSet(I)Z
    .locals 4

    const-string v0, "Failed to check flag "

    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string/jumbo v2, "is ConfigFlag %s set? "

    invoke-static {p1}, Landroid/hardware/broadcastradio/ConfigFlag$$;->toString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    check-cast p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->isConfigFlagSet(I)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/hardware/broadcastradio/ConfigFlag$$;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception p0

    const-string/jumbo p1, "isConfigFlagSet"

    invoke-static {p0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->throwOnError(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final isConfigFlagSupported(I)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/aidl/TunerSession;->isConfigFlagSet(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isMuted()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V

    iget-boolean p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mIsMuted:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final seek(ZZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string/jumbo v1, "Seek with direction %s, skipSubChannel? %s"

    if-eqz p1, :cond_0

    const-string/jumbo v2, "down"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "up"

    :goto_0
    if-eqz p2, :cond_1

    const-string/jumbo v3, "yes"

    goto :goto_1

    :cond_1
    const-string/jumbo v3, "no"

    :goto_1
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    check-cast v0, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "BcRadioAidlSrv.session"

    const-string p1, "Cannot scan on AIDL HAL client from non-current user"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    xor-int/lit8 p1, p1, 0x1

    check-cast p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->seek(ZZ)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string/jumbo p1, "seek"

    invoke-static {p0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->throwOnError(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final setConfigFlag(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string/jumbo v1, "set ConfigFlag %s to %b "

    invoke-static {p1}, Landroid/hardware/broadcastradio/ConfigFlag$$;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    check-cast v0, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "BcRadioAidlSrv.session"

    const-string p1, "Cannot set config flag for AIDL HAL client from non-current user"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    check-cast p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->setConfigFlag(IZ)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "setConfigFlag"

    invoke-static {p0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->throwOnError(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    check-cast v0, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "BcRadioAidlSrv.session"

    const-string p1, "Cannot set configuration for AIDL HAL client from non-current user"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V

    const-string/jumbo v1, "config cannot be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mPlaceHolderConfig:Landroid/hardware/radio/RadioManager$BandConfig;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "BcRadioAidlSrv.session"

    const-string v1, "Ignoring setConfiguration - not applicable for broadcastradio HAL AIDL"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mModule:Lcom/android/server/broadcastradio/aidl/RadioModule;

    new-instance v0, Lcom/android/server/broadcastradio/aidl/TunerSession$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/broadcastradio/aidl/TunerSession$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/radio/RadioManager$BandConfig;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {p1, v1, p0, v0}, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->fireLater(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setMuted(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V

    iget-boolean v1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mIsMuted:Z

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mIsMuted:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "BcRadioAidlSrv.session"

    const-string/jumbo v0, "Mute %b via RadioService is not implemented - please handle it via app"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setParameters(Ljava/util/Map;)Ljava/util/Map;
    .locals 3

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string/jumbo v1, "Set parameters "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    check-cast v0, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "BcRadioAidlSrv.session"

    const-string p1, "Cannot set parameters for AIDL HAL client from non-current user"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    invoke-static {p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->vendorInfoToHalVendorKeyValues(Ljava/util/Map;)[Landroid/hardware/broadcastradio/VendorKeyValue;

    move-result-object p1

    check-cast p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->setParameters([Landroid/hardware/broadcastradio/VendorKeyValue;)[Landroid/hardware/broadcastradio/VendorKeyValue;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->vendorInfoFromHalVendorKeyValues([Landroid/hardware/broadcastradio/VendorKeyValue;)Ljava/util/Map;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final startBackgroundScan()Z
    .locals 3

    const-string v0, "BcRadioAidlSrv.session"

    const-string v1, "Explicit background scan trigger is not supported with HAL AIDL"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    check-cast v1, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;

    invoke-virtual {v1}, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;->isCurrentOrSystemUser()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "Cannot start background scan on AIDL HAL client from non-current user"

    invoke-static {v0, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mModule:Lcom/android/server/broadcastradio/aidl/RadioModule;

    new-instance v0, Lcom/android/server/broadcastradio/aidl/TunerSession$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, v0}, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->fireLater(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string/jumbo v1, "Start programList updates %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    check-cast v0, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "BcRadioAidlSrv.session"

    const-string p1, "Cannot start program list updates on AIDL HAL client from non-current user"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Landroid/hardware/radio/ProgramList$Filter;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/hardware/radio/ProgramList$Filter;-><init>(Ljava/util/Set;Ljava/util/Set;ZZ)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V

    new-instance v1, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    invoke-direct {v1, p1}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;-><init>(Landroid/hardware/radio/ProgramList$Filter;)V

    iput-object v1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mModule:Lcom/android/server/broadcastradio/aidl/RadioModule;

    iget-object v1, p1, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-virtual {p1, p0}, Lcom/android/server/broadcastradio/aidl/RadioModule;->onTunerSessionProgramListFilterChangedLocked(Lcom/android/server/broadcastradio/aidl/TunerSession;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final step(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string/jumbo v1, "Step with direction %s, skipSubChannel?  %s"

    if-eqz p1, :cond_0

    const-string/jumbo v2, "down"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "up"

    :goto_0
    if-eqz p2, :cond_1

    const-string/jumbo p2, "yes"

    goto :goto_1

    :cond_1
    const-string/jumbo p2, "no"

    :goto_1
    filled-new-array {v2, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    check-cast p2, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;

    invoke-virtual {p2}, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;->isCurrentOrSystemUser()Z

    move-result p2

    if-nez p2, :cond_2

    const-string p0, "BcRadioAidlSrv.session"

    const-string p1, "Cannot step on AIDL HAL client from non-current user"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object p2, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    xor-int/lit8 p1, p1, 0x1

    check-cast p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->step(Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string/jumbo p1, "step"

    invoke-static {p0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->throwOnError(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :goto_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final stopProgramListUpdates()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string/jumbo v1, "Stop programList updates"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    check-cast v0, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "BcRadioAidlSrv.session"

    const-string v0, "Cannot stop program list updates on AIDL HAL client from non-current user"

    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mModule:Lcom/android/server/broadcastradio/aidl/RadioModule;

    iget-object v1, v0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-virtual {v0, p0}, Lcom/android/server/broadcastradio/aidl/RadioModule;->onTunerSessionProgramListFilterChangedLocked(Lcom/android/server/broadcastradio/aidl/TunerSession;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final tune(Landroid/hardware/radio/ProgramSelector;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string/jumbo v1, "Tune with selector %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    check-cast v0, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "BcRadioAidlSrv.session"

    const-string p1, "Cannot tune on AIDL HAL client from non-current user"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/hardware/broadcastradio/ProgramSelector;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierToHalProgramIdentifier(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/broadcastradio/ProgramIdentifier;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector;->getSecondaryIds()[Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v3, p1, v2

    invoke-static {v3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierToHalProgramIdentifier(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/broadcastradio/ProgramIdentifier;

    move-result-object v3

    iget v4, v3, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    aget-object v3, p1, v2

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "BcRadioAidlSrv.convert"

    const-string v5, "Invalid secondary id: %s"

    invoke-static {v4, v5, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {p1, v2}, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/broadcastradio/ProgramIdentifier;

    iput-object p1, v0, Landroid/hardware/broadcastradio/ProgramSelector;->secondaryIds:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isValidHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 v0, 0x0

    :cond_3
    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    check-cast p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->tune(Landroid/hardware/broadcastradio/ProgramSelector;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string/jumbo v0, "tune"

    invoke-static {p0, v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->throwOnError(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "tune: INVALID_ARGUMENTS for program selector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
