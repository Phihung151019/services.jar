.class public final Lcom/android/server/am/ActivityManagerServiceExt;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final CSC_VERSION:Ljava/lang/String;

.field public static final MAX_LONG_LIVE_APP:I

.field public static final PRE_BOOT_CSC_FILE:Ljava/io/File;


# instance fields
.field public mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mBgHandler:Lcom/android/server/am/ActivityManagerServiceExt$BgHandler;

.field public final mBrAllowListCallback:Lcom/android/server/am/ActivityManagerServiceExt$1;

.field public final mBrMap:Landroid/util/ArrayMap;

.field public final mBroadcastReceiverNotInAllowlist:Ljava/util/Map;

.field public mCanTmoPkgAvoidForceStop:Z

.field public mCb4Process:Ljava/util/Optional;

.field public final mContext:Landroid/content/Context;

.field public final mDiscardList:Ljava/util/ArrayList;

.field public final mExceptionList:Ljava/util/ArrayList;

.field public final mForceKeepAliveProcesses:Ljava/util/Set;

.field public final mForceKillForDeXRunnable:Lcom/android/server/am/ActivityManagerServiceExt$2;

.field public final mForceKillPackages:Ljava/util/Set;

.field public final mForceStopReasons:Ljava/util/Set;

.field public final mLongLiveAppByPackages:Ljava/util/ArrayList;

.field public final mLongLiveCallbacks:Ljava/util/ArrayList;

.field public final mMetaDataCollector:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

.field public mParser:Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;

.field public mPref:Landroid/content/SharedPreferences;

