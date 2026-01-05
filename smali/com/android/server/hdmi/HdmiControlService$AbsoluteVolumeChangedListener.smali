.class Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;


# instance fields
.field public final mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

.field public final mSystemAudioDevice:Landroid/hardware/hdmi/HdmiDeviceInfo;

.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mSystemAudioDevice:Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-void
.end method


# virtual methods
.method public final onAudioDeviceVolumeAdjusted(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;II)V
    .locals 1

    const/16 p1, -0x64

    const/4 p2, 0x2

    const/4 v0, 0x1

    if-eq p3, p1, :cond_4

    const/4 p1, -0x1

    if-eq p3, p1, :cond_3

    if-eqz p3, :cond_1

    if-eq p3, v0, :cond_0

    const/16 p1, 0x64

    if-eq p3, p1, :cond_4

    const/16 p1, 0x65

    if-eq p3, p1, :cond_4

    goto :goto_2

    :cond_0
    const/16 p1, 0x18

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    const-class p1, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;

    iget p3, p1, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-ne p3, p2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->sendGiveAudioStatus()V

    goto :goto_0

    :cond_3
    const/16 p1, 0x19

    goto :goto_1

    :cond_4
    const/16 p1, 0xa4

    :goto_1
    const/4 p3, 0x0

    if-eqz p4, :cond_8

    if-eq p4, v0, :cond_7

    if-eq p4, p2, :cond_6

    :cond_5
    :goto_2
    return-void

    :cond_6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendVolumeKeyEvent(IZ)V

    return-void

    :cond_7
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendVolumeKeyEvent(IZ)V

    return-void

    :cond_8
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p2, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendVolumeKeyEvent(IZ)V

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendVolumeKeyEvent(IZ)V

    return-void
.end method

.method public final onAudioDeviceVolumeChanged(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;)V
    .locals 3

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mSystemAudioDevice:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/DeviceFeatures;->getSetAudioVolumeLevelSupport()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    :goto_0
    invoke-virtual {p2}, Landroid/media/VolumeInfo;->getVolumeIndex()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->updateAvbVolume(I)V

    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mSystemAudioDevice:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    const/16 v0, 0x71

    invoke-static {p1, p0, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mSystemAudioDevice:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    invoke-virtual {p2}, Landroid/media/VolumeInfo;->getVolumeIndex()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;Landroid/media/VolumeInfo;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method
