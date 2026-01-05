.class public final Lcom/android/server/hdmi/HdmiCecPowerStatusController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

.field public mPowerStatus:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    return-void
.end method


# virtual methods
.method public final setPowerStatus(IZ)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    if-ne p1, v2, :cond_0

    goto :goto_1

    :cond_0
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    move-result p2

    const/4 v2, 0x6

    if-lt p2, v2, :cond_1

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getAllCecLocalDevices()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/2addr v3, v0

    check-cast v4, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v4

    and-int/lit16 v5, p0, 0xff

    int-to-byte v5, v5

    new-array v6, v0, [B

    aput-byte v5, v6, v1

    const/16 v5, 0x90

    const/16 v7, 0xf

    invoke-static {v4, v7, v5, v6}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
