.class public final Lcom/android/server/hdmi/ResendCecCommandAction$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/ResendCecCommandAction;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/ResendCecCommandAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/ResendCecCommandAction$1;->this$0:Lcom/android/server/hdmi/ResendCecCommandAction;

    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/hdmi/ResendCecCommandAction$1;->this$0:Lcom/android/server/hdmi/ResendCecCommandAction;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/server/hdmi/ResendCecCommandAction;->mRetransmissionCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/hdmi/ResendCecCommandAction;->mRetransmissionCount:I

    if-ge v1, v0, :cond_0

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 p1, 0x12c

    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/ResendCecCommandAction;->mResultCallback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;->onSendCompleted(I)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    return-void
.end method
