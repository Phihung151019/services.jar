.class public final Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;


# instance fields
.field public final mReason:I

.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;->this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    iput p2, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;->mReason:I

    return-void
.end method


# virtual methods
.method public final handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;->this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;->mReason:I

    invoke-virtual {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->maySendFeatureAbortCommand(ILcom/android/server/hdmi/HdmiCecMessage;)V

    const/4 p0, 0x1

    return p0
.end method
