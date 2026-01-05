.class public final Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;->this$0:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p2, "com.android.server.accessibility.hearingdevice.action.SWITCH_TO_BUILTIN_MIC"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x7

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;->this$0:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;

    sget-object p2, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->BUILTIN_MIC:Landroid/media/AudioDeviceAttributes;

    iget-object p2, p1, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p2, v0}, Landroid/media/AudioManager;->clearPreferredDevicesForCapturePreset(I)Z

    iget-object p1, p1, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mAudioManager:Landroid/media/AudioManager;

    sget-object p2, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->BUILTIN_MIC:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p1, v0, p2}, Landroid/media/AudioManager;->setPreferredDeviceForCapturePreset(ILandroid/media/AudioDeviceAttributes;)Z

    iget-object p0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;->this$0:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->showNotification(Z)V

    return-void

    :cond_1
    const-string/jumbo p2, "com.android.server.accessibility.hearingdevice.action.SWITCH_TO_HEARING_MIC"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;->this$0:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;

    sget-object p2, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->BUILTIN_MIC:Landroid/media/AudioDeviceAttributes;

    iget-object p1, p1, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->clearPreferredDevicesForCapturePreset(I)Z

    iget-object p0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$HearingDeviceActionReceiver;->this$0:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->showNotification(Z)V

    :cond_2
    :goto_0
    return-void
.end method
