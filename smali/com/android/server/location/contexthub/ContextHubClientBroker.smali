.class public final Lcom/android/server/location/contexthub/ContextHubClientBroker;
.super Landroid/hardware/location/IContextHubClient$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/app/AppOpsManager$OnOpChangedListener;
.implements Landroid/app/PendingIntent$OnFinished;


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

.field public mAttributionTag:Ljava/lang/String;

.field public final mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

.field public final mContext:Landroid/content/Context;

.field public mContextHubClientCallback:Landroid/hardware/location/IContextHubClientCallback;

.field public final mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

.field public final mForceDeniedNapps:Ljava/util/Set;

.field public final mHostEndPointId:S

.field public final mIsPendingIntentCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mIsPermQueryIssued:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mIsWakelockUsable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mMessageChannelNanoappIdMap:Ljava/util/Map;

.field public final mNappToAuthTimerMap:Ljava/util/Map;

.field public final mPackage:Ljava/lang/String;

.field public final mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

.field public final mPid:I

.field public final mQueryPermsCallback:Lcom/android/server/location/contexthub/ContextHubClientBroker$1;

.field public mRegistered:Z

.field public final mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

.field public final mUid:I

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Landroid/hardware/location/ContextHubInfo;SLandroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Landroid/app/PendingIntent;JLjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Landroid/hardware/location/IContextHubClient$Stub;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mRegistered:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsWakelockUsable:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsPendingIntentCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsPermQueryIssued:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mForceDeniedNapps:Ljava/util/Set;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mNappToAuthTimerMap:Ljava/util/Map;

    new-instance v1, Lcom/android/server/location/contexthub/ContextHubClientBroker$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$1;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;)V

    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mQueryPermsCallback:Lcom/android/server/location/contexthub/ContextHubClientBroker$1;

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    iput-object p4, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    iput-short p5, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    iput-object p6, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContextHubClientCallback:Landroid/hardware/location/IContextHubClientCallback;

    if-nez p9, :cond_0

    new-instance p2, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p2, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mValid:Z

    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p9, p2, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mPendingIntent:Landroid/app/PendingIntent;

    iput-wide p10, p2, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mNanoAppId:J

    iput-boolean v0, p2, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mValid:Z

    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    :goto_0
    const-string p2, "ContextHubClientBroker"

    if-nez p12, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    array-length p4, p3

    if-lez p4, :cond_1

    aget-object p12, p3, v2

    :cond_1
    const-string/jumbo p3, "createClient: Provided package name null. Using first package name "

    invoke-static {p3, p12, p2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput-object p12, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttributionTag:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p3

    iput p3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    iput p3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mUid:I

    const-class p4, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/AppOpsManager;

    iput-object p4, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-class p5, Landroid/os/PowerManager;

    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    invoke-virtual {p1, v0, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance p2, Landroid/os/WorkSource;

    invoke-direct {p2, p3, p12}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const/4 p1, -0x1

    invoke-virtual {p4, p1, p12, p0}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendHostEndpointConnectedEvent()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->onClientExit()V

    return-void
.end method

.method public final callbackFinished()V
    .locals 2

    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final checkNanoappPermsAsync()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsPermQueryIssued:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {v0}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mQueryPermsCallback:Lcom/android/server/location/contexthub/ContextHubClientBroker$1;

    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    new-instance v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager$7;

    iget-object v0, v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$7;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;ILjava/lang/String;ILandroid/hardware/location/IContextHubTransactionCallback;)V

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    :cond_0
    return-void
.end method

.method public final close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mPendingIntent:Landroid/app/PendingIntent;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->onClientExit()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final createIntent(I)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.hardware.location.extra.EVENT_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p1, "android.hardware.location.extra.CONTEXT_HUB_INFO"

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public final doSendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;Landroid/hardware/location/IContextHubTransactionCallback;)I
    .locals 14

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v2, "android.permission.ACCESS_CONTEXT_HUB"

    const-string v3, "ACCESS_CONTEXT_HUB permission required to use Context Hub"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Landroid/hardware/location/NanoAppMessage;->setIsReliable(Z)V

    invoke-virtual {p1, v12}, Landroid/hardware/location/NanoAppMessage;->setMessageSequenceNumber(I)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    const/4 v13, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    const-wide/32 v0, 0xacf3007

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_0

    return v13

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Client doesn\'t have valid permissions to send message to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->checkNanoappPermsAsync()V

    :cond_2
    if-nez p2, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    iget-short v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {v3}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v3

    invoke-virtual {v0, v2, v3, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->sendMessageToContextHub(SILandroid/hardware/location/NanoAppMessage;)I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    move v6, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "ContextHubClientBroker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "RemoteException in sendMessageToNanoApp (target hub ID = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {v5}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v13

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget-short v7, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {v0}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v10

    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    new-instance v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;

    iget-object v0, v3, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iget-object v6, v3, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableMessageSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v6

    move v9, v7

    move-object v8, p1

    move-object/from16 v11, p2

    move v4, v0

    invoke-direct/range {v2 .. v11}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;ILjava/lang/String;IILandroid/hardware/location/NanoAppMessage;SILandroid/hardware/location/IContextHubTransactionCallback;)V

    :try_start_2
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {v0, v2}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    move v6, v12

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "ContextHubClientBroker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to add a transaction in sendMessageToNanoApp (target hub ID = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {v4}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x7

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/android/server/location/contexthub/ContextHubEventLogger;->getInstance()Lcom/android/server/location/contexthub/ContextHubEventLogger;

    move-result-object v7

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {v0}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v3

    if-nez v6, :cond_4

    move v5, v13

    goto :goto_2

    :cond_4
    move v5, v12

    :goto_2
    const-string/jumbo v8, "Unable to add message to nanoapp event to queue: "

    monitor-enter v7

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;-><init>(JILandroid/hardware/location/NanoAppMessage;Z)V

    iget-object v1, v7, Lcom/android/server/location/contexthub/ContextHubEventLogger;->mMessageToNanoappQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-virtual {v1, v0}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "ContextHubEventLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_5
    :goto_3
    monitor-exit v7

    return v6

    :goto_4
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_6
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ContextHubClientBroker"

    const-string v3, "Failed to send message (connection closed): hostEndpointId= %1$d payload %2$s"

    iget-short v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public doSendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/PendingIntent$OnFinished;)B
    .locals 8

    :try_start_0
    const-string/jumbo v6, "android.permission.ACCESS_CONTEXT_HUB"

    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsPendingIntentCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "PendingIntent has been canceled, unregistering from client (host endpoint ID "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short p2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContextHubClientBroker"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->close()V

    const/4 p0, 0x2

    return p0
