.class Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DBG:Z

.field public static REATTEMPT_COMMAND_ACTIVATE:I = 0x0

.field public static REATTEMPT_COMMAND_DEACTIVATE:I = 0x0

.field public static REATTEMPT_COMMAND_FREQUENCY:I = 0x0

.field public static final TAG:Ljava/lang/String; = "NetworkAnalytics:NetworkAnalyticsDriver"

.field public static mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;


# instance fields
.field public atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public dataDeliver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

.field public dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

.field public mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

.field public ncmVersion:Ljava/lang/String;

.field public stateOfFileDescriptor:Z

.field public stateOfIntervalSet:Z

.field public stateOfThread:Z

.field public syncObject:Ljava/lang/Object;

.field public test:Ljava/lang/String;

.field public versionMismatchCheck:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->DBG:Z

    const/4 v0, 0x1

    sput v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->REATTEMPT_COMMAND_ACTIVATE:I

    const/4 v0, 0x2

    sput v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->REATTEMPT_COMMAND_DEACTIVATE:I

    const/4 v0, 0x5

    sput v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->REATTEMPT_COMMAND_FREQUENCY:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->syncObject:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfThread:Z

    iput-boolean v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfFileDescriptor:Z

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->ncmVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->versionMismatchCheck:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfIntervalSet:Z

    const-string/jumbo v0, "{ \"src\":\"10.10.12.12\", \"dst\":\"66.7.251.20\", \"sport\":\"5000\", \"dport\":\"443\", \"uid\":\"10197\", \"pid\":\"666\", \"bsent\":\"1400\", \"brecv\":\"4500\", \"hostname\":\"www.space.com\", \"protocol\":\"tcp\", \"hash\":\"a0627953\" }"

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->test:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataDeliver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static getInstance(Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)V

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    :cond_0
    sget-object p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    return-object p0
.end method


# virtual methods
.method public native activate(I)I
.end method

.method public beginDataRecording(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->activate(I)I

    move-result p1

    if-gez p1, :cond_1

    const-string/jumbo p0, "NetworkAnalytics:NetworkAnalyticsDriver"

    const-string/jumbo p1, "beginDataRecording: Activation ioctl failed."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfIntervalSet:Z

    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;)V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setStateOfThread(Z)V

    return-void
.end method

.method public checkDataCollectionState()V
    .locals 0

    return-void
.end method

.method public native checkNcmVersion()I
.end method

.method public declared-synchronized checkNcmVersionMismatch()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->versionMismatchCheck:Ljava/lang/Integer;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->checkNcmVersion()I

    move-result v0

    if-gez v0, :cond_0

    const-string/jumbo v0, "NetworkAnalytics:NetworkAnalyticsDriver"

    const-string/jumbo v1, "beginDataRecording: Mismatch between kernel and userspace npa version."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->versionMismatchCheck:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->versionMismatchCheck:Ljava/lang/Integer;

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->versionMismatchCheck:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public native closeDevice()I
.end method

.method public native deactivate()I
.end method

.method public endDataRecording()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget v1, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    if-lez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setStateOfThread(Z)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->deactivate()I

    move-result v1

    const-string/jumbo v2, "NetworkAnalytics:NetworkAnalyticsDriver"

    if-gez v1, :cond_2

    const-string/jumbo p0, "endDataRecording: Deactivation ioctl failed."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iput-boolean v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfIntervalSet:Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->closeDevice()I

    move-result v1

    if-gez v1, :cond_3

    const-string/jumbo p0, "endDataRecording: closing of character device failed."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setStateOfCharDevice(Z)V

    return-void
.end method

.method public native getNcmVersion()I
.end method

.method public jniSendingData(Ljava/lang/String;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataDeliver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized openCharDevice(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfFileDescriptor:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->openDevice(I)I

    move-result p1

    if-gez p1, :cond_0

    const-string/jumbo p1, "NetworkAnalytics:NetworkAnalyticsDriver"

    const-string/jumbo v0, "beginDataRecording: Opening of character device failed."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/16 p0, -0x13

    return p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setStateOfCharDevice(Z)V

    :cond_1
    iget-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->ncmVersion:Ljava/lang/String;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->getNcmVersion()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->ncmVersion:Ljava/lang/String;

    if-gez p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->ncmVersion:Ljava/lang/String;

    const-string/jumbo p1, "NetworkAnalytics:NetworkAnalyticsDriver"

    const-string/jumbo v0, "beginDataRecording: Get npa version failed. Char device in open state."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p0, -0x1

    return p0

    :cond_2
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public native openDevice(I)I
.end method

.method public native readDevice()Ljava/lang/String;
.end method

.method public native setIntervalValue(I)I
.end method

.method public declared-synchronized setIntervalValueForFlow(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfIntervalSet:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setIntervalValue(I)I

    move-result p1

    if-gez p1, :cond_0

    const-string/jumbo p1, "NetworkAnalytics:NetworkAnalyticsDriver"

    const-string/jumbo v0, "beginDataRecording: set interval value failed. Char device in open state."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final setStateOfCharDevice(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfFileDescriptor:Z

    return-void
.end method

.method public final setStateOfThread(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
