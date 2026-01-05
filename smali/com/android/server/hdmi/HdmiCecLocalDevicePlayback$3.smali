.class public final Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;
.implements Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

.field public final val$callback:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    new-instance v0, Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;

    iget-object p1, p1, Lcom/android/server/hdmi/PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "HdmiCecLocalDevicePlayback"

    invoke-virtual {p1, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;->val$callback:Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;Lcom/android/server/hdmi/HdmiControlService$28;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;->val$callback:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;->val$callback:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;

    iget-object v0, v0, Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isActiveSource()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "active source: %b. Wake lock acquired"

    invoke-static {v0, p0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isHeld()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;->val$callback:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;

    iget-object p0, p0, Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p0

    return p0
.end method

.method public onSendCompleted(I)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;->val$callback:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/hdmi/HdmiControlService$28;

    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->invokeStandbyCompletedCallback(Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;->val$callback:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;

    iget-object p0, p0, Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string/jumbo v0, "Wake lock released"

    invoke-static {v0, p0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
