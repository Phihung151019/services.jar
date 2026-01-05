.class public final synthetic Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;

    return-void
.end method


# virtual methods
.method public final onCommunicationDeviceChanged(Landroid/media/AudioDeviceInfo;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;

    sget-object v0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->BUILTIN_MIC:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->getSupportedInputHearingDeviceInfo(Ljava/util/List;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsNotificationShown:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isMicrophonePreferredForCalls()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->showNotification(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsNotificationShown:Z

    return-void

    :cond_2
    iget-boolean p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsNotificationShown:Z

    if-nez p1, :cond_3

    :goto_0
    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDeviceActionReceiver:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mHearingDeviceActionReceiver:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;

    :goto_1
    iget-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v0, 0x3f4

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mIsNotificationShown:Z

    return-void
.end method
