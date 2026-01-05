.class public final Lcom/android/server/hdmi/HotplugDetectionAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAvrStatusCount:I

.field public final mIsTvDevice:Z

.field public mTimeoutCount:I


# direct methods
.method public static -$$Nest$mcheckHotplug(Lcom/android/server/hdmi/HotplugDetectionAction;Ljava/util/List;Z)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    iget-object v1, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getDeviceInfoList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p2, v2}, Lcom/android/server/hdmi/HotplugDetectionAction;->infoListToBitSet(Ljava/util/List;ZZ)Ljava/util/BitSet;

    move-result-object v3

    new-instance v4, Ljava/util/BitSet;

    const/16 v5, 0xf

    invoke-direct {v4, v5}, Ljava/util/BitSet;-><init>(I)V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_0

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    const/4 v3, -0x1

    move v5, v3

    :goto_1
    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {p1, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    const/4 v7, 0x0

    const-string v8, "HotPlugDetectionAction"

    const/4 v9, 0x5

    if-eq v5, v3, :cond_b

    iget-boolean v10, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mIsTvDevice:Z

    if-eqz v10, :cond_1

    if-ne v5, v9, :cond_1

    move-object v11, v0

    check-cast v11, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-virtual {v11}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v12

    invoke-virtual {v11}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    iget-object v11, v11, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v11}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    iget-object v11, v11, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v11}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    iget-object v11, v11, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {v11, v12}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeIsConnected(I)Z

    move-result v11

    if-eqz v11, :cond_1

    iget v11, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    add-int/2addr v11, v6

    iput v11, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Ack not returned from AVR. count: "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    invoke-static {v6, v11, v8}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v6, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    const/4 v11, 0x3

    if-ge v6, v11, :cond_1

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Remove device by hot-plug detection:"

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    iget-object v8, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    if-eqz v10, :cond_6

    iget-object v10, v8, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {v10, v5}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v10

    if-eqz v10, :cond_2

    move-object v11, v0

    check-cast v11, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v10

    invoke-virtual {v11}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    invoke-virtual {v11}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePath()I

    move-result v12

    invoke-static {v10, v12}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isTailOfActivePath(II)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v11, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v11}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    move-result v12

    invoke-virtual {v10, v12}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result v10

    invoke-virtual {v11}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePath()I

    move-result v12

    invoke-virtual {v11, v12, v10, v7}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startRoutingControl(IILandroid/hardware/hdmi/IHdmiControlCallback;)V

    :cond_2
    const-class v10, Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-virtual {v0, v10}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/hdmi/OneTouchRecordAction;

    iget v12, v11, Lcom/android/server/hdmi/OneTouchRecordAction;->mRecorderAddress:I

    if-ne v12, v5, :cond_3

    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    invoke-virtual {v11, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    iget-object v12, v6, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->checkIfPendingActionsCleared()V

    goto :goto_2

    :cond_4
    invoke-static {v9, v5}, Lcom/android/server/hdmi/HdmiUtils;->isEligibleAddressForDevice(II)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_3

    :cond_5
    move-object v9, v0

    check-cast v9, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-virtual {v9, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode$1(Z)V

    invoke-virtual {v9}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isArcEstablished()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v9, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->enableAudioReturnChannel$1(Z)V

    new-instance v9, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-direct {v9, v0, v5, v7}, Lcom/android/server/hdmi/RequestArcAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILcom/android/server/hdmi/HdmiControlService$36;)V

    invoke-virtual {v6, v9}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    :cond_6
    :goto_3
    const-class v9, Lcom/android/server/hdmi/DeviceSelectActionFromTv;

    invoke-virtual {v0, v9}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_7
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/hdmi/DeviceSelectActionFromTv;

    iget-object v11, v11, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v11

    if-ne v11, v5, :cond_7

    invoke-virtual {v6, v9, v7}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_4

    :cond_8
    const-class v10, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;

    invoke-virtual {v0, v10}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_9
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;

    iget-object v11, v11, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v11

    if-ne v11, v5, :cond_9

    invoke-virtual {v6, v9, v7}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_5

    :cond_a
    iget-object v6, v8, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {v6, v0, v5}, Lcom/android/server/hdmi/HdmiCecNetwork;->removeCecDevice(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p1, v9}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-nez p1, :cond_c

    iput v2, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    :cond_c
    invoke-static {v1, p2, v6}, Lcom/android/server/hdmi/HotplugDetectionAction;->infoListToBitSet(Ljava/util/List;ZZ)Ljava/util/BitSet;

    move-result-object p1

    invoke-virtual {v4}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    move p1, v3

    :goto_6
    add-int/2addr p1, v6

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p1

    if-eq p1, v3, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Add device by hot-plug detection:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    const/16 v1, 0x83

    invoke-static {v0, p1, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, v0, v7}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    goto :goto_6

    :cond_d
    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    iput p1, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mIsTvDevice:Z

    return-void
.end method

.method public static infoListToBitSet(Ljava/util/List;ZZ)Ljava/util/BitSet;
    .locals 9

    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    if-ge v3, v1, :cond_5

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/hardware/hdmi/HdmiDeviceInfo;

    const/4 v5, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_1

    goto :goto_1

    :cond_1
    move v6, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v6, v5

    :goto_2
    if-eqz p2, :cond_4

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v7

    const v8, 0xffff

    if-eq v7, v8, :cond_3

    goto :goto_3

    :cond_3
    move v5, v2

    :cond_4
    :goto_3
    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :cond_5
    return-object v0
.end method


# virtual methods
.method public final handleTimerEvent(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    if-ne v0, p1, :cond_4

    iget-boolean v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mIsTvDevice:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    add-int/2addr v0, p1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollAllDevices()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    check-cast p1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "HotPlugDetectionAction"

    const-string/jumbo v0, "Poll audio system."

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/server/hdmi/HotplugDetectionAction$1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/android/server/hdmi/HotplugDetectionAction$1;-><init>(Lcom/android/server/hdmi/HotplugDetectionAction;I)V

    const-wide/16 v0, 0x0

    const v2, 0x10002

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;IJ)V

    :cond_2
    :goto_0
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v0, 0x1388

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollAllDevices()V

    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const v0, 0xea60

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final pollAllDevices()V
    .locals 4

    const-string v0, "HotPlugDetectionAction"

    const-string/jumbo v1, "Poll all devices."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/hdmi/HotplugDetectionAction$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HotplugDetectionAction$1;-><init>(Lcom/android/server/hdmi/HotplugDetectionAction;I)V

    iget-boolean v1, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mIsTvDevice:Z

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x1f4

    :goto_0
    const v3, 0x10001

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;IJ)V

    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final start()V
    .locals 2

    const-string v0, "HotPlugDetectionAction"

    const-string v1, "Hot-plug detection started."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    iget-boolean v1, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mIsTvDevice:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x1388

    goto :goto_0

    :cond_0
    const v1, 0xea60

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void
.end method