.end method

.method public final getId()I
    .locals 0

    iget-short p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    return p0
.end method

.method public getWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final declared-synchronized invokeCallback(Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;)B
    .locals 3

    const-string/jumbo v0, "RemoteException while invoking client callback (host endpoint ID = "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContextHubClientCallback:Landroid/hardware/location/IContextHubClientCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v1, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContextHubClientCallback:Landroid/hardware/location/IContextHubClientCallback;

    invoke-interface {p1, v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;->accept(Landroid/hardware/location/IContextHubClientCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "ContextHubClientBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    const/4 p0, 0x2

    return p0

    :cond_0
    :goto_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public isWakelockUsable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsWakelockUsable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final declared-synchronized onClientExit()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContextHubClientCallback:Landroid/hardware/location/IContextHubClientCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/hardware/location/IContextHubClientCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContextHubClientCallback:Landroid/hardware/location/IContextHubClientCallback;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    iget-object v0, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mRegistered:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    iget-short v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {v0, v2}, Lcom/android/server/location/contexthub/ContextHubClientManager;->unregisterClient(S)V

    iput-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mRegistered:Z

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p0}, Landroid/app/AppOpsManager;->stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    iget-short v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {v0, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onHostEndpointDisconnected(S)V

    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->checkNanoappPermsAsync()V

    :cond_0
    return-void
.end method

.method public final onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    new-instance p1, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;I)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final reliableMessageCallbackFinished(IB)V
    .locals 0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendMessageDeliveryStatusToContextHub(BI)V

    new-instance p1, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;I)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final sendHostEndpointConnectedEvent()V
    .locals 3

    new-instance v0, Landroid/hardware/contexthub/HostEndpointInfo;

    invoke-direct {v0}, Landroid/hardware/contexthub/HostEndpointInfo;-><init>()V

    iget-short v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    int-to-char v1, v1

    iput-char v1, v0, Landroid/hardware/contexthub/HostEndpointInfo;->hostEndpointId:C

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    iput-object v1, v0, Landroid/hardware/contexthub/HostEndpointInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttributionTag:Ljava/lang/String;

    iput-object v1, v0, Landroid/hardware/contexthub/HostEndpointInfo;->attributionTag:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mUid:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    iput v1, v0, Landroid/hardware/contexthub/HostEndpointInfo;->type:I

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onHostEndpointConnected(Landroid/hardware/contexthub/HostEndpointInfo;)V

    return-void
