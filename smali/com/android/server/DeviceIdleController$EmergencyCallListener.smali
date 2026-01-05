.class public final Lcom/android/server/DeviceIdleController$EmergencyCallListener;
.super Landroid/telephony/TelephonyCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# instance fields
.field public volatile mIsEmergencyCallActive:Z

.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(I)V
    .locals 2

    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleController"

    const-string/jumbo v1, "onCallStateChanged(): state is "

    invoke-static {p1, v1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->mIsEmergencyCallActive:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->mIsEmergencyCallActive:Z

    iget-object p1, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public final onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->mIsEmergencyCallActive:Z

    sget-boolean p1, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "DeviceIdleController"

    const-string/jumbo v0, "onOutgoingEmergencyCall(): subId = "

    invoke-static {p2, v0, p1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->this$0:Lcom/android/server/DeviceIdleController;

    const-string/jumbo p2, "emergency call"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(ILjava/lang/String;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
