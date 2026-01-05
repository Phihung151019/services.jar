.class public final synthetic Lcom/android/server/hdmi/SendKeyAction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/hdmi/SendKeyAction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/SendKeyAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/SendKeyAction$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/SendKeyAction;

    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/hdmi/SendKeyAction$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/SendKeyAction;

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v0, Lcom/android/server/hdmi/SendKeyAction$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/SendKeyAction$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/hdmi/SendKeyAction;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;-><init>(Ljava/lang/Runnable;)V

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
