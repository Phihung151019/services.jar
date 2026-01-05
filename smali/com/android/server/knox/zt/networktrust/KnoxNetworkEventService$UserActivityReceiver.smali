.class public final Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$UserActivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$UserActivityReceiver;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$UserActivityReceiver;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->sendMessageToHandler(ILandroid/os/Bundle;)V

    :cond_0
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "package"

    const-string/jumbo v2, "uid"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const-string/jumbo v5, "android.intent.extra.UID"

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v6, "android.intent.extra.REPLACING"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v3

    :goto_0
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v7, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$UserActivityReceiver;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    const/4 v6, 0x4

    invoke-virtual {v0, v6, v7}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->sendMessageToHandler(ILandroid/os/Bundle;)V

    :cond_3
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    :cond_4
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$UserActivityReceiver;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    const/4 p2, 0x5

    invoke-virtual {p0, p2, p1}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->sendMessageToHandler(ILandroid/os/Bundle;)V

    :cond_5
    :goto_1
    return-void
.end method
