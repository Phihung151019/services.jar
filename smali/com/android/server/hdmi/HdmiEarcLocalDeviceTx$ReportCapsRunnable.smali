.class public final Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx$ReportCapsRunnable;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx$ReportCapsRunnable;->this$0:Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx$ReportCapsRunnable;->this$0:Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx$ReportCapsRunnable;->this$0:Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;

    iget v1, p0, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->mEarcStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->notifyEarcStatusToAudioService(Ljava/util/List;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
