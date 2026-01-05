.class public final Lcom/android/server/connectivity/NetdEventListenerService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/NetdEventListenerService;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetdEventListenerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService$1;->this$0:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const-string/jumbo p2, "com.samsung.android.mobiledoctor.GETMOBILEDATAFILES"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string/jumbo p2, "com.samsung.android.action.ACTION_REQUEST_INTERNET_LOG"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const-string/jumbo p2, "com.samsung.android.mobiledoctor.DELETEMOBILEDATAFILES"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/server/connectivity/NetdEventListenerService$1;->this$0:Lcom/android/server/connectivity/NetdEventListenerService;

    sget-object p1, Lcom/android/server/connectivity/NetdEventListenerService;->sInstance:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/io/File;

    const-string p1, "/data/log/err/mobiledata_dns.dat"

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/server/connectivity/NetdEventListenerService$1;->this$0:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetdEventListenerService;->writeMobileDataDnsFile()V

    :cond_4
    :goto_1
    return-void
.end method