.field public final mRelaxedBroadcastActions:Ljava/util/HashSet;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final persistentApps:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "ril.official_cscver"

    const-string v1, "DUMMY"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceExt;->CSC_VERSION:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "pre_boot_csc.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceExt;->PRE_BOOT_CSC_FILE:Ljava/io/File;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_NEVERKILLEDAPP_NUM:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput v0, Lcom/android/server/am/ActivityManagerServiceExt;->MAX_LONG_LIVE_APP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;

    invoke-direct {v0}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mParser:Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBroadcastReceiverNotInAllowlist:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mCb4Process:Ljava/util/Optional;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBrMap:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "android"

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mExceptionList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDiscardList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/ActivityManagerServiceExt$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityManagerServiceExt$1;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBrAllowListCallback:Lcom/android/server/am/ActivityManagerServiceExt$1;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceStopReasons:Ljava/util/Set;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceKillPackages:Ljava/util/Set;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceKeepAliveProcesses:Ljava/util/Set;

    new-instance v4, Lcom/android/server/am/ActivityManagerServiceExt$2;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0}, Lcom/android/server/am/ActivityManagerServiceExt$2;-><init>(ILjava/lang/Object;)V

    iput-object v4, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceKillForDeXRunnable:Lcom/android/server/am/ActivityManagerServiceExt$2;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mRelaxedBroadcastActions:Ljava/util/HashSet;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v5, "com.android.systemui"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/ActivityManagerServiceExt;->persistentApps:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mParser:Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;

    invoke-virtual {p2}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;->parseAllowList()V

    sget-object p2, Lcom/samsung/android/server/packagefeature/PackageFeature;->BROADCAST_RECEIVER_ALLOW_LIST:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-virtual {p2, v0}, Lcom/samsung/android/server/packagefeature/PackageFeature;->registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x107015a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    if-lez p2, :cond_0

    new-instance p2, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mRelaxedBroadcastActions:Ljava/util/HashSet;

    :cond_0
    new-instance p1, Ljava/lang/ThreadLocal;

    invoke-direct {p1}, Ljava/lang/ThreadLocal;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string/jumbo p2, "yyyy/MM/dd HH:mm:ss.SSS zzz"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    new-instance p1, Lcom/android/server/am/ActivityManagerServiceExt$BgHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBgHandler:Lcom/android/server/am/ActivityManagerServiceExt$BgHandler;

    new-instance p1, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    invoke-direct {p1, p0}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;)V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mMetaDataCollector:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    invoke-static {p1}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->-$$Nest$mscheduleLoad(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;)V

    const-string/jumbo p0, "com.tencent.mm"

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo p0, "com.tencent.mm:exdevice"

    invoke-virtual {v3, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo p0, "installPackageLI"

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo p0, "pkg removed"

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo p0, "pkg changed"

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string p0, "ActivityManagerServiceExt"

    const-string p1, "ActivityManagerServiceExt :: created"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static updateNeverKill(Landroid/os/RemoteCallback;ZLjava/lang/String;I)V
    .locals 6

    const-string v0, ","

    const-string/jumbo v1, "updateNeverKill:"

    if-gtz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    const-string v4, "ActivityManagerServiceExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "KEY_NEVER_KILL_PACKAGE"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "KEY_NEVER_KILL_PID"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final addLongLivePackageLocked(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "longLivePackage "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/android/server/am/ActivityManagerServiceExt;->MAX_LONG_LIVE_APP:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerServiceExt;->markAsLongLivePackageIfAliveLocked(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->saveLongLivePackage()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final dumpLongLivePackageLocked(Ljava/io/PrintWriter;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    if-eqz p2, :cond_0

    const-string p2, "-------------------------------------------------------------------------------"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    const-string p2, "ACTIVITY MANAGER - LONG LIVE APP"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "    longLiveAppByPackages: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p0, "    Max="

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget p0, Lcom/android/server/am/ActivityManagerServiceExt;->MAX_LONG_LIVE_APP:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    :cond_1
    return-void
.end method

.method public final forceKillProcessesForDeXExitLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 11

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    const/16 v1, 0xd

    const-string v2, "ActivityManagerServiceExt"

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0xd

    const-string/jumbo v9, "kill dex related process when exit"

    move-object v4, p1

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "kill dex related process succeeded - "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {p0, p1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v4, p1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "kill dex related process failed for procstate - "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget p1, p1, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    invoke-static {p0, p1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public final forceStopPackageLocked(IILjava/lang/String;Z)V
    .locals 8

    const/4 v4, 0x1

    const-string/jumbo v7, "pkg removed"

    const/16 v3, 0xa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, p3

    move v5, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerServiceExt;->forceStopPackageLocked(IIIZZLjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final forceStopPackageLocked(IIIZZLjava/lang/String;Ljava/lang/String;)Z
    .locals 13

    move-object/from16 v1, p6

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mMetaDataCollector:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    const-string/jumbo v2, "com.samsung.android.persistent.downloadable"

    invoke-static {v0, v1, v2}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->-$$Nest$mhasBooleanMetaData(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceStopReasons:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    move-object/from16 v10, p7

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "forceStopPackageLocked with revised flags for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityManagerServiceExt"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    move v3, v0

    move v6, v3

    goto :goto_1

    :cond_0
    move-object/from16 v10, p7

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/16 v12, -0x2710

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    const/4 v8, 0x0

    move v2, p1

    move v9, p2

    move/from16 v11, p3

    move/from16 v4, p4

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageInternalLocked(Ljava/lang/String;IZZZZZZILjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final getDedicatedProcessesLocked(I)Ljava/util/ArrayList;
    .locals 4

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/wm/RecentTasks$UserToProcMap;->get(I)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks$UserToProcMap;->get(I)Ljava/util/HashMap;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final initLongLivePackageLocked()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "multiwindow.property"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    const-string v3, "LONG_LIVE_BY_PACKAGE"

    const/4 v4, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "migrateTo Set "

    const-string v6, "ActivityManagerServiceExt"

    invoke-static {v5, v0, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->saveLongLivePackage()Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityManagerServiceExt;->markAsLongLivePackageIfAliveLocked(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final intentFilterForReceiverAllowlist(Landroid/content/IIntentReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/IntentFilter;
    .locals 4

    if-eqz p3, :cond_6

    if-eqz p4, :cond_6

    if-eqz p1, :cond_6

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mParser:Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;

    invoke-virtual {p1, p4}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;->isInRestrictedPackageList(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object p2

    if-nez p2, :cond_2

    :goto_0
    return-object p3

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mParser:Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;

    invoke-virtual {v1}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;->getRestricedIntent()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mParser:Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;

    invoke-virtual {v1, v0, p4, p3}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;->isInAllowList(Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentFilter;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBroadcastReceiverNotInAllowlist:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBroadcastReceiverNotInAllowlist:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {p4}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBroadcastReceiverNotInAllowlist:Ljava/util/Map;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    const-string/jumbo v1, "action:"

    const-string v2, " callerPackage:"

    const-string v3, " is not registered!"

    invoke-static {v1, v0, v2, p4, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    new-instance p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda7;

    invoke-direct {p0, p3}, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda7;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_6
    :goto_3
    return-object p3
.end method

.method public final isNeedRestrictToSendBr(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 10

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "android"

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mExceptionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBrMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    if-nez v3, :cond_1

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBrMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v4, "EMPTY_ACTION"

    const/16 v5, 0xbb8

    goto :goto_1

    :cond_2
    const/16 v5, 0x5dc

    :goto_1
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;

    const/4 v7, 0x0

    if-nez v6, :cond_3

    new-instance v6, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput v7, v6, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mCnt:I

    iput v7, v6, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mMaxCnt:I

    const-wide/16 v8, 0x0

    iput-wide v8, v6, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mTotalCnt:J

    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget v8, v6, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mCnt:I

    const/4 v9, 0x1

    if-lt v8, v5, :cond_5

    if-nez v2, :cond_5

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " key="

    invoke-static {v2, v1, v3, p1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDiscardList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v3, 0xa

    if-le p1, v3, :cond_4

    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDiscardList:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDiscardList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Too many Broadcast Requested :: This BR will not be sent from="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " intent="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManagerServiceExt"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_5
    iput-boolean v9, p1, Lcom/android/server/am/BroadcastRecord;->mCounted:Z

    add-int/2addr v8, v9

    iput v8, v6, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mCnt:I

    iget-wide p0, v6, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mTotalCnt:J

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    iput-wide p0, v6, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mTotalCnt:J

    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v7
.end method

.method public final killAllBackgroundProcessesExcept(IILandroid/os/Bundle;)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v5, "android.permission.KILL_BACKGROUND_PROCESSES"

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_f

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v7, 0x0

    if-eqz v3, :cond_0

    :try_start_0
    const-string/jumbo v8, "name"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "kill_packages"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    const-string/jumbo v10, "keep_packages"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    const-string/jumbo v11, "skip_sdk_version_check"

    invoke-virtual {v3, v11, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v11, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-wide/from16 v16, v4

    goto/16 :goto_e

    :cond_0
    const-string/jumbo v8, "multi-resolution"

    const/4 v9, 0x0

    move v3, v7

    move v11, v3

    move-object v10, v9

    :goto_0
    iget-object v12, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v13, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v15, v15, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v15}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v15

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    :goto_1
    if-ge v7, v15, :cond_d

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v6, v6, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    move/from16 p3, v3

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-wide/from16 v16, v4

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_c

    :try_start_3
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    move/from16 v18, v3

    iget-object v3, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v3, v3, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    move/from16 v19, v4

    const/16 v4, 0x14

    if-ne v3, v4, :cond_2

    :cond_1
    :goto_3
    const/4 v3, 0x1

    goto/16 :goto_a

    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    :goto_4
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceKillPackages:Ljava/util/Set;

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move/from16 v21, v3

    move-object/from16 v3, v20

    check-cast v3, Ljava/lang/String;

    move-object/from16 v20, v4

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_6

    :cond_4
    move-object/from16 v4, v20

    move/from16 v3, v21

    goto :goto_5

    :catchall_1
    move-exception v0

    goto/16 :goto_c

    :cond_5
    move/from16 v21, v3

    :goto_6
    if-eqz v11, :cond_7

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_6

    invoke-interface {v9, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    move/from16 v21, v3

    const/4 v4, 0x0

    const/16 v20, 0x1

    goto :goto_8

    :cond_6
    if-eqz v10, :cond_7

    invoke-interface {v10, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move/from16 v21, v3

    const/4 v4, 0x1

    :goto_7
    const/16 v20, 0x0

    goto :goto_8

    :cond_7
    move/from16 v21, v3

    const/4 v4, 0x0

    goto :goto_7

    :goto_8
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceKeepAliveProcesses:Ljava/util/Set;

    move-object/from16 v22, v3

    iget-object v3, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move/from16 v23, v4

    move-object/from16 v4, v22

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v5, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v3}, Lcom/android/server/am/PackageList;->getPackageList()[Ljava/lang/String;

    const/4 v3, 0x0

    goto :goto_9

    :cond_8
    const/4 v3, 0x1

    :goto_9
    iget-boolean v4, v5, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    if-eqz v4, :cond_9

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_9
    if-nez v3, :cond_1

    if-nez v23, :cond_1

    if-nez p3, :cond_a

    if-ltz v1, :cond_a

    iget-object v3, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v3, v1, :cond_1

    :cond_a
    if-ltz v2, :cond_b

    iget-object v3, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v4, v3, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    if-gt v4, v2, :cond_b

    if-nez v21, :cond_b

    if-nez v20, :cond_b

    const-string/jumbo v4, "force-keep-alive"

    iget-object v3, v3, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_b
    const/4 v3, 0x1

    iput-boolean v3, v5, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    add-int/lit8 v4, v19, 0x1

    move/from16 v3, v18

    goto/16 :goto_2

    :cond_c
    const/4 v3, 0x1

    add-int/lit8 v7, v7, 0x1

    move/from16 v3, p3

    move-wide/from16 v4, v16

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    move-wide/from16 v16, v4

    goto :goto_c

    :cond_d
    move-wide/from16 v16, v4

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v7, 0x0

    :goto_b
    if-ge v7, v1, :cond_e

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Lcom/android/server/am/ProcessRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "kill all background except(policy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v21, 0x1

    const/16 v22, 0xd

    const/16 v23, 0x0

    const/16 v25, 0x1

    const/16 v20, 0x0

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_e
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3
    move-exception v0

    goto :goto_e

    :catchall_4
    move-exception v0

    goto :goto_d

    :goto_c
    :try_start_6
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :catchall_5
    move-exception v0

    move-wide/from16 v16, v4

    :goto_d
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_e
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Permission Denial: killAllBackgroundProcessesExcept() from pid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires android.permission.KILL_BACKGROUND_PROCESSES"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final markAsLongLivePackageIfAliveLocked(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v2, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;Ljava/lang/Object;I)V

    const/4 p0, 0x0

    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(Ljava/util/function/Consumer;Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final removeLongLivePackageLocked(Ljava/lang/String;)Z
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "longLivePackage "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_1

    iput-boolean v1, v3, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mCb4Process:Ljava/util/Optional;

    new-instance v5, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda4;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v2, v3, v6}, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;Lcom/android/server/am/ProcessRecord;I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->saveLongLivePackage()Z

    move-result p0

    return p0
.end method

.method public final removeLongLivePackageWhenUninstalledLocked(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Uninstalled:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->saveLongLivePackage()Z

    return-void
.end method

.method public final removeLongLiveTaskLocked(ILjava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RecentTasks;->removeDedicatedProcessFromPackage(ILjava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final restoreAllAdjs()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_1

    iput-boolean v2, v5, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mCb4Process:Ljava/util/Optional;

    new-instance v7, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda4;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v4, v5, v8}, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;Lcom/android/server/am/ProcessRecord;I)V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final saveLongLivePackage()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "multiwindow.property"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    const-string p0, "LONG_LIVE_BY_PACKAGE"

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    return p0
.end method

.method public final setLongLivePackageLocked(Ljava/lang/String;)Z
    .locals 2

    const-string/jumbo v0, "setLongLivePackage "

    const-string v1, "+"

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->restoreAllAdjs()V

    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "multiwindow.property"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "LONG_LIVE_BY_PACKAGE"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->restoreAllAdjs()V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerServiceExt;->markAsLongLivePackageIfAliveLocked(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->saveLongLivePackage()Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public final setLongLiveTask(IZ)V
    .locals 5

    const-string v0, "ActivityManagerServiceExt"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setLongLiveTask "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->setLongLiveTask(IZ)Landroid/util/Pair;

    move-result-object p1

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v4, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, p1, v1, p2}, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;ILjava/lang/String;Z)V

    const/4 p0, 0x0

    invoke-virtual {v3, v4, p0}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(Ljava/util/function/Consumer;Z)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
