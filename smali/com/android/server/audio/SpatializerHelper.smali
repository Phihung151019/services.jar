.class public final Lcom/android/server/audio/SpatializerHelper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

.field public static final DEFAULT_FORMAT:Landroid/media/AudioFormat;

.field public static final SPAT_MODE_FOR_DEVICE_TYPE:Lcom/android/server/audio/SpatializerHelper$1;

.field public static sRoutingDevices:Ljava/util/ArrayList;


# instance fields
.field public final mASA:Lcom/android/server/audio/AudioSystemAdapter;

.field public mActualHeadTrackingMode:I

.field public final mAudioService:Lcom/android/server/audio/AudioService;

.field mBinauralEnabledDefault:Z

.field public mBinauralSupported:Z

.field public mCapableSpatLevel:I

.field public mDesiredHeadTrackingMode:I

.field public mDesiredHeadTrackingModeWhenEnabled:I

.field public final mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

.field public mDynSensorCallback:Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;

.field public mFeatureEnabled:Z

.field public mGlobalHeadTrackerAvailable:Z

.field public final mHeadPoseCallbacks:Landroid/os/RemoteCallbackList;

.field public mHeadTrackerAvailable:Z

.field public final mHeadTrackerCallbacks:Landroid/os/RemoteCallbackList;

.field mHeadTrackingEnabledDefault:Z

.field public final mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

.field public mIsHeadTrackingSupported:Z

.field public final mOutputCallbacks:Landroid/os/RemoteCallbackList;

.field public final mSACapableDeviceTypes:Ljava/util/ArrayList;

.field public mSecHeadTrackerAvailable:Z

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public mSpat:Landroid/media/ISpatializer;

.field public final mSpatHeadTrackingCallback:Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;

.field public mSpatLevel:I

.field public mSpatOutput:I

.field public mSpatializedChannelMasks:Ljava/util/List;

.field public mState:I

.field public final mStateCallbacks:Landroid/os/RemoteCallbackList;

