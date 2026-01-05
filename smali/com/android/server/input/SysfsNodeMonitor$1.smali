.class public final Lcom/android/server/input/SysfsNodeMonitor$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/SysfsNodeMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/input/SysfsNodeMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/SysfsNodeMonitor$1;->this$0:Lcom/android/server/input/SysfsNodeMonitor;

    return-void
.end method


# virtual methods
.method public final onInputDeviceAdded(I)V
    .locals 5

    iget-object p0, p0, Lcom/android/server/input/SysfsNodeMonitor$1;->this$0:Lcom/android/server/input/SysfsNodeMonitor;

    iget-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->isExternal()Z

    move-result v0

    sget-boolean v1, Lcom/android/server/input/SysfsNodeMonitor;->DEBUG:Z

    const-string/jumbo v2, "SysfsNodeMonitor"

    if-nez v0, :cond_1

    if-eqz v1, :cond_3

    const-string/jumbo p0, "Not listening to sysfs node changes for internal input device: "

    invoke-static {p1, p0, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->getSysfsRootPath(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "/sys"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-nez v3, :cond_4

    if-eqz v1, :cond_3

    const-string/jumbo p0, "Sysfs node not found for external input device: "

    invoke-static {p1, p0, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Start listening to sysfs node changes for input device: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", node: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v1, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;

    invoke-direct {v1, p0}, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;-><init>(Lcom/android/server/input/SysfsNodeMonitor;)V

    iget-object v2, p0, Lcom/android/server/input/SysfsNodeMonitor;->mUEventListenersByDeviceId:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/input/SysfsNodeMonitor;->mUEventManager:Lcom/android/server/input/InputManagerService$1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/android/server/input/UEventManager$UEventListener;->mObserver:Lcom/android/server/input/UEventManager$UEventListener$1;

    invoke-virtual {v1, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/android/server/input/NativeInputManagerService;->sysfsNodeChanged(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/input/SysfsNodeMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/input/SysfsNodeMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/SysfsNodeMonitor;I)V

    const-wide/32 p0, 0xea60

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onInputDeviceChanged(I)V
    .locals 0

    return-void
.end method

.method public final onInputDeviceRemoved(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/SysfsNodeMonitor$1;->this$0:Lcom/android/server/input/SysfsNodeMonitor;

    invoke-virtual {p0, p1}, Lcom/android/server/input/SysfsNodeMonitor;->stopMonitoring(I)V

    return-void
.end method
