.class public final Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;->this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;->this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    invoke-virtual {p2, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;->this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    invoke-virtual {p2, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getInstanceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;->this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    invoke-virtual {p2, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->resetLicenseByAdmin(Ljava/lang/String;)Z

    :cond_1
    const-string/jumbo p2, "packageName"

    invoke-static {p2, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Landroid/os/Bundle;I)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string p0, "EnterpriseLicenseService"

    const-string/jumbo p1, "intent or getData are null. Skip."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
