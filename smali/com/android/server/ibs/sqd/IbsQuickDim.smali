.class public final Lcom/android/server/ibs/sqd/IbsQuickDim;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final SQDGainMap:Ljava/util/Map;

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mAllowDimPkgSet:Landroid/util/ArraySet;

.field public mAllowDimUidSet:Landroid/util/ArraySet;

.field public mBlockUnDimUidSet:Landroid/util/ArraySet;

.field public mBrightness:I

.field public mCharging:Z

.field public mChargingFinishTime:J

.field public final mContext:Landroid/content/Context;

.field public mDimEnableSet:Landroid/util/ArraySet;

.field public final mDimSetRunnable:Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda0;

.field public mDimStartTime:J

.field public mFgPid:I

.field public mFgUid:I

.field public mFilter:Landroid/content/IntentFilter;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mLastFPS:I

.field public mLastPagecount:J

.field public mLastTime:J

.field public final mLock:Ljava/lang/Object;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPkgFilter:Landroid/content/IntentFilter;

.field public final mPointerEventListener:Lcom/android/server/ibs/sqd/IbsQuickDim$2;

.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public mPowerService:Landroid/os/IPowerManager;

.field public final mProcessObserver:Lcom/android/server/ibs/sqd/IbsQuickDim$3;

.field public mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

.field public mQuickDimMode:I

.field public mQuickdimEnable:Z

.field public mResolver:Landroid/content/ContentResolver;

.field public mSFSevices:Landroid/os/IBinder;

.field public mSQDPowerSave:F

.field public mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

.field public mScreenOffTimeoutSetting:J

.field public mScreenOn:Z

.field public mSettingsObserver:Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;

.field public mSmartStayEnabledSetting:Z

.field public mUiControlEnabled:Z

.field public receiver:Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;


# direct methods
.method public static -$$Nest$misSqdCanWork(Lcom/android/server/ibs/sqd/IbsQuickDim;II)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mUiControlEnabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mAllowDimUidSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    const/16 v3, 0x3e8

    if-ne p1, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mDimEnableSet:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p1, p2}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mAllowDimPkgSet:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_2

    :cond_2
    move p1, v2

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mDimEnableSet:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    :goto_2
    iget-boolean p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickdimEnable:Z

    if-nez p2, :cond_4

    if-eqz p1, :cond_5

    :cond_4
    iget-boolean p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mScreenOn:Z

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    iget-boolean p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mCharging:Z

    if-nez p0, :cond_5

    return v1

    :cond_5
    return v2
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQDPowerSave:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBrightness:I

    new-instance v1, Lcom/android/server/ibs/sqd/IbsQuickDim$1;

    invoke-direct {v1, p0}, Lcom/android/server/ibs/sqd/IbsQuickDim$1;-><init>(Lcom/android/server/ibs/sqd/IbsQuickDim;)V

    iput-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->SQDGainMap:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mCharging:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mChargingFinishTime:J

    iput-wide v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mDimStartTime:J

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    iput-object v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSettingsObserver:Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;

    iput-wide v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastPagecount:J

    iput-wide v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastTime:J

    iput-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mUiControlEnabled:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    iput-object v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    new-instance v1, Lcom/android/server/ibs/sqd/IbsQuickDim$2;

    invoke-direct {v1, p0}, Lcom/android/server/ibs/sqd/IbsQuickDim$2;-><init>(Lcom/android/server/ibs/sqd/IbsQuickDim;)V

    iput-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPointerEventListener:Lcom/android/server/ibs/sqd/IbsQuickDim$2;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastFPS:I

    iput-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mScreenOn:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickdimEnable:Z

    new-instance v0, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mDimSetRunnable:Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;

    invoke-direct {v0, p0}, Lcom/android/server/ibs/sqd/IbsQuickDim$3;-><init>(Lcom/android/server/ibs/sqd/IbsQuickDim;)V

    iput-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mProcessObserver:Lcom/android/server/ibs/sqd/IbsQuickDim$3;

    iput-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getFpsFromSurfaceFlinger()I
    .locals 13

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    if-nez v2, :cond_0

    if-nez v2, :cond_0

    const-string/jumbo v2, "SurfaceFlinger"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    :cond_0
    iget-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const-string/jumbo v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    const/16 v4, 0x3f5

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastTime:J

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_1

    iget-wide v8, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastPagecount:J

    int-to-long v10, v2

    cmp-long v12, v8, v10

    if-gez v12, :cond_1

    cmp-long v12, v6, v4

    if-gez v12, :cond_1

    sub-long v6, v4, v6

    long-to-float v3, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v3, v6

    sub-long/2addr v10, v8

    long-to-float v6, v10

    div-float/2addr v6, v3

    float-to-int v3, v6

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    int-to-long v6, v2

    iput-wide v6, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastPagecount:J

    iput-wide v4, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v3

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    const/4 p0, -0x2

    return p0

    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final initDimEnableSet()V
    .locals 8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mDimEnableSet:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPowerService:Landroid/os/IPowerManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPowerService:Landroid/os/IPowerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    new-instance v2, Lcom/android/server/ibs/sqd/IbsQuickDim$4;

    invoke-direct {v2, p0}, Lcom/android/server/ibs/sqd/IbsQuickDim$4;-><init>(Lcom/android/server/ibs/sqd/IbsQuickDim;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPowerService:Landroid/os/IPowerManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    iput-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPowerService:Landroid/os/IPowerManager;

    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Landroid/os/IPowerManager;->getAdaptiveScreenOffTimeoutConfig()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;->fromParcelable(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;

    invoke-virtual {v2}, Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;->getScreenOffTimeout()J

    move-result-wide v4

    iget-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v3, v6, v7, v0}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mAllowDimUidSet:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/32 v6, 0xea60

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSmartStayEnabledSetting:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mDimEnableSet:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public final quitDimMode()V
    .locals 9

    iget v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    sget-boolean v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " quit dim mode mQuickDimMode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    const-string v2, "IbsQuickDim"

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setScreenDimDurationOverrideFromSqd(Z)V

    iget-wide v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mDimStartTime:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->SQDGainMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    iget v7, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBrightness:I

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v7, v8, :cond_2

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_2
    iget-wide v6, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mDimStartTime:J

    sub-long/2addr v2, v6

    long-to-float v0, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    const/high16 v2, 0x45610000    # 3600.0f

    div-float/2addr v0, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQDPowerSave:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQDPowerSave:F

    iput-wide v4, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mDimStartTime:J

    :cond_3
    :goto_1
    return-void
.end method

.method public final removeAllmessage()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final setUicontrolEnable(Z)V
    .locals 2

    const-string v0, "IbsQuickDim"

    const-string/jumbo v1, "UI set SQD switch"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mUiControlEnabled:Z

    if-eq v0, p1, :cond_2

    const/4 v1, 0x2

    if-nez v0, :cond_0

    iput v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickdimEnable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mScreenOn:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mCharging:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pref_sqd_enabled_key"

    invoke-static {v0, v1, p1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_2
    iput-boolean p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mUiControlEnabled:Z

    return-void
.end method
