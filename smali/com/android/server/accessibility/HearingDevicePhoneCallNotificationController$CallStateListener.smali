.class Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;
.super Landroid/telephony/TelephonyCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# static fields
.field public static final BUILTIN_MIC:Landroid/media/AudioDeviceAttributes;


# instance fields
.field public mAudioManager:Landroid/media/AudioManager;

.field public final mCommDeviceChangedExecutor:Ljava/util/concurrent/Executor;

.field public final mCommDeviceChangedListener:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda4;

.field public final mContext:Landroid/content/Context;

.field public mHearingDevice:Landroid/bluetooth/BluetoothDevice;

.field public mHearingDeviceActionReceiver:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;

.field public mIsCommDeviceChangedRegistered:Z

.field public mIsNotificationShown:Z

.field public mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/media/AudioDeviceAttributes;

    const/16 v1, 0xf

    const-string v2, ""

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->BUILTIN_MIC:Landroid/media/AudioDeviceAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsCommDeviceChangedRegistered:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsNotificationShown:Z

    iput-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mCommDeviceChangedExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;)V

    iput-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mCommDeviceChangedListener:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda4;

    return-void
.end method


# virtual methods
.method public final createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v4, "com.android.server.accessibility.hearingdevice.action.SWITCH_TO_BUILTIN_MIC"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "com.android.server.accessibility.hearingdevice.action.SWITCH_TO_HEARING_MIC"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "com.android.settings.BLUETOOTH_DEVICE_DETAIL_SETTINGS"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p1, :cond_3

    :goto_1
    const/4 p0, 0x0

    return-object p0

    :cond_3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "device_address"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ":settings:show_fragment_args"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const p1, 0x10008000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6cea1e48 -> :sswitch_2
        0x2c49544e -> :sswitch_1
        0x641f95bd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getSupportedInputHearingDeviceInfo(Ljava/util/List;)Landroid/bluetooth/BluetoothDevice;
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    const-class v1, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->isHapClientSupported()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v3, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v3, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda2;-><init>(Ljava/util/Set;)V

    invoke-interface {p1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;Landroid/bluetooth/BluetoothAdapter;)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioDeviceInfo;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public isHapClientDevice(Landroid/bluetooth/BluetoothAdapter;Landroid/media/AudioDeviceInfo;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object p0

    sget-object p1, Landroid/bluetooth/BluetoothUuid;->HAS:Landroid/os/ParcelUuid;

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isHapClientSupported()Z
    .locals 1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getSupportedProfiles()Ljava/util/List;

    move-result-object p0

    const/16 v0, 0x1c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final onCallStateChanged(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_c

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    if-nez p1, :cond_6

    iget-object v1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mCommDeviceChangedListener:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda4;

    iget-boolean v2, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsCommDeviceChangedRegistered:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->removeOnCommunicationDeviceChangedListener(Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)V

    iput-boolean v3, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsCommDeviceChangedRegistered:Z

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsNotificationShown:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDeviceActionReceiver:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDeviceActionReceiver:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;

    :goto_1
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x3f4

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    iput-boolean v3, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsNotificationShown:Z

    :goto_2
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isMicrophonePreferredForCalls()Z

    move-result v0

    const/4 v2, 0x7

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->clearPreferredDevicesForCapturePreset(I)Z

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->clearPreferredDevicesForCapturePreset(I)Z

    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mAudioManager:Landroid/media/AudioManager;

    sget-object v3, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->BUILTIN_MIC:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v0, v2, v3}, Landroid/media/AudioManager;->setPreferredDeviceForCapturePreset(ILandroid/media/AudioDeviceAttributes;)Z

    :cond_5
    :goto_3
    iput-object v1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDevice:Landroid/bluetooth/BluetoothDevice;

    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getCommunicationDevice()Landroid/media/AudioDeviceInfo;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {p1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->getSupportedInputHearingDeviceInfo(Ljava/util/List;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x1

    if-eqz p1, :cond_9

    iget-boolean v1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsNotificationShown:Z

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isMicrophonePreferredForCalls()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->showNotification(Z)V

    iput-boolean v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsNotificationShown:Z

    return-void

    :cond_9
    iget-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mCommDeviceChangedExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mCommDeviceChangedListener:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda4;

    iget-boolean v2, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsCommDeviceChangedRegistered:Z

    if-eqz v2, :cond_a

    goto :goto_4

    :cond_a
    iput-boolean v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsCommDeviceChangedRegistered:Z

    iget-object p0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, v1}, Landroid/media/AudioManager;->addOnCommunicationDeviceChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)V

    :cond_b
    :goto_4
    return-void

    :cond_c
    :goto_5
    const-string p0, "HearingDevice_CallStateListener"

    const-string/jumbo p1, "NotificationManager or AudioManager is not prepare yet."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final showNotification(Z)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    const v2, 0x104065f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    const v2, 0x104065d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    const-string v4, "ACCESSIBILITY_HEARING_DEVICE"

    invoke-direct {v2, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    const v4, 0x1040660

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    const v4, 0x104065e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x1080602

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string/jumbo v3, "sys"

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string/jumbo v3, "com.android.settings.BLUETOOTH_DEVICE_DETAIL_SETTINGS"

    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/app/Notification$Action;

    const-string/jumbo v5, "com.android.server.accessibility.hearingdevice.action.SWITCH_TO_HEARING_MIC"

    const-string/jumbo v6, "com.android.server.accessibility.hearingdevice.action.SWITCH_TO_BUILTIN_MIC"

    const/4 v7, 0x0

    const v8, 0x1040658

    if-eqz p1, :cond_2

    new-instance p1, Landroid/app/Notification$Action$Builder;

    iget-object v9, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v6}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-direct {p1, v7, v8, v9}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p1

    goto :goto_2

    :cond_2
    new-instance p1, Landroid/app/Notification$Action$Builder;

    iget-object v9, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v5}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-direct {p1, v7, v8, v9}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p1

    :goto_2
    const/4 v8, 0x0

    aput-object p1, v4, v8

    new-instance p1, Landroid/app/Notification$Action$Builder;

    iget-object v8, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    const v9, 0x1040657

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {p1, v7, v8, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const/16 v1, 0x3f4

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDeviceActionReceiver:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;

    if-eqz p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;

    invoke-direct {p1, p0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;-><init>(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;)V

    iput-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDeviceActionReceiver:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;

    invoke-static {v6, v5}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v9

    iget-object v7, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDeviceActionReceiver:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;

    const-string/jumbo v10, "android.permission.MANAGE_ACCESSIBILITY"

    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method
