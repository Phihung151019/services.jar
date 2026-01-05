.class public final Lcom/android/server/input/WirelessKeyboardMouseShare;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final CONN_ID:[Ljava/lang/String;

.field public final REG_ID:[Ljava/lang/String;

.field public final innerLock:Ljava/lang/Object;

.field public mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public mAddIndex:I

.field public mAppRegistered:Z

.field public final mCallback:Lcom/android/server/input/WirelessKeyboardMouseShare$4;

.field public mConnectionState:I

.field public final mContext:Landroid/content/Context;

.field public mDisconnectWithoutUnregister:Z

.field public final mExecutor:Lcom/android/server/input/WirelessKeyboardMouseShare$1;

.field public mFinishNewDevice:Z

.field public mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

.field public final mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

.field public mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

.field public mInitialized:Z

.field public final mInputManager:Lcom/android/server/input/InputManagerService;

.field public final mInputReportCache:Landroid/util/SparseArray;

.field public final mKeyboard:Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

.field public mLatestConnectedName:Ljava/lang/String;

.field public final mLogInfos:Ljava/util/Map;

.field public final mMouse:Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

.field public mNeedNoti:Z

.field public mNeedNotiTablet:Z

.field public mNeedToTurnOnBT:Z

.field public mNextConnectedDevice:Landroid/bluetooth/BluetoothDevice;

.field public mNotiTurnOnBT:Z

.field public final mOutputReportCache:Landroid/util/SparseArray;

.field public final mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

.field public mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

.field public mPogoConnected:Z

.field public mReadyToConnect:Z

.field public final mReceiver:Lcom/android/server/input/WirelessKeyboardMouseShare$2;

.field public mRetryNum:I

.field public final mServiceListener:Lcom/android/server/input/WirelessKeyboardMouseShare$3;

.field public final mStatusInfo:Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;

.field public mTabletName:Ljava/lang/String;

.field public mToLocalTablet:Z

.field public final mToastDialog:Lcom/android/server/input/ToastDialog;

.field public mUnregisterWhenConnectionFail:Z


# direct methods
.method public static -$$Nest$maddPairedDevicesListLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/bluetooth/BluetoothDevice;I)I
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, ""

    move v3, v0

    move-object v4, v2

    :goto_0
    const/4 v5, 0x4

    const-string/jumbo v6, "WirelessKeyboardMouseShare"

    if-ge v3, v5, :cond_3

    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v5, v5, v3

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    move-object v5, v2

    :goto_1
    if-ne v3, v0, :cond_1

    move-object v4, v5

    goto :goto_2

    :cond_1
    const-string v7, ","

    invoke-static {v4, v7, v5}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v1, "already exist device slot["

    const-string/jumbo v5, "] requested_index="

    const-string v7, ", device="

    invoke-static {v3, p2, v1, v5, v7}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iput v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAddIndex:I

    if-eqz v1, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x3

    if-gt p2, v0, :cond_8

    if-nez p2, :cond_5

    goto/16 :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v0, v0, p2

    if-eqz v0, :cond_6

    const-string/jumbo v1, "not empty slot "

    const-string v2, " "

    invoke-static {p2, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aput-object p1, v0, p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "add paired device list "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->getDeviceListSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    sget-boolean p1, Lcom/samsung/android/rune/InputRune;->IFW_WIRELESS_KEYBOARD_SA_LOGGING:Z

    const/4 v0, 0x2

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->getDeviceListSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "67264"

    invoke-static {v1, p1}, Lcom/samsung/android/core/CoreSaLogger;->logSettingStatusForBasic(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p1, p2, -0x1

    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->REG_ID:[Ljava/lang/String;

    aget-object p1, v1, p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "1 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object p0, p0, p2

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return v0

    :cond_8
    :goto_3
    const-string/jumbo p0, "cannot add list, index="

    invoke-static {p2, p0, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static -$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[B)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputReportCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputReportCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    iput-object p0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;->data:[B

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.product_ship"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;Lcom/android/server/input/ToastDialog;Ljava/lang/Object;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mReadyToConnect:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    iput v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mConnectionState:I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mLatestConnectedName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mTabletName:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPogoConnected:Z

    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedToTurnOnBT:Z

    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNotiTurnOnBT:Z

    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNotiTablet:Z

    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFinishNewDevice:Z

    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mUnregisterWhenConnectionFail:Z

    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mDisconnectWithoutUnregister:Z

    iput v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInitialized:Z

    const/4 v1, 0x4

    new-array v2, v1, [Landroid/bluetooth/BluetoothDevice;

    iput-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    iput v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAddIndex:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mLogInfos:Ljava/util/Map;

    const-string v1, "67263"

    const-string v3, "67261"

    const-string v4, "67262"

    filled-new-array {v3, v4, v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->REG_ID:[Ljava/lang/String;

    const-string v1, "67267"

    const-string v3, "67265"

    const-string v4, "67266"

    filled-new-array {v3, v4, v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->CONN_ID:[Ljava/lang/String;

    new-instance v1, Lcom/android/server/input/WirelessKeyboardMouseShare$1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mExecutor:Lcom/android/server/input/WirelessKeyboardMouseShare$1;

    new-instance v1, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;I)V

    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mMouse:Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

    new-instance v1, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;I)V

    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mKeyboard:Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputReportCache:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mOutputReportCache:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/input/WirelessKeyboardMouseShare$2;

    invoke-direct {v1, p0}, Lcom/android/server/input/WirelessKeyboardMouseShare$2;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V

    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mReceiver:Lcom/android/server/input/WirelessKeyboardMouseShare$2;

    new-instance v3, Lcom/android/server/input/WirelessKeyboardMouseShare$3;

    invoke-direct {v3, p0}, Lcom/android/server/input/WirelessKeyboardMouseShare$3;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V

    iput-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mServiceListener:Lcom/android/server/input/WirelessKeyboardMouseShare$3;

    new-instance v3, Lcom/android/server/input/WirelessKeyboardMouseShare$4;

    invoke-direct {v3, p0}, Lcom/android/server/input/WirelessKeyboardMouseShare$4;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V

    iput-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mCallback:Lcom/android/server/input/WirelessKeyboardMouseShare$4;

    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    iput-object p4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    iput-object p3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToastDialog:Lcom/android/server/input/ToastDialog;

    const-string/jumbo p2, "WirelessKeyboardMouseShare"

    const-string/jumbo p3, "WirelessKeyboardMouseShare()"

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNextConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    new-instance p3, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x0

    iput p4, p3, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mConnectionState:I

    const-string/jumbo v4, "null"

    iput-object v4, p3, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToString:Ljava/lang/String;

    iput-object v4, p3, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mFocusedDeviceToString:Ljava/lang/String;

    iput-object v4, p3, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToStringList:Ljava/lang/String;

    const/4 v4, 0x1

    iput-boolean v4, p3, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mToLocalTablet:Z

    iput-boolean p4, p3, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mAppRegistered:Z

    iput-object p3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mStatusInfo:Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;

    iget-object p3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez p3, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    :cond_0
    invoke-static {v2, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInitialized:Z

    const-string/jumbo p0, "android.bluetooth.adapter.action.STATE_CHANGED"

    const-string/jumbo p3, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-static {p0, p3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p0

    invoke-virtual {p1, v1, p0, p2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final addDevice(I)Z
    .locals 5

    const-string/jumbo v0, "wrong index="

    const-string/jumbo v1, "not empty slot"

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-gt p1, v3, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    iput p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAddIndex:I

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WirelessKeyboardMouseShare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object p1, v1, p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    monitor-exit v2

    return v4

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->disconnectBTWithoutUnregister(Landroid/bluetooth/BluetoothDevice;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isRegistered()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->startHIDDevice()V

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mUnregisterWhenConnectionFail:Z

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput-boolean p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageMCF()V

    monitor-exit v2

    return p1

    :cond_5
    :goto_0
    const-string/jumbo p0, "WirelessKeyboardMouseShare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v4

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final changeHIDDevice(ILjava/lang/String;)V
    .locals 6

    const-string/jumbo v0, "not find device : "

    const-string/jumbo v1, "warning: request device : "

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->findBluetoothDeviceFromString(ILjava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->disconnectBTWithoutUnregister(Landroid/bluetooth/BluetoothDevice;)V

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    iput-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mUnregisterWhenConnectionFail:Z

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->removePairedDevicesListLocked(ILjava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    iput p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAddIndex:I

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageMCF()V

    goto :goto_1

    :cond_3
    const-string/jumbo p1, "WirelessKeyboardMouseShare"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " connected device : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit v2

    return-void

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    const-string/jumbo p1, "WirelessKeyboardMouseShare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p0, :cond_5

    const-string p0, ""

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :goto_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final connectByBtDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    if-nez p0, :cond_0

    const-string/jumbo p0, "WirelessKeyboardMouseShare"

    const-string/jumbo p1, "connectByBtDevice mHidDevice is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p0, "WirelessKeyboardMouseShare"

    const-string/jumbo p1, "connectByBtDevice BluetoothDevice is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHidDevice;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final disconnectBT(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mKeyboard:Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->clear(Z)V

    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mMouse:Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

    invoke-virtual {v1, v2}, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->clear(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHidDevice;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final disconnectBTWithoutUnregister(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mDisconnectWithoutUnregister:Z

    invoke-virtual {p0, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->disconnectBT(Landroid/bluetooth/BluetoothDevice;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final existBluetoothDeviceLocked(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final findBluetoothDeviceFromString(ILjava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 7

    const/4 v0, 0x3

    const/4 v1, 0x0

    const-string v2, " "

    const-string/jumbo v3, "wrong index="

    const-string/jumbo v4, "WirelessKeyboardMouseShare"

    if-gt p1, v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    const-string/jumbo p0, "find device slot["

    const-string/jumbo v1, "] =  "

    invoke-static {p1, p0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " requested device = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    const/4 v5, 0x4

    if-ge v0, v5, :cond_3

    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v5, v5, v0

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", but find device : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "not find device index="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_4
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final getDeviceListSize()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isRegistered()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isToLocalTablet()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final notifyKeyboardAciton(II)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    if-ltz p2, :cond_1

    const/16 v1, 0xe2

    if-gt p2, v1, :cond_1

    sget-object v1, Lcom/android/server/input/HidKeycodes;->ScancodeToHidKeycode:[B

    aget-byte p2, v1, p2

    goto :goto_0

    :cond_1
    const/16 v1, 0xfe

    if-eq p2, v1, :cond_7

    const/16 v1, 0x2bd

    if-eq p2, v1, :cond_6

    const/16 v1, 0x2c1

    if-eq p2, v1, :cond_5

    const/16 v1, 0x2c2

    if-eq p2, v1, :cond_4

    const/16 v1, 0x2c5

    if-eq p2, v1, :cond_3

    const/16 v1, 0x2c6

    if-eq p2, v1, :cond_2

    packed-switch p2, :pswitch_data_0

    move p2, v0

    goto :goto_0

    :pswitch_0
    const/16 p2, 0x79

    goto :goto_0

    :pswitch_1
    const/16 p2, 0x73

    goto :goto_0

    :pswitch_2
    const/16 p2, 0x72

    goto :goto_0

    :pswitch_3
    const/16 p2, 0x71

    goto :goto_0

    :cond_2
    const/16 p2, 0x6c

    goto :goto_0

    :cond_3
    const/16 p2, 0x70

    goto :goto_0

    :cond_4
    const/16 p2, 0x6a

    goto :goto_0

    :cond_5
    const/16 p2, 0x69

    goto :goto_0

    :cond_6
    const/16 p2, 0x6d

    goto :goto_0

    :cond_7
    const/16 p2, 0x68

    :goto_0
    const/4 v1, 0x1

    const-string/jumbo v2, "ignore nullpointer exception "

    const-string/jumbo v3, "WirelessKeyboardMouseShare"

    const/16 v4, 0x8

    const/16 v5, -0x9

    const/16 v6, -0x10

    const/4 v7, 0x2

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mKeyboard:Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget v8, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mConnectionState:I

    if-eq v8, v7, :cond_8

    goto/16 :goto_5

    :cond_8
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    if-lt p2, v6, :cond_9

    if-ge p2, v5, :cond_9

    aget-byte v4, p0, v0

    sub-int/2addr p2, v6

    shl-int p2, v1, p2

    or-int/2addr p2, v4

    int-to-byte p2, p2

    aput-byte p2, p0, v0

    goto :goto_2

    :cond_9
    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_b

    aget-byte v5, p0, v0

    if-nez v5, :cond_a

    aput-byte p2, p0, v0

    goto :goto_2

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    :goto_2
    invoke-static {p1, v1, p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[B)V

    :try_start_0
    iget-object p2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    iget-object p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, p1, v1, p0}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_c
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget v8, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mConnectionState:I

    if-eq v8, v7, :cond_d

    goto :goto_5

    :cond_d
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    if-lt p2, v6, :cond_e

    if-ge p2, v5, :cond_e

    aget-byte v4, p0, v0

    sub-int/2addr p2, v6

    shl-int p2, v1, p2

    not-int p2, p2

    and-int/2addr p2, v4

    int-to-byte p2, p2

    aput-byte p2, p0, v0

    goto :goto_4

    :cond_e
    move v5, v1

    :goto_3
    if-ge v5, v4, :cond_10

    aget-byte v6, p0, v5

    if-ne v6, p2, :cond_f

    aput-byte v0, p0, v5

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_10
    :goto_4
    invoke-static {p1, v1, p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[B)V

    :try_start_1
    iget-object p2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    iget-object p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, p1, v1, p0}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2f5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final notifyMouseAction(IFFI)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v1, "ignore nullpointer exception "

    const-string/jumbo v2, "WirelessKeyboardMouseShare"

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mMouse:Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_7

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_3

    const/16 p2, 0x8

    if-eq p1, p2, :cond_1

    goto/16 :goto_1

    :cond_1
    float-to-int p1, p3

    int-to-byte p1, p1

    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget p3, p2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mConnectionState:I

    if-eq p3, v3, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    aput-byte v0, p0, v4

    aput-byte v0, p0, v3

    const/4 p3, 0x3

    aput-byte p1, p0, p3

    invoke-static {p2, v3, p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[B)V

    :try_start_0
    iget-object p1, p2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    iget-object p2, p2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, p2, v3, p0}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    aput-byte v0, p0, p3

    goto :goto_1

    :cond_3
    float-to-int p1, p2

    int-to-byte p1, p1

    float-to-int p2, p3

    int-to-byte p2, p2

    iget-object p3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget p4, p3, Lcom/android/server/input/WirelessKeyboardMouseShare;->mConnectionState:I

    if-eq p4, v3, :cond_4

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    aput-byte p1, p0, v4

    aput-byte p2, p0, v3

    invoke-static {p3, v3, p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[B)V

    :try_start_1
    iget-object p1, p3, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    iget-object p2, p3, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, p2, v3, p0}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget p2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mConnectionState:I

    if-eq p2, v3, :cond_6

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    aget-byte p2, p0, v0

    not-int p3, p4

    and-int/2addr p2, p3

    int-to-byte p2, p2

    aput-byte p2, p0, v0

    aput-byte v0, p0, v4

    aput-byte v0, p0, v3

    invoke-static {p1, v3, p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[B)V

    :try_start_2
    iget-object p2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    iget-object p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, p1, v3, p0}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget p2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mConnectionState:I

    if-eq p2, v3, :cond_8

    goto :goto_1

    :cond_8
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    aget-byte p2, p0, v0

    or-int/2addr p2, p4

    int-to-byte p2, p2

    aput-byte p2, p0, v0

    aput-byte v0, p0, v4

    aput-byte v0, p0, v3

    invoke-static {p1, v3, p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[B)V

    :try_start_3
    iget-object p2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    iget-object p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, p1, v3, p0}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_1
    return-void
.end method

.method public final registerApp()V
    .locals 5

    const-string/jumbo v0, "registerApp(): mAppRegistered="

    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v2, "WirelessKeyboardMouseShare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mAdapter="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    const-string/jumbo v0, "NULL"

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo v0, "OK"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    if-nez v2, :cond_4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mServiceListener:Lcom/android/server/input/WirelessKeyboardMouseShare$3;

    const/16 v4, 0x13

    invoke-virtual {v0, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo p0, "WirelessKeyboardMouseShare"

    const-string v0, "Cannot obtain profile proxy"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    monitor-exit v1

    return-void

    :cond_4
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeHIDDevice(ILjava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "not find device : "

    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->findBluetoothDeviceFromString(ILjava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    const-string/jumbo p0, "WirelessKeyboardMouseShare"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->disconnectBT(Landroid/bluetooth/BluetoothDevice;)V

    :cond_1
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->removePairedDevicesListLocked(ILjava/lang/String;)V

    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removePairedDevicesListLocked(ILjava/lang/String;)V
    .locals 8

    const-string v0, "0 "

    const/4 v1, 0x3

    const-string/jumbo v2, "WirelessKeyboardMouseShare"

    if-gt p1, v1, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v1, v1, p1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aput-object v3, v4, p1

    const-string/jumbo v3, "remove device="

    const-string v4, ", requested_index "

    invoke-static {p1, v3, p2, v4, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    sget-boolean p2, Lcom/samsung/android/rune/InputRune;->IFW_WIRELESS_KEYBOARD_SA_LOGGING:Z

    if-eqz p2, :cond_1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->REG_ID:[Ljava/lang/String;

    add-int/lit8 v3, p1, -0x1

    aget-object p2, p2, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mLogInfos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->CONN_ID:[Ljava/lang/String;

    aget-object p2, p2, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mLogInfos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mLogInfos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "notifySALogging nullpointer exception "

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const-string v0, ""

    const/4 v1, 0x1

    move-object v5, v0

    move v4, v1

    :goto_0
    const/4 v6, 0x4

    if-ge v4, v6, :cond_6

    iget-object v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v6, v6, v4

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    move-object v6, v0

    :goto_1
    if-ne v4, v1, :cond_4

    move-object v5, v6

    goto :goto_2

    :cond_4
    const-string v7, ","

    invoke-static {v5, v7, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v0, "exist other slot["

    const-string/jumbo v1, "] requested_index="

    const-string v5, ", device="

    invoke-static {v4, p1, v0, v1, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p1, p2, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aput-object v3, p1, v4

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    return-void

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "fail to remove "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->getDeviceListSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    return-void

    :cond_7
    :goto_3
    const-string/jumbo p0, "cannot add list, index="

    invoke-static {p1, p0, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final sendMessageConnectDeviceLocked(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNextConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public final sendMessageMCF()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const/16 v2, 0x8

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final sendMessageStatus()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final sendReadyToConnectIntent()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.input.REMOTE_INPUT_READY_TO_CONNECT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    iget-boolean v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFinishNewDevice:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToastDialog:Lcom/android/server/input/ToastDialog;

    iget-object v3, v3, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    :goto_0
    const/4 v3, 0x0

    move v6, v3

    move v5, v4

    :goto_1
    const/4 v7, 0x4

    if-ge v5, v7, :cond_3

    iget-object v7, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v7, v7, v5

    const-string v8, ""

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    :cond_1
    if-ne v5, v4, :cond_2

    move-object v2, v8

    goto :goto_2

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iget-boolean v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    if-nez v5, :cond_4

    iput-boolean v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mReadyToConnect:Z

    goto :goto_3

    :cond_4
    const/4 v5, 0x3

    if-lt v6, v5, :cond_5

    iput-boolean v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mReadyToConnect:Z

    goto :goto_3

    :cond_5
    iput-boolean v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mReadyToConnect:Z

    :goto_3
    const-string/jumbo v4, "com.samsung.android.mcfds"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "ready"

    iget-boolean v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mReadyToConnect:Z

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "hostlist"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "finishNewDevice"

    iget-boolean v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFinishNewDevice:Z

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v1, "WirelessKeyboardMouseShare"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mReadyToConnect: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mReadyToConnect:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mFinishNewDevice: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFinishNewDevice:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFinishNewDevice:Z

    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final sendWirelessKeyboardShareStatus()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, ""

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    iget-object v5, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v5, v5, v4

    const-string v6, ""

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_14

    :cond_0
    :goto_1
    if-ne v4, v3, :cond_1

    move-object v2, v6

    goto :goto_2

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget v4, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mConnectionState:I

    iget-object v6, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v7, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isToLocalTablet()Z

    move-result v8

    iget-boolean v9, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    const-string/jumbo v10, "null"

    if-nez v6, :cond_3

    move-object v6, v10

    goto :goto_3

    :cond_3
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    :goto_3
    if-nez v7, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    :goto_4
    iget-object v7, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mStatusInfo:Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;

    iget v11, v7, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mConnectionState:I

    const/4 v12, 0x0

    if-eq v11, v4, :cond_5

    move v11, v3

    goto :goto_5

    :cond_5
    move v11, v12

    :goto_5
    iget-object v13, v7, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToString:Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    or-int/lit8 v11, v11, 0x2

    :cond_6
    iget-object v13, v7, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mFocusedDeviceToString:Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    or-int/lit8 v11, v11, 0x4

    :cond_7
    iget-object v13, v7, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToStringList:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    or-int/lit8 v11, v11, 0x8

    :cond_8
    iget-boolean v13, v7, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mToLocalTablet:Z

    if-eq v13, v8, :cond_9

    or-int/lit8 v11, v11, 0x10

    :cond_9
    iget-boolean v7, v7, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mAppRegistered:Z

    if-eq v7, v9, :cond_a

    or-int/lit8 v11, v11, 0x20

    :cond_a
    if-nez v11, :cond_b

    iget-boolean v7, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNotiTurnOnBT:Z

    if-nez v7, :cond_b

    iget-boolean v7, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    if-nez v7, :cond_b

    iget-boolean v7, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNotiTablet:Z

    if-eqz v7, :cond_25

    :cond_b
    and-int/lit8 v7, v11, 0x1

    const/4 v13, 0x2

    if-eqz v7, :cond_d

    iget-object v7, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget v14, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mConnectionState:I

    if-ne v14, v13, :cond_c

    const-string/jumbo v14, "true"

    goto :goto_6

    :cond_c
    const-string/jumbo v14, "false"

    :goto_6
    invoke-virtual {v7, v12, v14, v3}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    :cond_d
    and-int/lit8 v7, v11, 0x2

    if-eqz v7, :cond_f

    iget-object v14, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v15, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v15, :cond_e

    const-string v15, ""

    goto :goto_7

    :cond_e
    invoke-virtual {v15}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    :goto_7
    invoke-virtual {v14, v3, v15, v3}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    :cond_f
    and-int/lit8 v14, v11, 0x4

    if-eqz v14, :cond_11

    iget-object v14, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v15, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v15, :cond_10

    const-string v15, ""

    goto :goto_8

    :cond_10
    invoke-virtual {v15}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    :goto_8
    invoke-virtual {v14, v13, v15, v3}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    :cond_11
    and-int/lit8 v14, v11, 0x8

    const/4 v15, 0x3

    if-eqz v14, :cond_12

    iget-object v14, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v14, v15, v2, v3}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    :cond_12
    and-int/lit8 v14, v11, 0x10

    if-eqz v14, :cond_14

    iget-object v12, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isToLocalTablet()Z

    move-result v16

    if-eqz v16, :cond_13

    const-string/jumbo v16, "true"

    :goto_9
    move-object/from16 v15, v16

    goto :goto_a

    :cond_13
    const-string/jumbo v16, "false"

    goto :goto_9

    :goto_a
    invoke-virtual {v12, v5, v15, v3}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    :cond_14
    and-int/lit8 v5, v11, 0x20

    if-eqz v5, :cond_16

    iget-object v5, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-boolean v12, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    if-eqz v12, :cond_15

    const-string/jumbo v12, "true"

    goto :goto_b

    :cond_15
    const-string/jumbo v12, "false"

    :goto_b
    const/4 v15, 0x5

    invoke-virtual {v5, v15, v12, v3}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    :cond_16
    iget-boolean v5, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    if-eqz v5, :cond_18

    iget-object v12, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    if-eqz v5, :cond_17

    const-string/jumbo v5, "true"

    goto :goto_c

    :cond_17
    const-string/jumbo v5, "false"

    :goto_c
    const/4 v15, 0x7

    invoke-virtual {v12, v15, v5, v3}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    :cond_18
    iget-boolean v5, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNotiTablet:Z

    if-eqz v5, :cond_1a

    iget-object v12, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    if-eqz v5, :cond_19

    const-string/jumbo v5, "true"

    goto :goto_d

    :cond_19
    const-string/jumbo v5, "false"

    :goto_d
    const/16 v15, 0x8

    invoke-virtual {v12, v15, v5, v3}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    :cond_1a
    const v5, 0x1041141

    if-eqz v7, :cond_1c

    iget-object v7, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v7, :cond_1b

    iget-object v7, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v12, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v15, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mLatestConnectedName:Ljava/lang/String;

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v7, v5, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v12, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToastDialog:Lcom/android/server/input/ToastDialog;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v15

    iput-object v7, v15, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object v7, v12, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    invoke-virtual {v7, v13}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v7, v13, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_e

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_1b
    iget-object v7, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v12, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v15, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mLatestConnectedName:Ljava/lang/String;

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v12

    const v15, 0x1041142

    invoke-virtual {v7, v15, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v12, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToastDialog:Lcom/android/server/input/ToastDialog;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v15

    iput-object v7, v15, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object v7, v12, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    const/4 v12, 0x3

    invoke-virtual {v7, v12}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v7, v12, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_e

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0

    :cond_1c
    :goto_e
    if-nez v14, :cond_1d

    iget-boolean v7, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNotiTurnOnBT:Z

    if-eqz v7, :cond_1e

    :cond_1d
    invoke-virtual {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isToLocalTablet()Z

    move-result v7

    if-eqz v7, :cond_1e

    iget-object v7, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v12, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v14, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mTabletName:Ljava/lang/String;

    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v7, v5, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToastDialog:Lcom/android/server/input/ToastDialog;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v12

    iput-object v5, v12, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object v5, v7, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    invoke-virtual {v5, v13}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v5, v13, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_f

    :catchall_3
    move-exception v0

    :try_start_b
    monitor-exit v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v0

    :cond_1e
    :goto_f
    iget-boolean v5, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    if-eqz v5, :cond_22

    iget-object v5, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v7, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    iget-object v12, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mTabletName:Ljava/lang/String;

    monitor-exit v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v7

    const v12, 0x104113c

    invoke-virtual {v5, v12, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToastDialog:Lcom/android/server/input/ToastDialog;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v12

    iput-object v5, v12, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object v5, v7, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    invoke-virtual {v5, v3, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/32 v12, 0xea60

    invoke-virtual {v5, v7, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput-boolean v3, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mUnregisterWhenConnectionFail:Z

    iget-object v5, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const/16 v7, 0xb

    invoke-virtual {v5, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    iget-object v5, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1f
    iget-object v5, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    iget-object v7, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {v7, v5, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v5, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "SemContinuityService"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/continuity/SemContinuityManager;

    if-nez v5, :cond_20

    const-string/jumbo v3, "WirelessKeyboardMouseShare"

    const-string/jumbo v5, "SemContinuityManager is null"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_10

    :cond_20
    invoke-virtual {v5, v3}, Lcom/samsung/android/continuity/SemContinuityManager;->getNearbyDeviceCount(I)I

    move-result v3

    :goto_10
    iget-object v5, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x104113f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v3, :cond_21

    iget-object v3, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x1041140

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_11

    :cond_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v12, 0x104113d

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v12, 0x104113e

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_11
    iget-object v7, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToastDialog:Lcom/android/server/input/ToastDialog;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v12

    iput-object v5, v12, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object v3, v12, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v3, v7, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v3, v5, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_12

    :catchall_4
    move-exception v0

    :try_start_f
    monitor-exit v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    throw v0

    :cond_22
    :goto_12
    if-eqz v11, :cond_23

    iget-object v3, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mStatusInfo:Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v4, v3, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mConnectionState:I

    iput-object v6, v3, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToString:Ljava/lang/String;

    iput-object v10, v3, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mFocusedDeviceToString:Ljava/lang/String;

    iput-object v2, v3, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToStringList:Ljava/lang/String;

    iput-boolean v8, v3, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mToLocalTablet:Z

    iput-boolean v9, v3, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mAppRegistered:Z

    :cond_23
    iget-object v3, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_24

    const-string v3, ""

    goto :goto_13

    :cond_24
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    :goto_13
    const-string/jumbo v4, "WirelessKeyboardMouseShare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "List : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " p = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Noti = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNotiTurnOnBT:Z

    iput-boolean v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    iput-boolean v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNotiTablet:Z

    const-string/jumbo v0, "WirelessKeyboardMouseShare"

    const-string/jumbo v2, "sendWirelessKeyboardShareStatus"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    monitor-exit v1

    return-void

    :goto_14
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    throw v0
.end method

.method public final setHostRoleWirelessKeyboardShare()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->stopHIDDevice()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mUnregisterWhenConnectionFail:Z

    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    const-string/jumbo p0, "WirelessKeyboardMouseShare"

    const-string/jumbo v1, "setHostRoleWirelessKeyboardShare : -> Host role(tablet)"

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setPogoConnected(Z)V
    .locals 4

    const-string/jumbo v0, "setPogoConnected mPogoConnected : "

    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPogoConnected:Z

    if-eq v2, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPogoConnected:Z

    const-string/jumbo v2, "WirelessKeyboardMouseShare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPogoConnected:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->IFW_WIRELESS_KEYBOARD_SA_LOGGING:Z

    if-eqz v0, :cond_1

    const-string v0, "67260"

    if-eqz p1, :cond_0

    const-string v2, "1"

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string v2, "0"

    :goto_0
    invoke-static {v0, v2}, Lcom/samsung/android/core/CoreSaLogger;->logSettingStatusForBasic(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->stopHIDDevice()V

    :cond_2
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setToLocalTablet(Z)Z
    .locals 5

    const-string/jumbo v0, "last connected device is "

    const-string/jumbo v1, "not changed remote device : "

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    if-ne v3, p1, :cond_1

    const-string/jumbo p1, "WirelessKeyboardMouseShare"

    if-eqz v3, :cond_0

    const-string/jumbo v0, "local tablet"

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_0
    const-string/jumbo v0, "remote device"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    monitor-exit v2

    return p0

    :cond_1
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->existBluetoothDeviceLocked(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_2
    if-nez p1, :cond_6

    const-string/jumbo v1, "WirelessKeyboardMouseShare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_3

    const-string/jumbo v0, "null."

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ". but not exist"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->getDeviceListSize()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    :goto_2
    const/4 v0, 0x4

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    iput-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    const-string/jumbo v0, "WirelessKeyboardMouseShare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "last connected device must be slot["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "] "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iput-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    monitor-exit v2

    return v1

    :cond_6
    :goto_3
    if-eqz p1, :cond_7

    iput-boolean p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    :cond_7
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    if-eqz v0, :cond_9

    if-nez p1, :cond_8

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageConnectDeviceLocked(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_4

    :cond_8
    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->disconnectBT(Landroid/bluetooth/BluetoothDevice;)V

    :cond_9
    :goto_4
    const-string/jumbo v0, "WirelessKeyboardMouseShare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "try switch remote bt "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_a

    const-string/jumbo p1, "local tablet"

    goto :goto_5

    :cond_a
    const-string/jumbo p1, "remote device"

    :goto_5
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p1, :cond_b

    const-string/jumbo p1, "null"

    goto :goto_6

    :cond_b
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_6
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    monitor-exit v2

    return p0

    :goto_7
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final startHIDDevice()V
    .locals 5

    const-string/jumbo v0, "startHIDDevice mAppRegistered : "

    const-string/jumbo v1, "startHIDDevice mPogoConnected : "

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPogoConnected:Z

    if-nez v3, :cond_0

    const-string/jumbo v3, "WirelessKeyboardMouseShare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPogoConnected:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    :cond_1
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mTabletName:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->registerApp()V

    const-string/jumbo v1, "WirelessKeyboardMouseShare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final stopHIDDevice()V
    .locals 4

    const-string/jumbo v0, "stopHIDDevice mAppRegistered : "

    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->unregisterApp()V

    const-string/jumbo v2, "WirelessKeyboardMouseShare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final switchDevice(ILjava/lang/String;)Z
    .locals 9

    const-string/jumbo v0, "switchDevice : "

    const-string/jumbo v1, "not find device : "

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->findBluetoothDeviceFromString(ILjava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p1, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    iget-object v7, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo p0, "WirelessKeyboardMouseShare"

    const-string/jumbo p1, "switchDevice need to turn on bt."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v4

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    if-nez v3, :cond_2

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    const-string/jumbo p0, "WirelessKeyboardMouseShare"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v4

    :cond_2
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p2, :cond_3

    const-string/jumbo p2, "null"

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    if-nez v3, :cond_4

    const-string/jumbo v1, "null"

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    const-string/jumbo v7, "WirelessKeyboardMouseShare"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " index:"

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_7

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isRegistered()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->startHIDDevice()V

    :cond_5
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iput-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p1, :cond_6

    move v4, v5

    :cond_6
    iput-boolean v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    monitor-exit v2

    return v5

    :cond_7
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->disconnectBTWithoutUnregister(Landroid/bluetooth/BluetoothDevice;)V

    :cond_8
    if-nez v6, :cond_9

    invoke-virtual {p0, v3}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageConnectDeviceLocked(Landroid/bluetooth/BluetoothDevice;)V

    :cond_9
    if-nez v6, :cond_a

    iput-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    :cond_a
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p1, :cond_b

    move v4, v5

    :cond_b
    iput-boolean v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    monitor-exit v2

    return v5

    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final switchRemoteDeviceByKey(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const/16 v2, 0xb

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mUnregisterWhenConnectionFail:Z

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const-string/jumbo p0, "WirelessKeyboardMouseShare"

    const-string/jumbo p1, "switchRemoteDevice : -> Host role(tablet)"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    const-string/jumbo p1, "WirelessKeyboardMouseShare"

    const-string/jumbo v2, "startHIDDeviceByKey need to turn on bt."

    invoke-static {p1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedToTurnOnBT:Z

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :goto_1
    monitor-exit v0

    return v1

    :cond_2
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    new-instance v1, Lcom/android/server/input/WirelessKeyboardMouseShare$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/input/WirelessKeyboardMouseShare$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->setToLocalTablet(Z)Z

    move-result p0

    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unregisterApp()V
    .locals 4

    const-string/jumbo v0, "unregisterApp(): mAppRegistered="

    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v2, "WirelessKeyboardMouseShare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    if-nez v0, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHidDevice;->unregisterApp()Z

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    const/16 v3, 0x13

    invoke-virtual {v0, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateWirelessKeyboardShareStatus()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, ""

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v4, v4, v3

    const-string v5, ""

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_a

    :cond_0
    :goto_1
    if-ne v3, v2, :cond_1

    move-object v1, v5

    goto :goto_2

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mConnectionState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    const-string/jumbo v5, "true"

    goto :goto_3

    :cond_3
    const-string/jumbo v5, "false"

    :goto_3
    const/4 v7, 0x0

    invoke-virtual {v3, v7, v5, v7}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_4

    const-string v5, ""

    goto :goto_4

    :cond_4
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-virtual {v3, v2, v5, v7}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_5

    const-string v3, ""

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual {v2, v6, v3, v7}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1, v7}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isToLocalTablet()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "true"

    goto :goto_6

    :cond_6
    const-string/jumbo v2, "false"

    :goto_6
    invoke-virtual {v1, v4, v2, v7}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-boolean v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    if-eqz v2, :cond_7

    const-string/jumbo v2, "true"

    goto :goto_7

    :cond_7
    const-string/jumbo v2, "false"

    :goto_7
    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2, v7}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-boolean v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    if-eqz v2, :cond_8

    const-string/jumbo v2, "true"

    goto :goto_8

    :cond_8
    const-string/jumbo v2, "false"

    :goto_8
    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2, v7}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-boolean p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNotiTablet:Z

    if-eqz p0, :cond_9

    const-string/jumbo p0, "true"

    goto :goto_9

    :cond_9
    const-string/jumbo p0, "false"

    :goto_9
    const/16 v2, 0x8

    invoke-virtual {v1, v2, p0, v7}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    const-string/jumbo p0, "WirelessKeyboardMouseShare"

    const-string/jumbo v1, "updateWirelessKeyboardShareStatus"

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :goto_a
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
