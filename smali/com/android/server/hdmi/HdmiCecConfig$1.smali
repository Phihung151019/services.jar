.class public final Lcom/android/server/hdmi/HdmiCecConfig$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$listener:Lcom/android/server/hdmi/HdmiControlService$2;

.field public final synthetic val$setting:Lcom/android/server/hdmi/HdmiCecConfig$Setting;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService$2;Lcom/android/server/hdmi/HdmiCecConfig$Setting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$1;->val$listener:Lcom/android/server/hdmi/HdmiControlService$2;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecConfig$1;->val$setting:Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig$1;->val$listener:Lcom/android/server/hdmi/HdmiControlService$2;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig$1;->val$setting:Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$2;->onChange(Ljava/lang/String;)V

    return-void
.end method