.end method

.method public final sendMessageDeliveryStatusToContextHub(BI)V
    .locals 1

    new-instance v0, Landroid/hardware/contexthub/MessageDeliveryStatus;

    invoke-direct {v0}, Landroid/hardware/contexthub/MessageDeliveryStatus;-><init>()V

    iput p2, v0, Landroid/hardware/contexthub/MessageDeliveryStatus;->messageSequenceNumber:I

    iput-byte p1, v0, Landroid/hardware/contexthub/MessageDeliveryStatus;->errorCode:B

    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {p0}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result p0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->sendMessageDeliveryStatusToContextHub(ILandroid/hardware/contexthub/MessageDeliveryStatus;)I

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "ContextHubClientBroker"

    const-string p1, "Failed to send the reliable message status"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final sendMessageToClient(Landroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)B
    .locals 16

    move-object/from16 v6, p1

    invoke-virtual {v6}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v1

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->updateNanoAppAuthState(JLjava/util/List;ZZ)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x3

    const-string v7, ". "

    const-string v8, "Dropping message from "

    const-string v9, "ContextHubClientBroker"

    if-ne v3, v4, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in grace period and napp msg has permissions"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    if-eqz v3, :cond_4

    iget-object v10, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v11, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mUid:I

    iget-object v12, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttributionTag:Ljava/lang/String;

    const-string/jumbo v3, "NanoappMessageDelivery "

    invoke-static {v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v14, p3

    invoke-static/range {v10 .. v15}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->notePermissions(Landroid/app/AppOpsManager;ILjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda5;

    invoke-direct {v3, v6}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/location/NanoAppMessage;)V

    invoke-virtual {v0, v3}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;)B

    move-result v3

    if-eqz v3, :cond_2

    return v3

    :cond_2
    new-instance v3, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0, v1, v2, v6}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;JLandroid/hardware/location/NanoAppMessage;)V

    new-instance v4, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda7;

    invoke-direct {v4, v0, v6}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;Landroid/hardware/location/NanoAppMessage;)V

    invoke-virtual {v6}, Landroid/hardware/location/NanoAppMessage;->isReliable()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;JLcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda7;)B

    move-result v0

    return v0

    :cond_4
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " doesn\'t have permission"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public final sendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->doSendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;Landroid/hardware/location/IContextHubTransactionCallback;)I

    move-result p0

    return p0
.end method

