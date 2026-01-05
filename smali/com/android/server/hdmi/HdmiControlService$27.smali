.class public final Lcom/android/server/hdmi/HdmiControlService$27;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field public final synthetic val$isEnabled:I

.field public final synthetic val$listeners:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/Collection;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$27;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$27;->val$listeners:Ljava/util/Collection;

    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$27;->val$isEnabled:I

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$27;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lcom/android/server/hdmi/HdmiControlService;->mIsCecAvailable:Z

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$27;->val$listeners:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$27;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$27;->val$listeners:Ljava/util/Collection;

    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService$27;->val$isEnabled:I

    iget-boolean p1, p1, Lcom/android/server/hdmi/HdmiControlService;->mIsCecAvailable:Z

    invoke-static {p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->invokeHdmiControlStatusChangeListenerLocked(ILjava/util/Collection;Z)V

    :cond_1
    return-void
.end method
