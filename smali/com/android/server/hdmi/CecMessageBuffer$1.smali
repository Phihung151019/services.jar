.class public final Lcom/android/server/hdmi/CecMessageBuffer$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/CecMessageBuffer;

.field public final synthetic val$message:Lcom/android/server/hdmi/HdmiCecMessage;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/CecMessageBuffer;Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/CecMessageBuffer$1;->this$0:Lcom/android/server/hdmi/CecMessageBuffer;

    iput-object p2, p0, Lcom/android/server/hdmi/CecMessageBuffer$1;->val$message:Lcom/android/server/hdmi/HdmiCecMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/CecMessageBuffer$1;->this$0:Lcom/android/server/hdmi/CecMessageBuffer;

    iget-object v0, v0, Lcom/android/server/hdmi/CecMessageBuffer;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object p0, p0, Lcom/android/server/hdmi/CecMessageBuffer$1;->val$message:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiControlService;->handleCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)I

    return-void
.end method
