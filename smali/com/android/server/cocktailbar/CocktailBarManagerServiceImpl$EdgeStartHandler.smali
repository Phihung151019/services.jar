.class public final Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EdgeStartHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EdgeStartHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    iget p1, p1, Landroid/os/Message;->what:I

    const-wide/16 v0, 0x1388

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EdgeStartHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    iget v4, p1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    iget p1, p1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextUserId:I

    const/16 v5, -0xa

    if-eq p1, v5, :cond_0

    move v4, p1

    :cond_0
    sget-boolean p1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->EMERGENCY_MODE_ENABLED:Z

    const-string p1, "CocktailBarManagerServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "EdgeStartHandler userId : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EdgeStartHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    iget v6, v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    const-string v7, ", currentUserId : "

    const-string v8, ", nextUserId : "

    invoke-static {v6, v4, v7, v8, v5}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EdgeStartHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    iget v6, v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.cocktailbar.intent.action.EDGE_APP_START"

    invoke-direct {p1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v5, 0x1000020

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EdgeStartHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    iget-object v5, v5, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EdgeStartHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    iget v4, p1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    iput v4, p1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextUserId:I

    iget v4, p1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCountForSendEdgeAppStartBr:I

    add-int/2addr v4, v3

    iput v4, p1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCountForSendEdgeAppStartBr:I

    const/4 p1, 0x3

    if-gt v4, p1, :cond_3

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string p0, "CocktailBarManagerServiceImpl"

    const-string p1, "EdgeStartHandler send MSG_CHECK_COCKTAIL_HOST"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-ne p1, v2, :cond_3

    sget-boolean p1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->EMERGENCY_MODE_ENABLED:Z

    const-string p1, "CocktailBarManagerServiceImpl"

    const-string v2, "EdgeStartHandler MSG_CHECK_COCKTAIL_HOST is received"

    invoke-static {p1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EdgeStartHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    iget-object p1, p1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    monitor-enter p1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EdgeStartHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    iget-object v2, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    return-void
.end method
