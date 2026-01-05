.class public final Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "new_install_or_update"

    const-string/jumbo v3, "package"

    const-string/jumbo v4, "uid"

    const-string/jumbo v5, "android.intent.extra.UID"

    const-string/jumbo v6, "android.intent.extra.REPLACING"

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    :cond_0
    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-le p2, v7, :cond_9

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v3, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendMessageToHandler(ILandroid/os/Bundle;)V

    return-void

    :cond_1
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    :cond_2
    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v3, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendMessageToHandler(ILandroid/os/Bundle;)V

    return-void

    :cond_3
    const-string/jumbo v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    const/4 p2, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendMessageToHandler(ILandroid/os/Bundle;)V

    return-void

    :cond_4
    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    const/4 p2, 0x4

    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendMessageToHandler(ILandroid/os/Bundle;)V

    return-void

    :cond_5
    const-string/jumbo v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    const/4 p2, 0x5

    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendMessageToHandler(ILandroid/os/Bundle;)V

    return-void

    :cond_6
    const-string/jumbo v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo p1, "state"

    invoke-virtual {p2, p1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendMessageToHandler(ILandroid/os/Bundle;)V

    return-void

    :cond_7
    const-string/jumbo v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    const/4 p2, 0x7

    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendMessageToHandler(ILandroid/os/Bundle;)V

    return-void

    :cond_8
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    const/16 p2, 0xc

    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendMessageToHandler(ILandroid/os/Bundle;)V

    :cond_9
    return-void
.end method
