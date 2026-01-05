.class public final Lcom/android/server/devicepolicy/CertificateMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/CertificateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/CertificateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/devicepolicy/CertificateMonitor$1;->this$0:Lcom/android/server/devicepolicy/CertificateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string/jumbo p1, "android.intent.extra.user_handle"

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/devicepolicy/CertificateMonitor$1;->this$0:Lcom/android/server/devicepolicy/CertificateMonitor;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/CertificateMonitor;->updateInstalledCertificates(Landroid/os/UserHandle;)V

    return-void
.end method
