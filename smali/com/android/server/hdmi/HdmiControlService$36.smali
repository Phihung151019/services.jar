.class public final Lcom/android/server/hdmi/HdmiControlService$36;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field public final synthetic val$enabled:Z


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$36;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput-boolean p2, p0, Lcom/android/server/hdmi/HdmiControlService$36;->val$enabled:Z

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(I)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "ARC termination before enabling eARC in the HAL failed with result: "

    const-string v1, "HdmiControlService"

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$36;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiControlService;->mEarcController:Lcom/android/server/hdmi/HdmiEarcController;

    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService$36;->val$enabled:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/hdmi/HdmiEarcController;->mControlHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiEarcController;->mEarcNativeWrapperImpl:Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->nativeSetEarcEnabled(Z)V

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$36;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v0, p1, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService$36;->val$enabled:Z

    iget p1, p1, Lcom/android/server/hdmi/HdmiControlService;->mEarcPortId:I

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "setHpdSignalType: portId %d, signal %d"

    invoke-static {v2, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeSetHpdSignalType(II)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Should run on service thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
