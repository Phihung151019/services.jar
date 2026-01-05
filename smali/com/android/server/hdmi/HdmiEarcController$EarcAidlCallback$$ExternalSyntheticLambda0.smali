.class public final synthetic Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;

.field public final synthetic f$1:B

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;

    iput-byte p2, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback$$ExternalSyntheticLambda0;->f$1:B

    iput p3, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;

    iget-byte v1, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback$$ExternalSyntheticLambda0;->f$1:B

    iget p0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback$$ExternalSyntheticLambda0;->f$2:I

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;->this$0:Lcom/android/server/hdmi/HdmiEarcController;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiEarcController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    iget v3, v3, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->mEarcStatus:I

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {v2, p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiPortInfo;->isEarcSupported()Z

    move-result p0

    const/4 v2, 0x3

    if-nez p0, :cond_1

    const-string p0, "HdmiControlService"

    const-string/jumbo v4, "Tried to update eARC status on a port that doesn\'t support eARC."

    invoke-static {p0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcSupported()Z

    move-result v4

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcEnabled()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v1, v2, v4, v0}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->earcStatusChanged(IIIZZ)V

    return-void

    :cond_1
    iget-object p0, v0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz p0, :cond_7

    check-cast p0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;

    iget-object v6, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    const-string/jumbo v7, "eARC state change [old: %s(%d) new: %s(%d)]"

    iget v8, p0, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->mEarcStatus:I

    sget-object v9, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;->earcStatusNames:[Ljava/lang/String;

    aget-object v10, v9, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aget-object v9, v9, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v10, v8, v9, v11}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v7, p0, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->mEarcStatus:I

    iput v1, p0, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->mEarcStatus:I

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v6, p0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;->mReportCapsHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v6, v5}, Lcom/android/server/hdmi/HdmiControlService;->notifyEarcStatusToAudioService(Ljava/util/List;Z)V

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, v5, v8}, Lcom/android/server/hdmi/HdmiControlService;->startArcAction(ZLcom/android/server/hdmi/HdmiControlService$36;)V

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    if-ne v1, v4, :cond_3

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v7, v5}, Lcom/android/server/hdmi/HdmiControlService;->notifyEarcStatusToAudioService(Ljava/util/List;Z)V

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, v6, v8}, Lcom/android/server/hdmi/HdmiControlService;->startArcAction(ZLcom/android/server/hdmi/HdmiControlService$36;)V

    goto :goto_1

    :cond_3
    if-ne v1, v6, :cond_4

    if-ne v7, v4, :cond_4

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, v5, v8}, Lcom/android/server/hdmi/HdmiControlService;->startArcAction(ZLcom/android/server/hdmi/HdmiControlService$36;)V

    goto :goto_1

    :cond_4
    if-ne v1, v2, :cond_6

    if-ne v7, v4, :cond_5

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v5, v8}, Lcom/android/server/hdmi/HdmiControlService;->startArcAction(ZLcom/android/server/hdmi/HdmiControlService$36;)V

    :cond_5
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;->mReportCapsHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;->mReportCapsRunnable:Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx$ReportCapsRunnable;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v2, p0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcSupported()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcEnabled()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v1, v4, v2, v0}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->earcStatusChanged(IIIZZ)V

    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_7
    if-ne v1, v4, :cond_8

    const-string/jumbo p0, "eARC state change [new: HDMI_EARC_STATUS_ARC_PENDING(2)]"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0, v5}, Lcom/android/server/hdmi/HdmiControlService;->notifyEarcStatusToAudioService(Ljava/util/List;Z)V

    iget-object p0, v0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$31;

    const/4 v5, 0x2

    invoke-direct {v2, v0, v5}, Lcom/android/server/hdmi/HdmiControlService$31;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {p0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcSupported()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcEnabled()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v1, v4, v2, v0}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->earcStatusChanged(IIIZZ)V

    return-void

    :cond_8
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcSupported()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcEnabled()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x4

    invoke-static {v3, v1, p0, v2, v0}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->earcStatusChanged(IIIZZ)V

    return-void
.end method
