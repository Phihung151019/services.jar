.class public final Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;
.super Lcom/android/server/input/UEventManager$UEventListener;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mHasReceivedPowerSupplyNotification:Z

.field public mHasReceivedRemovalNotification:Z

.field public final synthetic this$0:Lcom/android/server/input/SysfsNodeMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/input/SysfsNodeMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->this$0:Lcom/android/server/input/SysfsNodeMonitor;

    invoke-direct {p0}, Lcom/android/server/input/UEventManager$UEventListener;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->mHasReceivedRemovalNotification:Z

    iput-boolean p1, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->mHasReceivedPowerSupplyNotification:Z

    return-void
.end method


# virtual methods
.method public final onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->this$0:Lcom/android/server/input/SysfsNodeMonitor;

    iget-object v0, v0, Lcom/android/server/input/SysfsNodeMonitor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;Landroid/os/UEventObserver$UEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
