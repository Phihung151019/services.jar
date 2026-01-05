.class public final Lcom/android/server/am/Pageboost$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/Pageboost$1;->$r8$classId:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const/4 p1, 0x1

    const-string/jumbo v0, "Pageboost"

    const/4 v1, 0x0

    iget p0, p0, Lcom/android/server/am/Pageboost$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    :try_start_0
    sget-object p0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x7

    invoke-static {p1, v1, p0}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(IILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x8

    invoke-static {p1, v1, p0}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(IILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    const-string/jumbo p0, "failed to mPackageReceiver by exception"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo p0, "apps "

    const-string/jumbo v2, "package "

    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    const-string/jumbo p0, "received ACTION_USER_UNLOCKED"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p0, Lcom/android/server/am/Pageboost;->user_unlock_done:Z

    if-nez p0, :cond_11

    const-string/jumbo p0, "init mGlobalAppLRU"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p1, Lcom/android/server/am/Pageboost;->user_unlock_done:Z

    const/4 v4, -0x1

    const/16 v5, 0x2710

    const/4 v1, 0x4

    const/4 v6, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/Pageboost;->sendMessage(IIIIILjava/lang/String;)V

    goto/16 :goto_7

    :cond_3
    sget-object v4, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-nez v4, :cond_4

    goto/16 :goto_7

    :cond_4
    const-string/jumbo v4, "com.sec.android.launcher.action.RUN_APP"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string/jumbo v5, "package"

    if-nez v4, :cond_9

    :try_start_2
    const-string/jumbo v4, "com.android.server.am.ACTION_PAGEBOOST"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    const-string/jumbo p0, "com.android.server.am.ACTION_VRAMDISK_PREFETCH"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "reason"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/am/Pageboost;->prefetchPackage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_6
    const-string/jumbo p0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    const-string/jumbo p0, "android.intent.action.REBOOT"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_1

    :cond_7
    const-string/jumbo p0, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v1, 0xd

    const/4 v6, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/Pageboost;->sendMessage(IIIIILjava/lang/String;)V

    goto/16 :goto_7

    :cond_8
    :goto_1
    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v7, 0x6

    const/4 v12, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static/range {v7 .. v12}, Lcom/android/server/am/Pageboost;->sendMessage(IIIIILjava/lang/String;)V

    goto/16 :goto_7

    :cond_9
    :goto_2
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_a

    goto :goto_7

    :cond_a
    const-string/jumbo v2, "apps"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_b
    const-string p0, " "

    invoke-virtual {p2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance p2, Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-direct {p2}, Lcom/android/server/am/Pageboost$PageboostAppList;-><init>()V

    move v2, v1

    :goto_3
    array-length v3, p0

    const/4 v4, 0x2

    if-ge v2, v3, :cond_10

    aget-object v3, p0, v2

    if-nez v3, :cond_c

    goto :goto_6

    :cond_c
    const-string v5, "/"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    if-nez v3, :cond_d

    goto :goto_5

    :cond_d
    sget-object v4, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-eqz v4, :cond_e

    invoke-virtual {v4, v3}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v3

    goto :goto_4

    :cond_e
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_f

    invoke-virtual {p2, v3, v1}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    :cond_f
    :goto_5
    add-int/2addr v2, p1

    goto :goto_3

    :cond_10
    :goto_6
    invoke-static {v4, v1, p2}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(IILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    const-string/jumbo p0, "failed to mReceiver by exception"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
