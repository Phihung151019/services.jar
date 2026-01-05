.class public final synthetic Lcom/android/server/hdmi/HdmiCecLocalDevice$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$$ExternalSyntheticLambda0;->$r8$classId:I

    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$$ExternalSyntheticLambda0;->f$0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$$ExternalSyntheticLambda0;->$r8$classId:I

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$$ExternalSyntheticLambda0;->f$0:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    check-cast p1, Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;

    iget p1, p1, Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;->mTargetAddress:I

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
