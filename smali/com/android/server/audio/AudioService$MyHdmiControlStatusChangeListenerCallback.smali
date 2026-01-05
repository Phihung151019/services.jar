.class public final Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;->this$0:Lcom/android/server/audio/AudioService;

    return-void
.end method


# virtual methods
.method public final onStatusChange(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move p2, v1

    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService;->updateHdmiCecSinkLocked(Z)V

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
