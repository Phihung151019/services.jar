.class public final Lcom/android/server/input/SysfsNodeMonitor;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputDeviceListener:Lcom/android/server/input/SysfsNodeMonitor$1;

.field public mInputManager:Landroid/hardware/input/InputManager;

.field public final mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

.field public final mUEventListenersByDeviceId:Landroid/util/SparseArray;

.field public final mUEventManager:Lcom/android/server/input/InputManagerService$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "SysfsNodeMonitor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/SysfsNodeMonitor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService$NativeImpl;Landroid/os/Looper;Lcom/android/server/input/InputManagerService$1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor;->mUEventListenersByDeviceId:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/input/SysfsNodeMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/input/SysfsNodeMonitor$1;-><init>(Lcom/android/server/input/SysfsNodeMonitor;)V

    iput-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor;->mInputDeviceListener:Lcom/android/server/input/SysfsNodeMonitor$1;

    iput-object p1, p0, Lcom/android/server/input/SysfsNodeMonitor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/input/SysfsNodeMonitor;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/input/SysfsNodeMonitor;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/server/input/SysfsNodeMonitor;->mUEventManager:Lcom/android/server/input/InputManagerService$1;

    return-void
.end method


# virtual methods
.method public final stopMonitoring(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor;->mUEventListenersByDeviceId:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Lcom/android/server/input/SysfsNodeMonitor;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "Stop listening to sysfs node changes for input device: "

    const-string/jumbo v2, "SysfsNodeMonitor"

    invoke-static {p1, v1, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/input/SysfsNodeMonitor;->mUEventManager:Lcom/android/server/input/InputManagerService$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Lcom/android/server/input/UEventManager$UEventListener;->mObserver:Lcom/android/server/input/UEventManager$UEventListener$1;

    invoke-virtual {p0}, Landroid/os/UEventObserver;->stopObserving()V

    return-void
.end method
