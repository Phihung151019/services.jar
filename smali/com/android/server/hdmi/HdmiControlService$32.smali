.class public final Lcom/android/server/hdmi/HdmiControlService$32;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$32;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    return-void
.end method


# virtual methods
.method public final onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 2

    sget-object p1, Lcom/android/server/hdmi/HdmiControlService;->HONG_KONG:Ljava/util/Locale;

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$32;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$32$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/server/hdmi/HdmiControlService$32$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    new-instance p0, Lcom/android/server/hdmi/HdmiCecController$6;

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecController$6;-><init>(Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiControlService$32$1;)V

    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    return-void
.end method
