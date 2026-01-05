.class public final Lcom/android/server/display/WifiDisplayMcfManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final mScanFilterData:[B

.field public static final mScanFilterDataMask:[B


# instance fields
.field public final mBleAdapterCallback:Lcom/android/server/display/WifiDisplayMcfManager$2;

.field public final mBleScanCallback:Lcom/android/server/display/WifiDisplayMcfManager$4;

.field public mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

.field public final mConnection:Lcom/android/server/display/WifiDisplayMcfManager$1;

.field public final mContext:Landroid/content/Context;

.field public mIsBounded:Z

.field public mIsIntentRegistered:Z

.field public mIsScanning:Z

.field public mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

.field public final mMcfAdapterListener:Lcom/android/server/display/WifiDisplayMcfManager$3;

.field public mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

.field public final mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

.field public final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field public final mReceiver:Lcom/android/server/display/WifiDisplayMcfManager$5;

.field public mService:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/display/WifiDisplayMcfManager;->mScanFilterData:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/display/WifiDisplayMcfManager;->mScanFilterDataMask:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x42t
        0x4t
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
        0x0t
        0x10t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x10t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/PersistentDataStore;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/display/WifiDisplayMcfManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayMcfManager$1;-><init>(Lcom/android/server/display/WifiDisplayMcfManager;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mConnection:Lcom/android/server/display/WifiDisplayMcfManager$1;

    new-instance v0, Lcom/android/server/display/WifiDisplayMcfManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayMcfManager$2;-><init>(Lcom/android/server/display/WifiDisplayMcfManager;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleAdapterCallback:Lcom/android/server/display/WifiDisplayMcfManager$2;

    new-instance v0, Lcom/android/server/display/WifiDisplayMcfManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayMcfManager$3;-><init>(Lcom/android/server/display/WifiDisplayMcfManager;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfAdapterListener:Lcom/android/server/display/WifiDisplayMcfManager$3;

    new-instance v0, Lcom/android/server/display/WifiDisplayMcfManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayMcfManager$4;-><init>(Lcom/android/server/display/WifiDisplayMcfManager;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanCallback:Lcom/android/server/display/WifiDisplayMcfManager$4;

    new-instance v0, Lcom/android/server/display/WifiDisplayMcfManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayMcfManager$5;-><init>(Lcom/android/server/display/WifiDisplayMcfManager;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mReceiver:Lcom/android/server/display/WifiDisplayMcfManager$5;

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;-><init>(Lcom/android/server/display/WifiDisplayMcfManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    iput-object p3, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    return-void
.end method


# virtual methods
.method public final bindMcfAdapter()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nearby_scanning_enabled"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "WifiDisplayMcfManager"

    const-string/jumbo v1, "bindMcfAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    if-nez v3, :cond_3

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfAdapterListener:Lcom/android/server/display/WifiDisplayMcfManager$3;

    invoke-static {v2, p0}, Lcom/samsung/android/mcf/McfAdapter;->bindService(Landroid/content/Context;Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsScanning:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanCallback:Lcom/android/server/display/WifiDisplayMcfManager$4;

    invoke-interface {v0, v1}, Lcom/samsung/android/mcf/ble/BleScanner;->stopScan(Lcom/samsung/android/mcf/ble/BleScanCallback;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    iput-boolean v2, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsScanning:Z

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->retryStartScanBleScanner()V

    return-void
.end method

.method public final getInitiatedMirroringUuid()Ljava/lang/String;
    .locals 4

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mInitiatedMirroringUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {}, Ljava/util/Base64;->getUrlEncoder()Ljava/util/Base64$Encoder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mInitiatedMirroringUuid:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    :cond_0
    return-object v0
.end method

.method public final initialize()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsIntentRegistered:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    const-string/jumbo v2, "com.samsung.android.nearbyscanning"

    invoke-static {v0, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mReceiver:Lcom/android/server/display/WifiDisplayMcfManager$5;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsIntentRegistered:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->bindMcfAdapter()V

    return-void
.end method

.method public final retryStartScanBleScanner()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsScanning:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public final tryStartScanBleScanner()V
    .locals 13

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/samsung/android/mcf/McfBleAdapter;->getBleScanner()Lcom/samsung/android/mcf/ble/BleScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    const-string/jumbo v1, "WifiDisplayMcfManager"

    if-eqz v0, :cond_2

    new-instance v0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->setTimeout(I)Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->build()Lcom/samsung/android/mcf/ble/BleScanSettings;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v5}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    iget-object v5, v5, Lcom/android/server/display/PersistentDataStore;->mRememberedInitiatedDevices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v2

    :goto_0
    if-ge v7, v6, :cond_0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "tryStartScanBleScanner : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    invoke-direct {v9}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;-><init>()V

    :try_start_0
    sget-object v10, Lcom/android/server/display/WifiDisplayMcfManager;->mScanFilterData:[B

    sget-object v11, Lcom/android/server/display/WifiDisplayMcfManager;->mScanFilterDataMask:[B

    const/16 v12, 0x75

    invoke-virtual {v9, v12, v10, v11}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setManufacturerData(I[B[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    invoke-virtual {v9, v8}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    invoke-virtual {v9}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->build()Lcom/samsung/android/mcf/ble/BleScanFilter;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "tryStartScanBleScanner failed : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanCallback:Lcom/android/server/display/WifiDisplayMcfManager$4;

    invoke-interface {v5, v3, v4, v0, v6}, Lcom/samsung/android/mcf/ble/BleScanner;->startScan(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;Lcom/samsung/android/mcf/ble/BleScanCallback;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsScanning:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tryStartScanBleScanner startScan, ret="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsScanning:Z

    invoke-static {v1, v0, v3}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsScanning:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    if-eqz v0, :cond_1

    invoke-interface {v0, v6}, Lcom/samsung/android/mcf/ble/BleScanner;->stopScan(Lcom/samsung/android/mcf/ble/BleScanCallback;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    iput-boolean v2, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsScanning:Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->retryStartScanBleScanner()V

    goto :goto_1

    :cond_2
    const-string p0, "BleScanner is Null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public final unbindBleAdvertiserService()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsBounded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mService:Landroid/os/Messenger;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v2, v3, v0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mConnection:Lcom/android/server/display/WifiDisplayMcfManager$1;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsBounded:Z

    :cond_0
    return-void
.end method

.method public final unbindMcfAdapter()V
    .locals 3

    const-string/jumbo v0, "WifiDisplayMcfManager"

    const-string/jumbo v1, "unbindMcfAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanCallback:Lcom/android/server/display/WifiDisplayMcfManager$4;

    invoke-interface {v0, v2}, Lcom/samsung/android/mcf/ble/BleScanner;->stopScan(Lcom/samsung/android/mcf/ble/BleScanCallback;)Z

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsScanning:Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/mcf/McfBleAdapter;->close()V

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/mcf/McfAdapter;->unbindService()Z

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    :cond_2
    return-void
.end method
