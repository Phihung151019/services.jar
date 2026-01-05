.class public final Lcom/android/server/hdmi/ResendCecCommandAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCallback:Lcom/android/server/hdmi/ResendCecCommandAction$1;

.field public final mCommand:Lcom/android/server/hdmi/HdmiCecMessage;

.field public final mResultCallback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

.field public mRetransmissionCount:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/hdmi/ResendCecCommandAction;->mRetransmissionCount:I

    new-instance p1, Lcom/android/server/hdmi/ResendCecCommandAction$1;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/ResendCecCommandAction$1;-><init>(Lcom/android/server/hdmi/ResendCecCommandAction;)V

    iput-object p1, p0, Lcom/android/server/hdmi/ResendCecCommandAction;->mCallback:Lcom/android/server/hdmi/ResendCecCommandAction$1;

    iput-object p2, p0, Lcom/android/server/hdmi/ResendCecCommandAction;->mCommand:Lcom/android/server/hdmi/HdmiCecMessage;

    iput-object p3, p0, Lcom/android/server/hdmi/ResendCecCommandAction;->mResultCallback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 p2, 0x12c

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void
.end method


# virtual methods
.method public final handleTimerEvent(I)V
    .locals 4

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const-string/jumbo v1, "ResendCecCommandAction"

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Timeout in invalid state:[Expected:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const-string v2, ", Actual:"

    const-string/jumbo v3, "]"

    invoke-static {p0, p1, v2, v3, v0}, Lcom/android/server/am/BroadcastController$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x1

    if-ne v0, p1, :cond_1

    const-string/jumbo p1, "sendCommandWithoutRetries failed, retry"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v0, p0, Lcom/android/server/hdmi/ResendCecCommandAction;->mCommand:Lcom/android/server/hdmi/HdmiCecMessage;

    iget-object p0, p0, Lcom/android/server/hdmi/ResendCecCommandAction;->mCallback:Lcom/android/server/hdmi/ResendCecCommandAction$1;

    invoke-virtual {p1, v0, p0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommandWithoutRetries(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    :cond_1
    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final start()V
    .locals 1

    const-string/jumbo p0, "ResendCecCommandAction"

    const-string/jumbo v0, "ResendCecCommandAction started"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
