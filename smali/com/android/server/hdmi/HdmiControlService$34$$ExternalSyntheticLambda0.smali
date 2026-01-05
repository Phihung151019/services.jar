.class public final synthetic Lcom/android/server/hdmi/HdmiControlService$34$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/hdmi/HdmiControlService$2;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService$2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$34$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/HdmiControlService$2;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$34$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$34$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/HdmiControlService$2;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$34$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    check-cast p1, Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/server/hdmi/HdmiControlService;->HONG_KONG:Ljava/util/Locale;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {p1, p0}, Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;->onChange(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "HdmiControlService"

    const-string v0, "Failed to report setting change"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
