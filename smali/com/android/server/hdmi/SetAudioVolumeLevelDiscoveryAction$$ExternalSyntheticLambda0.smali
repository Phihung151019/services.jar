.class public final synthetic Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;

    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void

    :cond_0
    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    return-void
.end method