.method public final declared-synchronized sendPendingIntent(Ljava/util/function/Supplier;JLcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda7;)B
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    iget-object v1, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mNanoAppId:J

    cmp-long p2, v3, p2

    if-nez p2, :cond_1

    new-instance p2, Lcom/android/server/location/contexthub/ContextHubClientBroker$2;

    invoke-direct {p2, p4, p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$2;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda7;Lcom/android/server/location/contexthub/ContextHubClientBroker;)V

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->doSendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/PendingIntent$OnFinished;)B

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return v2

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized sendPendingIntent(Ljava/util/function/Supplier;J)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;JLcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda7;)B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0
.end method

.method public final sendReliableMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;Landroid/hardware/location/IContextHubTransactionCallback;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->doSendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;Landroid/hardware/location/IContextHubTransactionCallback;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "endpointID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", contextHub: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {v1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "attributionTag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    iget-boolean v1, v1, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mValid:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "intentCreatorPackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nanoAppId: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    iget-wide v1, v1, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mNanoAppId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_7

    const-string/jumbo v1, "messageChannelNanoappSet: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string/jumbo v3, "Nanoapp 0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Auth state: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const-string/jumbo v2, "UNKNOWN"

    goto :goto_2

    :cond_3
    const-string v2, "GRANTED"

    goto :goto_2

    :cond_4
    const-string v2, "DENIED_GRACE_PERIOD"

    goto :goto_2

    :cond_5
    const-string v2, "DENIED"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const-string v1, "), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v2, "wakelock: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final updateNanoAppAuthState(JLjava/util/List;ZZ)I
    .locals 10

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPid:I

    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mUid:I

    invoke-static {v0, v2, v3, p3}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->hasPermissions(Landroid/content/Context;IILjava/util/Collection;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_5

    :cond_0
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p5, :cond_5

    iget-object v6, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mForceDeniedNapps:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    check-cast v6, Ljava/util/HashSet;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p4, :cond_2

    if-ne v2, v5, :cond_4

    :goto_1
    move v0, p4

    move p4, v4

    goto :goto_3

    :cond_2
    if-ne v2, v3, :cond_3

    if-nez v0, :cond_3

    move v0, p4

    move p4, v5

    goto :goto_3

    :cond_3
    if-eq v2, v3, :cond_4

    if-eqz v0, :cond_4

    move v0, p4

    move p4, v3

    goto :goto_3

    :cond_4
    move v0, p4

    move p4, v2

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mForceDeniedNapps:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :goto_3
    if-eq p4, v5, :cond_6

    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mNappToAuthTimerMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/contexthub/AuthStateDenialTimer;

    if-eqz v3, :cond_7

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-boolean v5, v3, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mCancelled:Z

    iget-object v4, v3, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mHandler:Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :cond_6
    if-ne v2, v3, :cond_7

    new-instance v3, Lcom/android/server/location/contexthub/AuthStateDenialTimer;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v3, p0, p1, p2, v6}, Lcom/android/server/location/contexthub/AuthStateDenialTimer;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;JLandroid/os/Looper;)V

    iget-object v6, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mNappToAuthTimerMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    check-cast v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v7, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iput-boolean v4, v3, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mCancelled:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sget-wide v8, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->TIMEOUT_MS:J

    add-long/2addr v6, v8

    iput-wide v6, v3, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mStopTimeInFuture:J

    iget-object v4, v3, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mHandler:Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object p0, v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p0

    :cond_7
    :goto_4
    if-eq v2, p4, :cond_8

    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eq v2, p4, :cond_b

    if-eqz p4, :cond_9

    if-ne p4, v5, :cond_a

    :cond_9
    const-string v1, "ContextHubClientBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateNanoAppAuthState auth error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    new-instance p3, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda2;

    const/4 p5, 0x0

    invoke-direct {p3, p4, p5, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda2;-><init>(IIJ)V

    invoke-virtual {p0, p3}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;)B

    move-wide p2, p1

    move-object p1, p0

    new-instance p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda3;

    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;JII)V

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;J)V

    :cond_b
    return p4

    :goto_5
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p0
.end method