.field public mSupportedHeadTrackingModes:[I

.field mTransauralEnabledDefault:Z

.field public mTransauralSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/audio/SpatializerHelper$1;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v3, 0x18

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v3, 0xd

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v3, 0x16

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v3, 0x13

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v3, 0x1a

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v3, 0x1b

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v3, 0x1e

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    sput-object v0, Lcom/android/server/audio/SpatializerHelper;->SPAT_MODE_FOR_DEVICE_TYPE:Lcom/android/server/audio/SpatializerHelper$1;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/SpatializerHelper;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    const v1, 0xbb80

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    const/16 v1, 0xfc

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/SpatializerHelper;->DEFAULT_FORMAT:Landroid/media/AudioFormat;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/server/audio/SpatializerHelper;->sRoutingDevices:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioSystemAdapter;Lcom/android/server/audio/AudioDeviceBroker;ZZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mFeatureEnabled:Z

    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatLevel:I

    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatializedChannelMasks:Ljava/util/List;

    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSupportedHeadTrackingModes:[I

    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z

    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingModeWhenEnabled:I

    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatOutput:I

    new-instance v1, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;

    invoke-direct {v1, p0}, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;-><init>(Lcom/android/server/audio/SpatializerHelper;)V

    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatHeadTrackingCallback:Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSACapableDeviceTypes:Ljava/util/ArrayList;

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadPoseCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mOutputCallbacks:Landroid/os/RemoteCallbackList;

    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSecHeadTrackerAvailable:Z

    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mGlobalHeadTrackerAvailable:Z

    iput-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    iput-object p2, p0, Lcom/android/server/audio/SpatializerHelper;->mASA:Lcom/android/server/audio/AudioSystemAdapter;

    iput-object p3, p0, Lcom/android/server/audio/SpatializerHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iput-boolean p4, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralEnabledDefault:Z

    iput-boolean p5, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralEnabledDefault:Z

    iput-boolean p6, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingEnabledDefault:Z

    return-void
.end method

.method public static getCanonicalDeviceType(II)I
    .locals 1

    invoke-static {p1}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return p0

    :cond_0
    sget-object p1, Lcom/android/server/audio/SpatializerHelper;->SPAT_MODE_FOR_DEVICE_TYPE:Lcom/android/server/audio/SpatializerHelper$1;

    const/high16 v0, -0x80000000

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    if-nez p0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static headTrackingModeTypeToSpatializerInt(B)I
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unexpected head tracking mode:"

    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v0

    :cond_2
    const/4 p0, -0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static logDeviceState(Lcom/android/server/audio/AdiDeviceState;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/audio/AdiDeviceState;->getDeviceType()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/media/MediaMetrics$Item;

    const-string/jumbo v2, "audio.spatializer.device."

    invoke-static {v2, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    invoke-virtual {p0}, Lcom/android/server/audio/AdiDeviceState;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->ENABLED:Landroid/media/MediaMetrics$Key;

    invoke-virtual {p0}, Lcom/android/server/audio/AdiDeviceState;->isSAEnabled()Z

    move-result v2

    const-string/jumbo v3, "false"

    const-string/jumbo v4, "true"

    if-eqz v2, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p1

    sget-object v0, Landroid/media/MediaMetrics$Property;->HAS_HEAD_TRACKER:Landroid/media/MediaMetrics$Key;

    invoke-virtual {p0}, Lcom/android/server/audio/AdiDeviceState;->hasHeadTracker()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v4

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p1

    sget-object v0, Landroid/media/MediaMetrics$Property;->HEAD_TRACKER_ENABLED:Landroid/media/MediaMetrics$Key;

    invoke-virtual {p0}, Lcom/android/server/audio/AdiDeviceState;->isHeadTrackerEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    move-object v3, v4

    :cond_2
    invoke-virtual {p1, v0, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void
.end method

.method public static logloge(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/server/audio/AudioService;->sSpatialLogger:Lcom/android/server/utils/EventLogger;

    const/4 v1, 0x1

    const-string v2, "AS.SpatializerHelper"

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/utils/EventLogger;->enqueueAndLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static loglogi(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/server/audio/AudioService;->sSpatialLogger:Lcom/android/server/utils/EventLogger;

    const/4 v1, 0x0

    const-string v2, "AS.SpatializerHelper"

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/utils/EventLogger;->enqueueAndLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static spatStateString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const-string/jumbo p0, "invalid state"

    return-object p0

    :cond_0
    const-string/jumbo p0, "STATE_DISABLED_AVAILABLE"

    return-object p0

    :cond_1
    const-string/jumbo p0, "STATE_ENABLED_AVAILABLE"

    return-object p0

    :cond_2
    const-string/jumbo p0, "STATE_ENABLED_UNAVAILABLE"

    return-object p0

    :cond_3
    const-string/jumbo p0, "STATE_DISABLED_UNAVAILABLE"

    return-object p0

    :cond_4
    const-string/jumbo p0, "STATE_NOT_SUPPORTED"

    return-object p0

    :cond_5
    const-string/jumbo p0, "STATE_UNINITIALIZED"

    return-object p0
.end method


# virtual methods
.method public final addCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;ZZ)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->isDeviceCompatibleWithSpatializationModes(Landroid/media/AudioDeviceAttributes;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "addCompatibleAudioDevice: dev="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findSACompatibleDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AdiDeviceState;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    if-eqz v0, :cond_3

    if-eqz p3, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->initSAState(Lcom/android/server/audio/AdiDeviceState;)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/android/server/audio/AdiDeviceState;->isSAEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AdiDeviceState;->setSAEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p2

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/server/audio/SpatializerHelper;->getCanonicalDeviceType(II)I

    move-result p2

    if-nez p2, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "addCompatibleAudioDevice with incompatible AudioDeviceAttributes "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AS.SpatializerHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    new-instance v0, Lcom/android/server/audio/AdiDeviceState;

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result p3

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p3, p1}, Lcom/android/server/audio/AdiDeviceState;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->initSAState(Lcom/android/server/audio/AdiDeviceState;)V

    iget-object p1, v2, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->addOrUpdateDeviceSAStateInInventory(Lcom/android/server/audio/AdiDeviceState;Z)V

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->onRoutingUpdated()V

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->postPersistAudioDeviceSettings()V

    const-string/jumbo p0, "addCompatibleAudioDevice"

    invoke-static {v0, p0}, Lcom/android/server/audio/SpatializerHelper;->logDeviceState(Lcom/android/server/audio/AdiDeviceState;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final declared-synchronized addWirelessDeviceIfNew(Landroid/media/AudioDeviceAttributes;)V
    .locals 3

    const-string/jumbo v0, "addWirelessDeviceIfNew with incompatible AudioDeviceAttributes "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->isDeviceCompatibleWithSpatializationModes(Landroid/media/AudioDeviceAttributes;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findSACompatibleDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AdiDeviceState;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/audio/SpatializerHelper;->getCanonicalDeviceType(II)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "AS.SpatializerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v0, Lcom/android/server/audio/AdiDeviceState;

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/server/audio/AdiDeviceState;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->initSAState(Lcom/android/server/audio/AdiDeviceState;)V

    iget-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->addOrUpdateDeviceSAStateInInventory(Lcom/android/server/audio/AdiDeviceState;Z)V

    iget-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->postPersistAudioDeviceSettings()V

    const-string/jumbo p1, "addWirelessDeviceIfNew"

    invoke-static {v0, p1}, Lcom/android/server/audio/SpatializerHelper;->logDeviceState(Lcom/android/server/audio/AdiDeviceState;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized canBeSpatializedOnDevice(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;Ljava/util/ArrayList;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->isDeviceCompatibleWithSpatializationModes(Landroid/media/AudioDeviceAttributes;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/media/AudioDeviceAttributes;

    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;[Landroid/media/AudioDeviceAttributes;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return v1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final checkSpatializer(Ljava/lang/String;)Z
    .locals 9

    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    if-nez v0, :cond_1

    const-string/jumbo v0, "checkSpatializer(): called from "

    const-string v2, "(), native spatializer should not be null in state: "

    invoke-static {v0, p1, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AS.SpatializerHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const-string v7, "AS.AudioService"

    const/4 v8, 0x0

    const/16 v3, 0x32

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return v1

    :cond_1
    :goto_0
    return v2

    :cond_2
    return v1
.end method

.method public final createSpat()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;

    invoke-direct {v0, p0}, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;-><init>(Lcom/android/server/audio/SpatializerHelper;)V

    invoke-static {v0}, Landroid/media/AudioSystem;->getSpatializer(Landroid/media/INativeSpatializerCallback;)Landroid/media/ISpatializer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    const-string v1, "AS.SpatializerHelper"

    if-nez v0, :cond_0

    const-string/jumbo v0, "createSpat(): No Spatializer found"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const-string v5, "AS.AudioService"

    const/4 v6, 0x0

    const/16 v1, 0x32

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0}, Landroid/media/ISpatializer;->getSpatializedChannelMasks()[I

    move-result-object v0

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    aget v4, v0, v3

    invoke-static {v4}, Landroid/media/AudioFormat;->convertNativeChannelMaskToOutMask(I)I

    move-result v4

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatializedChannelMasks:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v3, "Error calling getSpatializedChannelMasks"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatializedChannelMasks:Ljava/util/List;

    :goto_2
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v0}, Landroid/media/ISpatializer;->getActualHeadTrackingMode()B

    move-result v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->headTrackingModeTypeToSpatializerInt(B)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    iget-object v3, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatHeadTrackingCallback:Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;

    invoke-interface {v0, v3}, Landroid/media/ISpatializer;->registerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v3, "Can\'t configure head tracking"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    iput v2, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    :cond_2
    :goto_3
    return-void
.end method

.method public final dispatchDesiredHeadTrackingMode(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/ISpatializerHeadTrackingModeCallback;

    invoke-interface {v2, p1}, Landroid/media/ISpatializerHeadTrackingModeCallback;->dispatchSpatializerDesiredHeadTrackingModeChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error in dispatchSpatializerDesiredHeadTrackingModeChanged("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS.SpatializerHelper"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final dispatchHeadTrackerAvailable(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/ISpatializerHeadTrackerAvailableCallback;

    invoke-interface {v2, p1}, Landroid/media/ISpatializerHeadTrackerAvailableCallback;->dispatchSpatializerHeadTrackerAvailable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error in dispatchSpatializerHeadTrackerAvailable("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS.SpatializerHelper"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 6

    const-string/jumbo v0, "SpatializerHelper:"

    const-string v1, "\tmState:"

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    const-string v2, "\tmSpatLevel:"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatLevel:I

    const-string v2, "\tmCapableSpatLevel:"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatializedChannelMasks:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "none"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, " "

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/media/AudioFormat;->javaChannelOutMaskToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\tspatialized speaker masks: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\tmIsHeadTrackingSupported:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSupportedHeadTrackingModes:[I

    array-length v2, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_2

    aget v5, v1, v4

    invoke-static {v5}, Landroid/media/Spatializer;->headtrackingModeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tsupported head tracking modes:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\tmDesiredHeadTrackingMode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    invoke-static {v1}, Landroid/media/Spatializer;->headtrackingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\tmActualHeadTrackingMode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    invoke-static {v1}, Landroid/media/Spatializer;->headtrackingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\theadtracker available:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z

    const-string v2, "\tsec headtracker available:"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSecHeadTrackerAvailable:Z

    const-string v2, "\tglobal headtracker available:"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mGlobalHeadTrackerAvailable:Z

    const-string v2, "\tsupports binaural:"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / transaural:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    const-string v2, "\tmSpatOutput:"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatOutput:I

    const-string v2, "\thas FEATURE_AUDIO_SPATIAL_HEADTRACKING_LOW_LATENCY:"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string/jumbo v1, "android.hardware.audio.spatial.headtracking.low_latency"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized evaluateState(Landroid/media/AudioDeviceAttributes;)Landroid/util/Pair;
    .locals 6

    const-string/jumbo v0, "no spatialization device state found for Spatial Audio device:"

    const-string/jumbo v1, "no spatialization mode found for device type:"

    const-string v2, "Device incompatible with Spatial Audio dev:"

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/audio/SpatializerHelper;->mSACapableDeviceTypes:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v0, "AS.SpatializerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/server/audio/SpatializerHelper;->SPAT_MODE_FOR_DEVICE_TYPE:Lcom/android/server/audio/SpatializerHelper$1;

    const/high16 v4, -0x80000000

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne v2, v4, :cond_1

    const-string p1, "AS.SpatializerHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findSACompatibleDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AdiDeviceState;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "AS.SpatializerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_3
    invoke-static {v3}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    invoke-virtual {v1}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result p1

    const/4 v4, 0x3

    if-ne p1, v4, :cond_3

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    :goto_0
    if-nez v2, :cond_3

    iget-boolean p1, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    if-eqz p1, :cond_3

    :cond_5
    :goto_1
    new-instance p1, Landroid/util/Pair;

    invoke-virtual {v1}, Lcom/android/server/audio/AdiDeviceState;->isSAEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final findSACompatibleDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AdiDeviceState;
    .locals 8

    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/audio/SpatializerHelper;->getCanonicalDeviceType(II)I

    move-result v1

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v2

    invoke-static {v2}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    move-result v2

    iget-object v3, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AdiDeviceState;

    invoke-virtual {v4}, Lcom/android/server/audio/AdiDeviceState;->getDeviceType()I

    move-result v6

    if-ne v6, v1, :cond_0

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/audio/AdiDeviceState;->getDeviceAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    monitor-exit v3

    goto :goto_1

    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v5

    :goto_1
    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/server/audio/SpatializerHelper;->isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z

    move-result p0

    if-nez p0, :cond_4

    :goto_2
    return-object v5

    :cond_4
    return-object v4

    :goto_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getHeadSensorHandleUpdateTracker()I
    .locals 17

    move-object/from16 v1, p0

    const/4 v0, 0x1

    sget-object v2, Lcom/android/server/audio/SpatializerHelper;->sRoutingDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    const-string/jumbo v0, "getHeadSensorHandleUpdateTracker: no device, no head tracker"

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)V

    return v3

    :cond_0
    sget-object v2, Lcom/android/server/audio/SpatializerHelper;->sRoutingDevices:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    iget-object v5, v1, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v5, v5, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v6, v5, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v5, v5, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v5, v2}, Lcom/android/server/audio/AudioDeviceInventory;->getDeviceIdentityAddresses(Landroid/media/AudioDeviceAttributes;)Ljava/util/List;

    move-result-object v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v6, v1, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v7, 0x25

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->getDynamicSensorList(I)Ljava/util/List;

    move-result-object v6

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    move v10, v4

    :cond_1
    move-object v9, v8

    :cond_2
    if-ge v10, v7, :cond_e

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/2addr v10, v0

    check-cast v11, Ljava/lang/String;

    new-instance v12, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v13

    invoke-direct {v12, v13, v11}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    sget-object v11, Lcom/android/server/audio/UuidUtils;->STANDALONE_UUID:Ljava/util/UUID;

    invoke-virtual {v12}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v11

    invoke-static {v11}, Landroid/media/AudioSystem;->isBluetoothA2dpOutDevice(I)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v12}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v11

    invoke-static {v11}, Landroid/media/AudioSystem;->isBluetoothLeOutDevice(I)Z

    move-result v11

    if-nez v11, :cond_3

    :catch_0
    :goto_0
    move-object v13, v8

    goto :goto_1

    :cond_3
    invoke-virtual {v12}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v11

    const-string v12, ":"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0xc

    if-eq v12, v13, :cond_4

    goto :goto_0

    :cond_4
    const-string v12, "0x"

    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :try_start_1
    invoke-static {v11}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/high16 v13, 0x4254000000000000L    # 3.4359738368E11

    or-long/2addr v11, v13

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "uuidFromAudioDeviceAttributes lsb: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v12}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "AudioService.UuidUtils"

    invoke-static {v14, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Ljava/util/UUID;

    const-wide/16 v14, 0x0

    invoke-direct {v13, v14, v15, v11, v12}, Ljava/util/UUID;-><init>(JJ)V

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/Sensor;

    invoke-virtual {v12}, Landroid/hardware/Sensor;->getUuid()Ljava/util/UUID;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v12}, Landroid/hardware/Sensor;->getVersion()I

    move-result v9

    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v15

    invoke-static {v15}, Landroid/media/AudioSystem;->isBluetoothLeDevice(I)Z

    move-result v15

    const/high16 v16, -0x1000000

    if-eqz v15, :cond_6

    and-int v9, v9, v16

    shr-int/lit8 v9, v9, 0x18

    const/4 v15, 0x2

    if-ne v9, v15, :cond_7

    goto :goto_3

    :cond_6
    and-int v9, v9, v16

    shr-int/lit8 v9, v9, 0x18

    if-ne v9, v0, :cond_7

    :goto_3
    move-object v9, v12

    goto :goto_4

    :cond_7
    move-object v9, v12

    :cond_8
    if-nez v9, :cond_5

    sget-object v15, Lcom/android/server/audio/UuidUtils;->STANDALONE_UUID:Ljava/util/UUID;

    invoke-virtual {v14, v15}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    move-object v9, v12

    goto :goto_2

    :cond_9
    :goto_4
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/hardware/Sensor;->getUuid()Ljava/util/UUID;

    move-result-object v11

    sget-object v12, Lcom/android/server/audio/UuidUtils;->STANDALONE_UUID:Ljava/util/UUID;

    invoke-virtual {v11, v12}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    goto :goto_8

    :cond_a
    const-string/jumbo v11, "setHasHeadTracker: device not found for:"

    monitor-enter p0

    :try_start_2
    iget-boolean v12, v1, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    if-nez v12, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    :goto_5
    move v11, v4

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_b
    :try_start_3
    invoke-virtual {v1, v2}, Lcom/android/server/audio/SpatializerHelper;->findSACompatibleDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AdiDeviceState;

    move-result-object v12

    if-eqz v12, :cond_d

    invoke-virtual {v12}, Lcom/android/server/audio/AdiDeviceState;->hasHeadTracker()Z

    move-result v11

    if-nez v11, :cond_c

    invoke-virtual {v12, v0}, Lcom/android/server/audio/AdiDeviceState;->setHasHeadTracker(Z)V

    iget-object v11, v1, Lcom/android/server/audio/SpatializerHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v11}, Lcom/android/server/audio/AudioDeviceBroker;->postPersistAudioDeviceSettings()V

    const-string/jumbo v11, "setHasHeadTracker"

    invoke-static {v12, v11}, Lcom/android/server/audio/SpatializerHelper;->logDeviceState(Lcom/android/server/audio/AdiDeviceState;Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v12}, Lcom/android/server/audio/AdiDeviceState;->isHeadTrackerEnabled()Z

    move-result v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    goto :goto_6

    :cond_d
    :try_start_4
    const-string v12, "AS.SpatializerHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    goto :goto_5

    :goto_6
    if-eqz v11, :cond_1

    goto :goto_8

    :goto_7
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :cond_e
    :goto_8
    if-eqz v9, :cond_f

    invoke-virtual {v9}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    :cond_f
    return v3

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method public final getRoutingDevices(Landroid/media/AudioAttributes;)Ljava/util/ArrayList;
    .locals 3

    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mASA:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioSystemAdapter;->getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v1, v0

    :cond_0
    if-ge v1, p1, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    if-nez v2, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    return-object p0
.end method

.method public final declared-synchronized init(Z)V
    .locals 12

    const-string/jumbo v0, "init() called in state "

    const-string/jumbo v1, "init effectExpected="

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const-string/jumbo p1, "init(): setting state to STATE_NOT_SUPPORTED due to effect not expected"

    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_e

    :cond_0
    :try_start_1
    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    if-nez p1, :cond_16

    new-instance p1, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;

    invoke-direct {p1, p0}, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;-><init>(Lcom/android/server/audio/SpatializerHelper;)V

    invoke-static {p1}, Landroid/media/AudioSystem;->getSpatializer(Landroid/media/INativeSpatializerCallback;)Landroid/media/ISpatializer;

    move-result-object p1

    if-nez p1, :cond_1

    const-string/jumbo p1, "init(): No Spatializer found"

    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mSupportedHeadTrackingModes:[I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x3

    :try_start_3
    invoke-interface {p1}, Landroid/media/ISpatializer;->getSupportedLevels()[B

    move-result-object v3

    if-eqz v3, :cond_14

    array-length v4, v3

    if-eqz v4, :cond_14

    array-length v4, v3

    if-ne v4, v1, :cond_2

    aget-byte v4, v3, v0

    if-nez v4, :cond_2

    goto/16 :goto_b

    :catchall_1
    move-exception v0

    goto/16 :goto_d

    :cond_2
    array-length v4, v3

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-byte v6, v3, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "init(): found support for level: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    if-ne v6, v1, :cond_3

    const-string/jumbo v3, "init(): setting capable level to LEVEL_MULTICHANNEL"

    invoke-static {v3}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    iput v6, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    invoke-interface {p1}, Landroid/media/ISpatializer;->isHeadTrackingSupported()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_9

    invoke-interface {p1}, Landroid/media/ISpatializer;->getSupportedHeadTrackingModes()[B

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v6, v3

    move v7, v0

    :goto_2
    if-ge v7, v6, :cond_7

    aget-byte v8, v3, v7

    if-eqz v8, :cond_6

    if-eq v8, v1, :cond_6

    if-eq v8, v4, :cond_5

    if-eq v8, v2, :cond_5

    const-string v9, "AS.SpatializerHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unexpected head tracking mode:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "invalid mode"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_5
    invoke-static {v8}, Lcom/android/server/audio/SpatializerHelper;->headTrackingModeTypeToSpatializerInt(B)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/server/audio/SpatializerHelper;->mSupportedHeadTrackingModes:[I

    move v3, v0

    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_8

    iget-object v6, p0, Lcom/android/server/audio/SpatializerHelper;->mSupportedHeadTrackingModes:[I

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    invoke-interface {p1}, Landroid/media/ISpatializer;->getActualHeadTrackingMode()B

    move-result v3

    invoke-static {v3}, Lcom/android/server/audio/SpatializerHelper;->headTrackingModeTypeToSpatializerInt(B)I

    move-result v3

    iput v3, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    goto :goto_5

    :cond_9
    const/4 v3, -0x2

    iput v3, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingModeWhenEnabled:I

    iput v3, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    :goto_5
    invoke-interface {p1}, Landroid/media/ISpatializer;->getSupportedModes()[B

    move-result-object v3

    array-length v5, v3

    move v6, v0

    :goto_6
    if-ge v6, v5, :cond_c

    aget-byte v7, v3, v6

    if-eqz v7, :cond_b

    if-eq v7, v1, :cond_a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "init(): Spatializer reports unknown supported mode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    iput-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    goto :goto_7

    :cond_b
    iput-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_c
    iget-boolean v3, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    if-nez v3, :cond_d

    iget-boolean v3, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    if-nez v3, :cond_d

    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {p1}, Landroid/media/ISpatializer;->release()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    monitor-exit p0

    return-void

    :cond_d
    move v3, v0

    :goto_8
    :try_start_5
    sget-object v5, Lcom/android/server/audio/SpatializerHelper;->SPAT_MODE_FOR_DEVICE_TYPE:Lcom/android/server/audio/SpatializerHelper$1;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_11

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    if-nez v6, :cond_e

    iget-boolean v7, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    if-nez v7, :cond_f

    :cond_e
    if-ne v6, v1, :cond_10

    iget-boolean v6, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    if-eqz v6, :cond_10

    :cond_f
    iget-object v6, p0, Lcom/android/server/audio/SpatializerHelper;->mSACapableDeviceTypes:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_11
    iget-object v3, p0, Lcom/android/server/audio/SpatializerHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceBroker;->getImmutableDeviceInventory()Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v0

    :cond_12
    :goto_9
    if-ge v6, v5, :cond_13

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/audio/AdiDeviceState;

    invoke-virtual {p0, v7}, Lcom/android/server/audio/SpatializerHelper;->isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z

    move-result v8

    if-eqz v8, :cond_12

    const-string/jumbo v8, "setSADeviceSettings"

    invoke-static {v7, v8}, Lcom/android/server/audio/SpatializerHelper;->logDeviceState(Lcom/android/server/audio/AdiDeviceState;Ljava/lang/String;)V

    goto :goto_9

    :cond_13
    new-instance v3, Landroid/media/AudioDeviceAttributes;

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v3, v0, v0}, Lcom/android/server/audio/SpatializerHelper;->addCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;ZZ)V

    new-instance v3, Landroid/media/AudioDeviceAttributes;

    const-string v4, ""

    const/16 v5, 0x8

    invoke-direct {v3, v5, v4}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v3, v0, v0}, Lcom/android/server/audio/SpatializerHelper;->addCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;ZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_a
    :try_start_6
    invoke-interface {p1}, Landroid/media/ISpatializer;->release()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_c

    :cond_14
    :goto_b
    :try_start_7
    const-string/jumbo v3, "init(): found Spatializer is useless"

    invoke-static {v3}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)V

    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-interface {p1}, Landroid/media/ISpatializer;->release()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_1
    monitor-exit p0

    return-void

    :catch_2
    :try_start_9
    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSupportedHeadTrackingModes:[I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_a

    :catch_3
    :goto_c
    :try_start_a
    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mCapableSpatLevel:I

    if-nez p1, :cond_15

    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-void

    :cond_15
    :try_start_b
    iput v2, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    sget-object p1, Lcom/android/server/audio/SpatializerHelper;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->getRoutingDevices(Landroid/media/AudioAttributes;)Ljava/util/ArrayList;

    move-result-object p1

    sput-object p1, Lcom/android/server/audio/SpatializerHelper;->sRoutingDevices:Ljava/util/ArrayList;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    return-void

    :goto_d
    :try_start_c
    invoke-interface {p1}, Landroid/media/ISpatializer;->release()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :catch_4
    :try_start_d
    throw v0

    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_e
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    throw p1
.end method

.method public final initSAState(Lcom/android/server/audio/AdiDeviceState;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getDeviceType()I

    move-result v0

    const/high16 v1, -0x80000000

    sget-object v2, Lcom/android/server/audio/SpatializerHelper;->SPAT_MODE_FOR_DEVICE_TYPE:Lcom/android/server/audio/SpatializerHelper$1;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralEnabledDefault:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralEnabledDefault:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/server/audio/AdiDeviceState;->setSAEnabled(Z)V

    iget-boolean p0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingEnabledDefault:Z

    invoke-virtual {p1, p0}, Lcom/android/server/audio/AdiDeviceState;->setHeadTrackerEnabled(Z)V

    return-void
.end method

.method public final isDeviceCompatibleWithSpatializationModes(Landroid/media/AudioDeviceAttributes;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p1

    const/4 v0, -0x1

    sget-object v1, Lcom/android/server/audio/SpatializerHelper;->SPAT_MODE_FOR_DEVICE_TYPE:Lcom/android/server/audio/SpatializerHelper$1;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    int-to-byte p1, p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mBinauralSupported:Z

    if-nez v1, :cond_1

    :cond_0
    if-ne p1, v0, :cond_2

    iget-boolean p0, p0, Lcom/android/server/audio/SpatializerHelper;->mTransauralSupported:Z

    if-eqz p0, :cond_2

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getDeviceType()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getDeviceType()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getInternalDeviceType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/audio/SpatializerHelper;->getCanonicalDeviceType(II)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceAttributes()Landroid/media/AudioDeviceAttributes;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->isDeviceCompatibleWithSpatializationModes(Landroid/media/AudioDeviceAttributes;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized onInitSensors()V
    .locals 13

    const-string v0, "Error calling setHeadSensor:"

    const-string/jumbo v1, "setHeadSensor:"

    const-string v2, "Error calling setScreenSensor:"

    const-string/jumbo v3, "setScreenSensor:"

    const-string/jumbo v4, "found screen sensor handle initialized to "

    const-string/jumbo v5, "head tracker sensor handle initialized to "

    const-string/jumbo v6, "not "

    const-string/jumbo v7, "not "

    monitor-enter p0

    :try_start_0
    iget-boolean v8, p0, Lcom/android/server/audio/SpatializerHelper;->mFeatureEnabled:Z

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatLevel:I

    if-eqz v8, :cond_0

    move v8, v10

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_0
    move v8, v9

    :goto_0
    if-eqz v8, :cond_1

    const-string/jumbo v11, "initializing"

    goto :goto_1

    :cond_1
    const-string/jumbo v11, "releasing"

    :goto_1
    iget-object v12, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    if-nez v12, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sensors, null spatializer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-boolean v7, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    if-nez v7, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sensors, spatializer doesn\'t support headtracking"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    const/4 v6, 0x0

    const/4 v7, -0x1

    if-eqz v8, :cond_6

    :try_start_2
    iget-object v8, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v8, :cond_4

    :try_start_3
    iget-object v8, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v8, v8, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "sensor"

    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/SensorManager;

    iput-object v8, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    new-instance v8, Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;

    invoke-direct {v8, p0}, Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;-><init>(Lcom/android/server/audio/SpatializerHelper;)V

    iput-object v8, p0, Lcom/android/server/audio/SpatializerHelper;->mDynSensorCallback:Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;

    iget-object v11, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v11, v8}, Landroid/hardware/SensorManager;->registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "AS.SpatializerHelper"

    const-string v2, "Error with SensorManager, can\'t initialize sensors"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v6, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object v6, p0, Lcom/android/server/audio/SpatializerHelper;->mDynSensorCallback:Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->getHeadSensorHandleUpdateTracker()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v8, 0xb

    invoke-virtual {v5, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getHandle()I

    move-result v5

    goto :goto_3

    :cond_5
    move v5, v7

    :goto_3
    const-string v8, "AS.SpatializerHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    iget-object v4, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v4, :cond_7

    iget-object v5, p0, Lcom/android/server/audio/SpatializerHelper;->mDynSensorCallback:Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;

    if-eqz v5, :cond_7

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->unregisterDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V

    iput-object v6, p0, Lcom/android/server/audio/SpatializerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object v6, p0, Lcom/android/server/audio/SpatializerHelper;->mDynSensorCallback:Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_7
    move v5, v7

    move v6, v5

    :goto_4
    :try_start_6
    const-string v4, "AS.SpatializerHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v3, v5}, Landroid/media/ISpatializer;->setScreenSensor(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :catch_1
    move-exception v3

    :try_start_7
    const-string v4, "AS.SpatializerHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_5
    :try_start_8
    const-string v2, "AS.SpatializerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v1, v6}, Landroid/media/ISpatializer;->setHeadSensor(I)V

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z

    if-eq v6, v7, :cond_8

    move v2, v10

    goto :goto_6

    :cond_8
    move v2, v9

    :goto_6
    if-eq v1, v2, :cond_c

    if-eq v6, v7, :cond_9

    move v1, v10

    goto :goto_7

    :cond_9
    move v1, v9

    :goto_7
    iput-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z

    iget-boolean v2, p0, Lcom/android/server/audio/SpatializerHelper;->mSecHeadTrackerAvailable:Z

    if-nez v2, :cond_a

    if-eqz v1, :cond_b

    :cond_a
    move v9, v10

    :cond_b
    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mGlobalHeadTrackerAvailable:Z

    if-eq v1, v9, :cond_c

    iput-boolean v9, p0, Lcom/android/server/audio/SpatializerHelper;->mGlobalHeadTrackerAvailable:Z

    invoke-virtual {p0, v9}, Lcom/android/server/audio/SpatializerHelper;->dispatchHeadTrackerAvailable(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_8

    :catch_2
    move-exception v1

    :try_start_9
    const-string v2, "AS.SpatializerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    :goto_8
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->setDesiredHeadTrackingMode(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-void

    :goto_9
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v0
.end method

.method public final declared-synchronized onRoutingUpdated()V
    .locals 11

    const-string/jumbo v0, "Setting spatialization level to: "

    const-string v1, "Disabling Spatial Audio since disabled for media device:"

    const-string v2, "Enabling Spatial Audio since enabled for media device:"

    const-string/jumbo v3, "onRoutingUpdated: device:"

    const-string/jumbo v4, "onRoutingUpdated: can spatialize media 5.1:"

    monitor-enter p0

    :try_start_0
    iget v5, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    if-eqz v5, :cond_7

    const/4 v6, 0x1

    if-eq v5, v6, :cond_7

    sget-object v5, Lcom/android/server/audio/SpatializerHelper;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p0, v5}, Lcom/android/server/audio/SpatializerHelper;->getRoutingDevices(Landroid/media/AudioAttributes;)Ljava/util/ArrayList;

    move-result-object v7

    sput-object v7, Lcom/android/server/audio/SpatializerHelper;->sRoutingDevices:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    const-string/jumbo v0, "onRoutingUpdated: no device, no Spatial Audio"

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/android/server/audio/SpatializerHelper;->setDispatchAvailableState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    :try_start_1
    sget-object v7, Lcom/android/server/audio/SpatializerHelper;->sRoutingDevices:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v7}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v9

    invoke-static {v9}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p0, v7}, Lcom/android/server/audio/SpatializerHelper;->addWirelessDeviceIfNew(Landroid/media/AudioDeviceAttributes;)V

    :cond_1
    invoke-virtual {p0, v7}, Lcom/android/server/audio/SpatializerHelper;->evaluateState(Landroid/media/AudioDeviceAttributes;)Landroid/util/Pair;

    move-result-object v9

    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_2

    sget-object v3, Lcom/android/server/audio/SpatializerHelper;->DEFAULT_FORMAT:Landroid/media/AudioFormat;

    sget-object v10, Lcom/android/server/audio/SpatializerHelper;->sRoutingDevices:Ljava/util/ArrayList;

    invoke-virtual {p0, v5, v3, v10}, Lcom/android/server/audio/SpatializerHelper;->canBeSpatializedOnDevice(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;Ljava/util/ArrayList;)Z

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " on device:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/server/audio/SpatializerHelper;->setDispatchAvailableState(Z)V

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not available for Spatial Audio"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/android/server/audio/SpatializerHelper;->setDispatchAvailableState(Z)V

    move v3, v8

    :goto_0
    iget-boolean v4, p0, Lcom/android/server/audio/SpatializerHelper;->mFeatureEnabled:Z

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    iget-object v3, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v6, v8

    :goto_1
    if-eqz v6, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    :goto_2
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v0, v6}, Landroid/media/ISpatializer;->setLevel(B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "AS.SpatializerHelper"

    const-string/jumbo v2, "onRoutingUpdated() Can\'t set spatializer level"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const-string v6, "AS.AudioService"

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v2, 0x32

    const/4 v3, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :goto_3
    :try_start_4
    const-string/jumbo v0, "onRoutingUpdated"

    invoke-virtual {p0, v0, v6}, Lcom/android/server/audio/SpatializerHelper;->setDispatchFeatureEnabledState(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_6

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->postInitSensors()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    monitor-exit p0

    return-void

    :cond_7
    monitor-exit p0

    return-void

    :goto_4
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public final postInitSensors()V
    .locals 7

    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v1, 0x2a

    const/4 v2, 0x0

    const-string v5, "AS.AudioService"

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final releaseSpat()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Landroid/media/ISpatializer;->registerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingCallback;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z

    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v0}, Landroid/media/ISpatializer;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v2, "AS.SpatializerHelper"

    const-string v3, "Can\'t set release spatializer cleanly"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iput-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    :cond_1
    return-void
.end method

.method public final declared-synchronized removeCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V
    .locals 2

    const-string/jumbo v0, "removeCompatibleAudioDevice: dev="

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->findSACompatibleDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AdiDeviceState;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->isSAEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/audio/AdiDeviceState;->setSAEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->onRoutingUpdated()V

    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->postPersistAudioDeviceSettings()V

    const-string/jumbo v0, "removeCompatibleAudioDevice"

    invoke-static {p1, v0}, Lcom/android/server/audio/SpatializerHelper;->logDeviceState(Lcom/android/server/audio/AdiDeviceState;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized reset(Z)V
    .locals 2

    const-string/jumbo v0, "Resetting featureEnabled="

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->releaseSpat()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpatLevel:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->init(Z)V

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->setSpatializerEnabledInt(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized setDesiredHeadTrackingMode(I)V
    .locals 3

    const-string/jumbo v0, "setDesiredHeadTrackingMode("

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "setDesiredHeadTrackingMode"

    invoke-virtual {p0, v1}, Lcom/android/server/audio/SpatializerHelper;->checkSpatializer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    :try_start_1
    iput p1, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingModeWhenEnabled:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_6

    :cond_2
    :goto_1
    :try_start_2
    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    if-eq v1, p1, :cond_3

    iput p1, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingMode:I

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->dispatchDesiredHeadTrackingMode(I)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_3
    :goto_2
    const-string v1, "AS.SpatializerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/media/Spatializer;->headtrackingModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p1, v1, :cond_7

    if-eqz p1, :cond_6

    const/4 v1, 0x2

    if-eq p1, v2, :cond_5

    if-ne p1, v1, :cond_4

    const/4 v2, 0x3

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unexpected head tracking mode:"

    invoke-static {p1, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v2, v1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :cond_7
    :goto_3
    invoke-interface {v0, v2}, Landroid/media/ISpatializer;->setDesiredHeadTrackingMode(B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_4
    :try_start_3
    const-string v0, "AS.SpatializerHelper"

    const-string v1, "Error calling setDesiredHeadTrackingMode"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    monitor-exit p0

    return-void

    :goto_6
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final declared-synchronized setDispatchAvailableState(Z)V
    .locals 9

    const-string/jumbo v0, "setDispatchAvailableState("

    const-string/jumbo v1, "Should not update available state in state:"

    const-string/jumbo v2, "setDispatchAvailableState("

    const-string/jumbo v3, "setDispatchAvailableState("

    const-string/jumbo v4, "setDispatchAvailableState("

    const-string/jumbo v5, "setDispatchAvailableState("

    monitor-enter p0

    :try_start_0
    iget v6, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    if-eqz v6, :cond_9

    const/4 v7, 0x1

    if-eq v6, v7, :cond_9

    const/4 v1, 0x6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_6

    const/4 v2, 0x5

    const/4 v8, 0x4

    if-eq v6, v8, :cond_4

    if-eq v6, v2, :cond_2

    if-eq v6, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") no dispatch: mState:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    :try_start_1
    iput v7, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") no dispatch: mState:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    iput v8, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    iput v2, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") no dispatch: mState:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    if-eqz p1, :cond_8

    :try_start_3
    iput v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ") mState:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_7

    :try_start_4
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/ISpatializerCallback;

    invoke-interface {v2, p1}, Landroid/media/ISpatializerCallback;->dispatchSpatializerAvailableChanged(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_5
    const-string v3, "AS.SpatializerHelper"

    const-string v4, "Error in dispatchSpatializerEnabledChanged"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :cond_8
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") no dispatch: mState:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :cond_9
    :try_start_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_3
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method public final declared-synchronized setDispatchFeatureEnabledState(Ljava/lang/String;Z)V
    .locals 9

    const-string v0, "Invalid mState:"

    const-string/jumbo v1, "setDispatchFeatureEnabledState("

    const-string/jumbo v2, "setDispatchFeatureEnabledState("

    const-string v3, "Invalid mState:"

    const-string/jumbo v4, "setDispatchFeatureEnabledState("

    monitor-enter p0

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-eqz p2, :cond_3

    :try_start_0
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    if-eq v0, v8, :cond_2

    if-eq v0, v7, :cond_1

    if-eq v0, v6, :cond_1

    if-ne v0, v5, :cond_0

    iput v6, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for enabled true"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ") no dispatch: mState:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-static {p2}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " src:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iput v7, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    if-eq v3, v8, :cond_8

    if-eq v3, v7, :cond_6

    if-eq v3, v6, :cond_5

    if-ne v3, v5, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for enabled false"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iput v5, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    goto :goto_0

    :cond_6
    iput v8, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ") mState:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_7

    :try_start_2
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/media/ISpatializerCallback;

    invoke-interface {v1, p2}, Landroid/media/ISpatializerCallback;->dispatchSpatializerEnabledChanged(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "AS.SpatializerHelper"

    const-string v3, "Error in dispatchSpatializerEnabledChanged"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/android/server/audio/SpatializerHelper;->mStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_8
    :goto_3
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ") no dispatch: mState:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    invoke-static {p2}, Lcom/android/server/audio/SpatializerHelper;->spatStateString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " src:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :goto_4
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public final declared-synchronized setFeatureEnabled(Z)V
    .locals 2

    const-string/jumbo v0, "setFeatureEnabled("

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ") was featureEnabled:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mFeatureEnabled:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper;->mFeatureEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/audio/SpatializerHelper;->mFeatureEnabled:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "AS.SpatializerHelper"

    const-string v0, "Can\'t enabled Spatial Audio, unsupported"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->init(Z)V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SpatializerHelper;->setSpatializerEnabledInt(Z)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->setSpatializerEnabledInt(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized setHeadTrackerEnabled(ZLandroid/media/AudioDeviceAttributes;)V
    .locals 4

    const-string/jumbo v0, "setHeadTrackerEnabled enabled:"

    const-string v1, "Called setHeadTrackerEnabled enabled:"

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/audio/SpatializerHelper;->mIsHeadTrackingSupported:Z

    if-nez v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/audio/SpatializerHelper;->findSACompatibleDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Lcom/android/server/audio/AdiDeviceState;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/audio/AdiDeviceState;->hasHeadTracker()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v0, "AS.SpatializerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " device:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " on a device without headtracker"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    const-string v1, "AS.SpatializerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " device:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, p1}, Lcom/android/server/audio/AdiDeviceState;->setHeadTrackerEnabled(Z)V

    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->postPersistAudioDeviceSettings()V

    const-string/jumbo v0, "setHeadTrackerEnabled"

    invoke-static {v2, v0}, Lcom/android/server/audio/SpatializerHelper;->logDeviceState(Lcom/android/server/audio/AdiDeviceState;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/audio/SpatializerHelper;->sRoutingDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo p1, "setHeadTrackerEnabled: no device, bailing"

    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->logloge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    sget-object v0, Lcom/android/server/audio/SpatializerHelper;->sRoutingDevices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v1

    invoke-virtual {p2}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v2

    if-ne v1, v2, :cond_5

    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz p1, :cond_4

    iget p2, p0, Lcom/android/server/audio/SpatializerHelper;->mDesiredHeadTrackingModeWhenEnabled:I

    goto :goto_1

    :cond_4
    const/4 p2, -0x1

    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/server/audio/SpatializerHelper;->setDesiredHeadTrackingMode(I)V

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackerAvailable:Z

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->postInitSensors()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final declared-synchronized setSpatializerEnabledInt(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper;->mState:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->releaseSpat()V

    const-string/jumbo p1, "setSpatializerEnabledInt"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/SpatializerHelper;->setDispatchFeatureEnabledState(Ljava/lang/String;Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->createSpat()V

    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->onRoutingUpdated()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    const-string p1, "AS.SpatializerHelper"

    const-string v0, "Can\'t enable when unsupported"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    if-nez p1, :cond_5

    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :cond_5
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t enable when uninitialized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
