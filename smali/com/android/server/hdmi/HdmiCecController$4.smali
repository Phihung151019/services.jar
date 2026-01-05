.class public final Lcom/android/server/hdmi/HdmiCecController$4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$assignedAddress:I

.field public final synthetic val$callback:Lcom/android/server/hdmi/HdmiControlService$22;

.field public final synthetic val$deviceType:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService$22;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$4;->val$callback:Lcom/android/server/hdmi/HdmiControlService$22;

    iput p2, p0, Lcom/android/server/hdmi/HdmiCecController$4;->val$deviceType:I

    iput p3, p0, Lcom/android/server/hdmi/HdmiCecController$4;->val$assignedAddress:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$4;->val$callback:Lcom/android/server/hdmi/HdmiControlService$22;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecController$4;->val$deviceType:I

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecController$4;->val$assignedAddress:I

    const/16 v2, 0xf

    const/4 v3, 0x0

    if-ne p0, v2, :cond_0

    const-string p0, "HdmiControlService"

    const-string v2, "Failed to allocate address:[device_type:"

    const-string/jumbo v4, "]"

    invoke-static {v1, v2, v4, p0}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_1

    :cond_0
    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    move-result v4

    const-string/jumbo v5, "device_name"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    move-object v6, v5

    :goto_0
    invoke-static {}, Landroid/hardware/hdmi/HdmiDeviceInfo;->cecDeviceBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setLogicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v5

    iget-object v7, v2, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {v7}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPhysicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v5

    iget-object v7, v2, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {v7}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    move-result v7

    iget-object v8, v2, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {v8, v7}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPortId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDeviceType(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setVendorId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDisplayName(Ljava/lang/String;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDevicePowerStatus(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setCecVersion(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/hdmi/HdmiControlService$22;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    iget-object v5, v4, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iput-object v2, v4, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    iget-object v4, v0, Lcom/android/server/hdmi/HdmiControlService$22;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    iget-object v2, v2, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlService$22;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {v1, p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeAddLogicalAddress(I)I

    :cond_2
    iget-object p0, v0, Lcom/android/server/hdmi/HdmiControlService$22;->val$allocatedDevices:Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService$22;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object p0, v0, Lcom/android/server/hdmi/HdmiControlService$22;->val$allocatingDevices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService$22;->val$finished:[I

    aget v2, v1, v3

    const/4 v4, 0x1

    add-int/2addr v2, v4

    aput v2, v1, v3

    if-ne p0, v2, :cond_13

    iget p0, v0, Lcom/android/server/hdmi/HdmiControlService$22;->val$initiatedBy:I

    const/4 v1, 0x4

    if-eq p0, v1, :cond_b

    const/4 v2, 0x5

    if-eq p0, v2, :cond_b

    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v2, v1, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    iget v2, v2, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    move v6, v4

    goto :goto_2

    :cond_3
    move v6, v3

    :goto_2
    iget-object v7, v1, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x3

    if-eqz v6, :cond_4

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;

    const/4 v6, 0x1

    invoke-direct {v2, v1, v6}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    invoke-virtual {v7, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_4
    if-ne v2, v8, :cond_5

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;

    const/4 v6, 0x2

    invoke-direct {v2, v1, v6}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    invoke-virtual {v7, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_3
    iput-boolean v3, v1, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAutoWakeup()Z

    move-result v6

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v9, "enableWakeupByOtp: %b"

    invoke-static {v9, v7}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {v2, v6}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->enableWakeupByOtp(Z)V

    :cond_6
    const/4 v2, -0x1

    if-eqz p0, :cond_9

    if-eq p0, v4, :cond_8

    if-eq p0, v5, :cond_7

    if-eq p0, v8, :cond_a

    move v5, v2

    goto :goto_5

    :cond_7
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getAllCecLocalDevices()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v3

    :goto_4
    if-ge v8, v7, :cond_a

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v9, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onInitializeCecComplete(I)V

    goto :goto_4

    :cond_8
    move v5, v3

    goto :goto_5

    :cond_9
    move v5, v4

    :cond_a
    :goto_5
    if-eq v5, v2, :cond_c

    invoke-virtual {v1, v5, v4}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnControlStateChanged(IZ)V

    invoke-virtual {v1, v4}, Lcom/android/server/hdmi/HdmiControlService;->announceHdmiControlStatusChange(I)V

    goto :goto_6

    :cond_b
    if-ne p0, v1, :cond_c

    iget-object p0, v0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDisplayStatusCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    if-nez v1, :cond_c

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_1
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget v2, v1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:I

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->announceHdmiControlStatusChange(I)V

    monitor-exit p0

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_c
    :goto_6
    iget-object p0, v0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService$22;->val$allocatedDevices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v5, v3

    :goto_7
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_e

    iget-object v6, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/android/server/hdmi/HdmiCecNetwork$$ExternalSyntheticLambda0;

    invoke-direct {v8, v6}, Lcom/android/server/hdmi/HdmiCecNetwork$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v5, v3

    :goto_8
    if-ge v5, v1, :cond_f

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/Integer;

    iget-object v7, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_8

    :cond_f
    iget-object p0, v0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput-boolean v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService$22;->val$allocatedDevices:Ljava/util/ArrayList;

    iget v2, v0, Lcom/android/server/hdmi/HdmiControlService$22;->val$initiatedBy:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->notifyAddressAllocated(Ljava/util/ArrayList;I)V

    iget-object p0, v0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDisplayStatusCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    iget-object p0, v0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mDisplayStatusCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    :cond_10
    iget-object p0, v0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mOtpCallbackPendingAddressAllocation:Landroid/hardware/hdmi/IHdmiControlCallback;

    if-eqz v1, :cond_11

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    iget-object p0, v0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mOtpCallbackPendingAddressAllocation:Landroid/hardware/hdmi/IHdmiControlCallback;

    :cond_11
    iget-object p0, v0, Lcom/android/server/hdmi/HdmiControlService$22;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/CecMessageBuffer;

    iget-object v0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_9
    if-ge v3, v1, :cond_12

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Lcom/android/server/hdmi/HdmiCecMessage;

    new-instance v4, Lcom/android/server/hdmi/CecMessageBuffer$1;

    invoke-direct {v4, p0, v2}, Lcom/android/server/hdmi/CecMessageBuffer$1;-><init>(Lcom/android/server/hdmi/CecMessageBuffer;Lcom/android/server/hdmi/HdmiCecMessage;)V

    iget-object v2, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v4}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    goto :goto_9

    :cond_12
    iget-object p0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_13
    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
