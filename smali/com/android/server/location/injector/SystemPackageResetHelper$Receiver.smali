.class public final Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/injector/SystemPackageResetHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/location/injector/SystemPackageResetHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;->this$0:Lcom/android/server/location/injector/SystemPackageResetHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_0
    move v3, v0

    goto :goto_1

    :sswitch_0
    const-string/jumbo v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v5, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    move v3, v2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v5, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    move v3, v1

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const-string/jumbo v0, "android.intent.extra.changed_component_name_list"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_a

    array-length v0, p2

    move v3, v1

    :goto_2
    if-ge v3, v0, :cond_a

    aget-object v5, p2, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez p1, :cond_a

    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v4, v1}, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;Ljava/lang/String;I)V

    check-cast p1, Landroid/os/HandlerExecutor;

    invoke-virtual {p1, p2}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_7
    add-int/2addr v3, v2

    goto :goto_2

    :pswitch_1
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v4, v2}, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;Ljava/lang/String;I)V

    check-cast p1, Landroid/os/HandlerExecutor;

    invoke-virtual {p1, p2}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_2
    const-string/jumbo p1, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    array-length p2, p1

    :goto_3
    if-ge v1, p2, :cond_a

    aget-object v3, p1, v1

    iget-object v4, p0, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;->this$0:Lcom/android/server/location/injector/SystemPackageResetHelper;

    iget-object v4, v4, Lcom/android/server/location/injector/SystemPackageResetHelper;->mResponders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/injector/PackageResetHelper$Responder;

    invoke-interface {v5, v3}, Lcom/android/server/location/injector/PackageResetHelper$Responder;->isResetableForPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0, v0}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    return-void

    :cond_9
    add-int/2addr v1, v2

    goto :goto_3

    :catch_0
    :cond_a
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3ff1ba66 -> :sswitch_3
        -0x2d2ad030 -> :sswitch_2
        0xa480416 -> :sswitch_1
        0x1f50b9c2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
