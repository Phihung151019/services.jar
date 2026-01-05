.class public final Lcom/android/server/hdmi/HdmiCecController$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecController;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$1;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$1;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->isAllocatedLocalDeviceAddress(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
