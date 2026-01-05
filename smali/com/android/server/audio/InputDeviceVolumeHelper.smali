.class public final Lcom/android/server/audio/InputDeviceVolumeHelper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mInputGainIndexMap:Landroid/util/SparseIntArray;

.field public final mInputGainIndexSettingsName:Ljava/lang/String;

.field public final mSettings:Lcom/android/server/audio/SettingsAdapter;

.field public final mSupportedDeviceTypes:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/SettingsAdapter;Landroid/content/ContentResolver;)V
    .locals 6

    const-string/jumbo v0, "input_gain_index_settings"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mSupportedDeviceTypes:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iput-object p2, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mContentResolver:Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mInputGainIndexSettingsName:Ljava/lang/String;

    new-instance p1, Landroid/util/IntArray;

    invoke-direct {p1}, Landroid/util/IntArray;-><init>()V

    const/4 p2, 0x1

    invoke-static {p2, p1}, Landroid/media/AudioSystem;->getSupportedDeviceTypes(ILandroid/util/IntArray;)I

    move-result p2

    if-eqz p2, :cond_0

    const-string v0, "InputDeviceVolumeHelper"

    const-string v1, "AudioSystem.getSupportedDeviceTypes(GET_DEVICES_INPUTS) failed. status:"

    invoke-static {p2, v1, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v0

    invoke-direct {p2, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mInputGainIndexMap:Landroid/util/SparseIntArray;

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mSupportedDeviceTypes:Ljava/util/Set;

    invoke-virtual {p1, v0}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-class p1, Lcom/android/server/audio/InputDeviceVolumeHelper;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mSupportedDeviceTypes:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/audio/InputDeviceVolumeHelper;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x32

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v5, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, -0x2

    invoke-static {v5, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    :goto_2
    iget-object v2, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mInputGainIndexMap:Landroid/util/SparseIntArray;

    if-gez v3, :cond_3

    move v3, p2

    goto :goto_3

    :cond_3
    const/16 v4, 0x64

    if-le v3, v4, :cond_4

    move v3, v4

    :cond_4
    :goto_3
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_5
    monitor-exit p1

    return-void

    :goto_4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final ensureValidInputDeviceType(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mSupportedDeviceTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad input device type "

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getInputGainIndex(Landroid/media/AudioDeviceAttributes;)I
    .locals 2

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p1

    invoke-static {p1}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalInputDevice(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/InputDeviceVolumeHelper;->ensureValidInputDeviceType(I)V

    const-class v0, Lcom/android/server/audio/InputDeviceVolumeHelper;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mInputGainIndexMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x32

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

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

.method public final getSettingNameForDevice(I)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mInputGainIndexSettingsName:Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/media/AudioSystem;->getInputDeviceName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    const-string/jumbo v0, "_"

    invoke-static {p0, v0, p1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
