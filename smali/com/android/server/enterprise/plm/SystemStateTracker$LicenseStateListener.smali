.class public final Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/enterprise/license/IActivationKlmElmObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/plm/SystemStateTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/plm/SystemStateTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;->this$0:Lcom/android/server/enterprise/plm/SystemStateTracker;

    return-void
.end method


# virtual methods
.method public final onUpdateContainerLicenseStatus(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onUpdateElm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .locals 0

    return-void
.end method

.method public final onUpdateKlm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .locals 1

    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->isActivation()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;->this$0:Lcom/android/server/enterprise/plm/SystemStateTracker;

    invoke-static {p0, v0, p1, p2}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
