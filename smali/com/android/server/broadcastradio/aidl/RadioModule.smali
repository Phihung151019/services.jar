.class public final Lcom/android/server/broadcastradio/aidl/RadioModule;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAidlTunerSessions:Landroid/util/ArraySet;

.field public mAntennaConnected:Ljava/lang/Boolean;

.field public mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

.field public final mHalTunerCallback:Lcom/android/server/broadcastradio/aidl/RadioModule$1;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

.field public final mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

.field public final mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

.field public final mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

.field public mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

.field public final mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;


# direct methods
.method public constructor <init>(Landroid/hardware/broadcastradio/IBroadcastRadio;Landroid/hardware/radio/RadioManager$ModuleProperties;Lcom/android/server/broadcastradio/RadioServiceUserController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;-><init>(Landroid/hardware/radio/ProgramList$Filter;)V

    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;

    invoke-direct {v0, p0}, Lcom/android/server/broadcastradio/aidl/RadioModule$1;-><init>(Lcom/android/server/broadcastradio/aidl/RadioModule;)V

    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mHalTunerCallback:Lcom/android/server/broadcastradio/aidl/RadioModule$1;

    const-string/jumbo v0, "properties cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

    const-string/jumbo p2, "service cannot be null"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mHandler:Landroid/os/Handler;

    const-string/jumbo p1, "User controller can not be null"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    new-instance p1, Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string p2, "BcRadioAidlSrv.module"

    invoke-direct {p1, p2}, Lcom/android/server/broadcastradio/RadioEventLogger;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    return-void
.end method

.method public static tryLoadingModule(ILjava/lang/String;Landroid/os/IBinder;Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;)Lcom/android/server/broadcastradio/aidl/RadioModule;
    .locals 5

    const-string v0, "BcRadioAidlSrv.module"

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "Try loading module for module id = %d, module name = %s"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v2, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub;->$r8$clinit:I

    if-nez p2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/hardware/broadcastradio/IBroadcastRadio;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Landroid/hardware/broadcastradio/IBroadcastRadio;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/hardware/broadcastradio/IBroadcastRadio;

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p2, v2, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    :goto_0
    if-nez v2, :cond_2

    const-string/jumbo p0, "Module %s is null"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p0, p2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_2
    :try_start_1
    move-object p2, v2

    check-cast p2, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    invoke-virtual {p2}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->getAmFmRegionConfig()Landroid/hardware/broadcastradio/AmFmRegionConfig;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_1
    :try_start_2
    const-string/jumbo p2, "Module %s does not has AMFM config"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, p2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-object p2, v1

    :goto_1
    :try_start_3
    move-object v3, v2

    check-cast v3, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    invoke-virtual {v3}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->getDabRegionConfig()[Landroid/hardware/broadcastradio/DabTableEntry;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_2
    :try_start_4
    const-string/jumbo v3, "Module %s does not has DAB config"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v1

    :goto_2
    move-object v4, v2

    check-cast v4, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    invoke-virtual {v4}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->getProperties()Landroid/hardware/broadcastradio/Properties;

    move-result-object v4

    invoke-static {p0, p1, v4, p2, v3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->propertiesFromHalProperties(ILjava/lang/String;Landroid/hardware/broadcastradio/Properties;Landroid/hardware/broadcastradio/AmFmRegionConfig;[Landroid/hardware/broadcastradio/DabTableEntry;)Landroid/hardware/radio/RadioManager$ModuleProperties;

    move-result-object p0

    new-instance p2, Lcom/android/server/broadcastradio/aidl/RadioModule;

    invoke-direct {p2, v2, p0, p3}, Lcom/android/server/broadcastradio/aidl/RadioModule;-><init>(Landroid/hardware/broadcastradio/IBroadcastRadio;Landroid/hardware/radio/RadioManager$ModuleProperties;Lcom/android/server/broadcastradio/RadioServiceUserController;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p2

    :goto_3
    const-string p2, "Failed to load module %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p2, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public final addAnnouncementListener(Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;[I)Lcom/android/server/broadcastradio/aidl/RadioModule$3;
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string v3, "Add AnnouncementListener"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    array-length v1, p2

    new-array v2, v1, [B

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, p2, v3

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    new-array p2, p2, [Landroid/hardware/broadcastradio/ICloseHandle;

    const/4 v1, 0x0

    aput-object v1, p2, v0

    new-instance v1, Lcom/android/server/broadcastradio/aidl/RadioModule$2;

    invoke-direct {v1, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule$2;-><init>(Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    check-cast p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    invoke-virtual {p0, v1, v2}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->registerAnnouncementListener(Lcom/android/server/broadcastradio/aidl/RadioModule$2;[B)Landroid/hardware/broadcastradio/ICloseHandle;

    move-result-object p0

    aput-object p0, p2, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p0, Lcom/android/server/broadcastradio/aidl/RadioModule$3;

    invoke-direct {p0, p2}, Lcom/android/server/broadcastradio/aidl/RadioModule$3;-><init>([Landroid/hardware/broadcastradio/ICloseHandle;)V

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "AnnouncementListener"

    invoke-static {p0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->throwOnError(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final closeSessions()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string v1, "Close TunerSessions %d"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v4, v1, [Lcom/android/server/broadcastradio/aidl/TunerSession;

    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    invoke-virtual {p0, v4}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object p0, v4, v2

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/android/server/broadcastradio/aidl/TunerSession;->close(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v5, "BcRadioAidlSrv.module"

    const-string v6, "Failed to close TunerSession %s: %s"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v5, v6, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final dumpInfo(Landroid/util/IndentingPrintWriter;)V
    .locals 4

    const-string/jumbo v0, "RadioModule\n"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v2, "BroadcastRadioServiceImpl: %s\n"

    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v2, "Properties: %s\n"

    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v2, "Antenna state: "

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAntennaConnected:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    const-string/jumbo v2, "undetermined\n"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    const-string v3, "%s\n"

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "connected"

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "not connected"

    :goto_0
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_1
    const-string/jumbo v2, "current ProgramInfo: %s\n"

    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v2, "ProgramInfoCache: %s\n"

    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v2, "Union of AIDL ProgramFilters: %s\n"

    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v2, "AIDL TunerSessions [%d]:\n"

    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v2, v1

    :goto_2
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/broadcastradio/aidl/TunerSession;

    invoke-virtual {v3, p1}, Lcom/android/server/broadcastradio/aidl/TunerSession;->dumpInfo(Landroid/util/IndentingPrintWriter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "Radio module events:\n"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    iget-object p0, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mEventLogger:Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;)V
    .locals 8

    const-string v0, "BcRadioAidlSrv.module"

    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    check-cast v1, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;

    invoke-virtual {v1}, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/broadcastradio/aidl/TunerSession;

    iget v5, v5, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUserId:I

    if-eq v5, v1, :cond_0

    iget-object v5, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/broadcastradio/aidl/TunerSession;

    iget v5, v5, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUserId:I

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/broadcastradio/aidl/TunerSession;

    iget-object v5, v5, Lcom/android/server/broadcastradio/aidl/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    iget-object v6, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    invoke-virtual {v6, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/broadcastradio/aidl/TunerSession;

    iget v6, v6, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUid:I

    invoke-interface {p1, v5, v6}, Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;->run(Landroid/hardware/radio/ITunerCallback;I)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v6, "Failed to invoke ITunerCallback"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v0, v5, v6, v7}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    const-string/jumbo v5, "Removing dead TunerSession"

    invoke-static {v0, v5}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    iget-object v5, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/broadcastradio/aidl/TunerSession;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/android/server/broadcastradio/aidl/TunerSession;

    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/broadcastradio/aidl/TunerSession;

    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->onTunerSessionsClosedLocked([Lcom/android/server/broadcastradio/aidl/TunerSession;)V

    :cond_3
    return-void
.end method

.method public final fireLater(Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onTunerSessionProgramListFilterChangedLocked(Lcom/android/server/broadcastradio/aidl/TunerSession;)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v7, v0

    move-object v4, v1

    move-object v5, v4

    move v3, v2

    move v6, v3

    :goto_0
    iget-object v8, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v3, v8, :cond_7

    iget-object v8, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/broadcastradio/aidl/TunerSession;

    iget-object v9, v8, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v8, v8, Lcom/android/server/broadcastradio/aidl/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    if-nez v8, :cond_0

    move-object v8, v1

    goto :goto_1

    :cond_0
    iget-object v8, v8, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    :goto_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_1

    goto :goto_4

    :cond_1
    if-nez v4, :cond_2

    new-instance v4, Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    new-instance v5, Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8}, Landroid/hardware/radio/ProgramList$Filter;->areCategoriesIncluded()Z

    move-result v6

    invoke-virtual {v8}, Landroid/hardware/radio/ProgramList$Filter;->areModificationsExcluded()Z

    move-result v7

    goto :goto_4

    :cond_2
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v8}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_4
    :goto_2
    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v8}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v5}, Landroid/util/ArraySet;->clear()V

    goto :goto_3

    :cond_5
    invoke-virtual {v8}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_6
    :goto_3
    invoke-virtual {v8}, Landroid/hardware/radio/ProgramList$Filter;->areCategoriesIncluded()Z

    move-result v9

    or-int/2addr v6, v9

    invoke-virtual {v8}, Landroid/hardware/radio/ProgramList$Filter;->areModificationsExcluded()Z

    move-result v8

    and-int/2addr v7, v8

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_7
    if-nez v4, :cond_8

    move-object v3, v1

    goto :goto_5

    :cond_8
    new-instance v3, Landroid/hardware/radio/ProgramList$Filter;

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/hardware/radio/ProgramList$Filter;-><init>(Ljava/util/Set;Ljava/util/Set;ZZ)V

    :goto_5
    if-nez v3, :cond_a

    iget-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    if-nez p1, :cond_9

    goto :goto_8

    :cond_9
    iput-object v1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    :try_start_2
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    check-cast p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->stopProgramListUpdates()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "BcRadioAidlSrv.module"

    const-string/jumbo v0, "mHalTunerSession.stopProgramListUpdates() failed"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p0, v0, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    :cond_a
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v4, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    invoke-virtual {v3, v4}, Landroid/hardware/radio/ProgramList$Filter;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    if-eqz p1, :cond_c

    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    iget-object v2, p1, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v3, p1, Lcom/android/server/broadcastradio/aidl/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    if-nez v3, :cond_b

    monitor-exit v2

    goto :goto_7

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_b
    const/16 v4, 0x64

    const/16 v5, 0x1f4

    invoke-virtual {v3, p0, v0, v4, v5}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->filterAndUpdateFromInternal(Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;ZII)Ljava/util/List;

    move-result-object p0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p1, p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->dispatchClientUpdateChunks(Ljava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_7

    :goto_6
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p0

    :catchall_2
    move-exception p0

    goto :goto_9

    :cond_c
    :goto_7
    monitor-exit v1

    return-void

    :cond_d
    iput-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    invoke-static {v3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->filterToHalProgramFilter(Landroid/hardware/radio/ProgramList$Filter;)Landroid/hardware/broadcastradio/ProgramFilter;

    move-result-object p1

    check-cast p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->startProgramListUpdates(Landroid/hardware/broadcastradio/ProgramFilter;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    return-void

    :catch_1
    move-exception p0

    const-string p1, "BcRadioAidlSrv.module"

    const-string/jumbo v0, "mHalTunerSession.startProgramListUpdates() failed"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p0, v0, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_8
    return-void

    :catch_2
    move-exception p0

    const-string/jumbo p1, "Start Program ListUpdates"

    invoke-static {p0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->throwOnError(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :goto_9
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p0
.end method

.method public final varargs onTunerSessionsClosedLocked([Lcom/android/server/broadcastradio/aidl/TunerSession;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/aidl/RadioModule;->onTunerSessionProgramListFilterChangedLocked(Lcom/android/server/broadcastradio/aidl/TunerSession;)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    :try_start_1
    iget-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    check-cast p1, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    invoke-virtual {p1}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->unsetTunerCallback()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "BcRadioAidlSrv.module"

    const-string v1, "Failed to unregister HAL callback for module %d"

    invoke-static {v0, p1, v1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
