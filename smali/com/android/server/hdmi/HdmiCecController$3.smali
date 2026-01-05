.class public final Lcom/android/server/hdmi/HdmiCecController$3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecController;

.field public final synthetic val$callback:Lcom/android/server/hdmi/HdmiControlService$22;

.field public final synthetic val$deviceType:I

.field public final synthetic val$preferredAddress:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecController;IILcom/android/server/hdmi/HdmiControlService$22;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$3;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    iput p2, p0, Lcom/android/server/hdmi/HdmiCecController$3;->val$deviceType:I

    iput p3, p0, Lcom/android/server/hdmi/HdmiCecController$3;->val$preferredAddress:I

    iput-object p4, p0, Lcom/android/server/hdmi/HdmiCecController$3;->val$callback:Lcom/android/server/hdmi/HdmiControlService$22;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$3;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecController$3;->val$deviceType:I

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecController$3;->val$preferredAddress:I

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$3;->val$callback:Lcom/android/server/hdmi/HdmiControlService$22;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiUtils;->isEligibleAddressForDevice(II)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/16 v6, 0x10

    if-ge v5, v6, :cond_4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v1, v5}, Lcom/android/server/hdmi/HdmiUtils;->isEligibleAddressForDevice(II)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    move-result v6

    invoke-static {v5}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0xc

    if-eq v5, v7, :cond_1

    const/16 v7, 0xd

    if-ne v5, v7, :cond_2

    :cond_1
    const/4 v7, 0x6

    if-lt v6, v7, :cond_3

    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v4

    :goto_1
    if-ge v6, v5, :cond_7

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Ljava/lang/Integer;

    move v8, v4

    :goto_2
    const/4 v9, 0x3

    if-ge v8, v9, :cond_6

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Lcom/android/server/hdmi/HdmiCecController;->sendPollMessage(II)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_3

    :cond_7
    const/16 v3, 0xf

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v4, "New logical address for device [%d]: [preferred:%d, assigned:%d]"

    invoke-static {v4, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/android/server/hdmi/HdmiCecController$4;

    invoke-direct {v2, p0, v1, v3}, Lcom/android/server/hdmi/HdmiCecController$4;-><init>(Lcom/android/server/hdmi/HdmiControlService$22;II)V

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "Should run on io thread."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
