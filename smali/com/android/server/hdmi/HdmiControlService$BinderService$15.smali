.class public final Lcom/android/server/hdmi/HdmiControlService$BinderService$15;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field public final synthetic val$deviceType:I

.field public final synthetic val$hasVendorId:Z

.field public final synthetic val$params:[B

.field public final synthetic val$targetAddress:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;IZI[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->val$deviceType:I

    iput-boolean p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->val$hasVendorId:Z

    iput p4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->val$targetAddress:I

    iput-object p5, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->val$params:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->val$deviceType:I

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "HdmiControlService"

    const-string/jumbo v0, "Local device not available"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->val$hasVendorId:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    iget v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->val$targetAddress:I

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v4, v4, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v4

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->val$params:[B

    array-length v5, p0

    const/4 v6, 0x3

    add-int/2addr v5, v6

    new-array v5, v5, [B

    shr-int/lit8 v7, v4, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    const/4 v8, 0x0

    aput-byte v7, v5, v8

    shr-int/lit8 v7, v4, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    const/4 v9, 0x1

    aput-byte v7, v5, v9

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v7, 0x2

    aput-byte v4, v5, v7

    array-length v4, p0

    invoke-static {p0, v8, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p0, 0xa0

    invoke-static {v0, v3, p0, v5}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    invoke-virtual {v1, p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    iget v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->val$targetAddress:I

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->val$params:[B

    const/16 v4, 0x89

    invoke-static {v0, v3, v4, p0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    invoke-virtual {v1, p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method
