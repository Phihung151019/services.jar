.class public final Lcom/android/server/app/GameManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/app/GameManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/app/GameManagerService;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/app/GameManagerService$3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    iget p1, p0, Lcom/android/server/app/GameManagerService$3;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v1, v1, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v2, 0x20000

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->category:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_1

    goto/16 :goto_4

    :catch_0
    :cond_1
    :try_start_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x1f50b9c2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_3

    const v3, 0x5c1076e2

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v5

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_7

    if-eq v1, v5, :cond_5

    goto :goto_4

    :cond_5
    const-string/jumbo v1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object p2, p2, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v1, v1, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object p2, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object p2, p2, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v1, v1, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v1, v1, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameManagerSettings;

    iget-object v2, v1, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lcom/android/server/app/GameManagerSettings;->mConfigOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    const/16 v2, 0x2710

    invoke-virtual {p1, v0, v5, v2, v1}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IIILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    const-string/jumbo p1, "android.intent.action.PACKAGE_REMOVED"

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IIILjava/lang/String;)V

    monitor-exit p2

    goto :goto_4

    :goto_3
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1

    :catchall_1
    move-exception p0

    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0

    :cond_7
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v5, p1}, Lcom/android/server/app/GameManagerService;->updateConfigsForUser(IZ[Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_4

    :catch_1
    const-string p0, "GameManagerService"

    const-string p1, "Failed to get package name for new package"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    return-void

    :pswitch_0
    const-string/jumbo p1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object p1, p1, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_9
    iget-object p2, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object p2, p2, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    const-string/jumbo v2, "RECEIVE_SHUTDOWN_INDENT"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4, v3, v2}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IIILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    const-string/jumbo v2, "RECEIVE_SHUTDOWN_INDENT"

    const/4 v4, 0x6

    invoke-virtual {v1, v0, v4, v3, v2}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IIILjava/lang/String;)V

    goto :goto_5

    :catchall_2
    move-exception p0

    goto :goto_6

    :cond_9
    monitor-exit p1

    goto :goto_7

    :goto_6
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p0

    :cond_a
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
