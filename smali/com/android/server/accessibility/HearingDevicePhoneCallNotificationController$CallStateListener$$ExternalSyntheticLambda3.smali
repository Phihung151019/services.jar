.class public final synthetic Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;

.field public final synthetic f$1:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;

    iput-object p2, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda3;->f$1:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;

    iget-object p0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda3;->f$1:Landroid/bluetooth/BluetoothAdapter;

    check-cast p1, Landroid/media/AudioDeviceInfo;

    sget-object v1, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->BUILTIN_MIC:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->isHapClientDevice(Landroid/bluetooth/BluetoothAdapter;Landroid/media/AudioDeviceInfo;)Z

    move-result p0

    return p0
.end method
