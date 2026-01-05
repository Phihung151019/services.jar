.class public final Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 p1, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object v1, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object p2, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    :goto_0
    if-ge v2, p2, :cond_1

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onConfigurationChanged()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/2addr v2, p1

    goto :goto_0

    :cond_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    const-string/jumbo v1, "android.intent.action.USER_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, -0x2710

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    const-string/jumbo p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onUserStarted : userId = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "CocktailBarManagerServiceContainer"

    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->getInstance()Lcom/android/server/cocktailbar/utils/CocktailBarHistory;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->recordServiceProcess(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->isNotEdgeRunnableId(I)Z

    move-result p2

    if-eqz p2, :cond_3

    goto/16 :goto_9

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    return-void

    :cond_4
    const-string/jumbo v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x2

    if-eqz v1, :cond_b

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    const-string/jumbo v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "CocktailBarManagerServiceContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onUserStopped : userId = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->getInstance()Lcom/android/server/cocktailbar/utils/CocktailBarHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onUserStopped : userId = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->recordServiceProcess(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->isNotEdgeRunnableId(I)Z

    move-result v0

    if-nez v0, :cond_5

    iput v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStartCocktailBarCnt:I

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStartCocktailBarHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_9

    :cond_6
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_7

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_a

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-virtual {v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->systemDestroy()V

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->removeAt(I)V

    const/16 v0, 0x64

    if-lt p2, v0, :cond_a

    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget p2, p2, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    if-ne p2, v4, :cond_a

    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mPersonalManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "persona"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mPersonalManager:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_8
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object p1

    if-eqz p1, :cond_a

    iget p2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    invoke-virtual {p0, p2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    if-eqz p2, :cond_9

    iget v3, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v2, v3, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->onUnsetMode(IILjava/lang/String;)V

    :cond_9
    invoke-interface {p1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result p2

    invoke-interface {p1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getCocktailType()I

    move-result v4

    invoke-virtual {v0, v2, p2, v4, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->onSetMode(IIILjava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result p1

    iput p1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    :cond_a
    monitor-exit v1

    return-void

    :goto_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_b
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    const-string/jumbo p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p2, "onUserSwitched : mCurrentUserId was stopped so start userId = "

    const-string v0, "CocktailBarManagerServiceContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onUserSwitched : userId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->getInstance()Lcom/android/server/cocktailbar/utils/CocktailBarHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onUserSwitched : userId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->recordServiceProcess(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->isNotEdgeRunnableId(I)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->onUserSwitchCocktailImpl(I)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_d

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-le v2, v1, :cond_d

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->onUserSwitchCocktailImpl(I)V

    iget p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    const/16 v1, -0xa

    if-eq p2, v1, :cond_e

    new-instance p2, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.cocktailbar.intent.action.USER_SWITCHED"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x11000020

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "user_id"

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_6

    :catchall_2
    move-exception p0

    goto :goto_7

    :cond_d
    :goto_5
    const-string v1, "CocktailBarManagerServiceContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V

    const-wide/16 v2, 0x7530

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e
    :goto_6
    iput p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    monitor-exit v0

    return-void

    :goto_7
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :cond_f
    const-string/jumbo v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x3

    if-eqz v1, :cond_11

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_10

    goto :goto_9

    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "com.sec.android.app.launcher"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_11
    sget v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->$r8$clinit:I

    const-string v1, "CocktailBarManagerServiceContainer"

    const-string/jumbo v5, "onReceive : "

    invoke-static {v5, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget-object v1, v0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    :cond_12
    :goto_8
    if-ge v6, v5, :cond_16

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/2addr v6, p1

    check-cast v7, Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    invoke-interface {v7}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getRegistrationType()I

    move-result v8

    if-ne v8, p1, :cond_12

    invoke-interface {v7, p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->onBroadcastReceived(Landroid/content/Intent;)I

    move-result v8

    if-eq v8, p1, :cond_15

    if-eq v8, v4, :cond_14

    if-eq v8, v3, :cond_13

    goto :goto_8

    :cond_13
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    iget p2, v0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    invoke-interface {v7}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v1

    if-ne p2, v1, :cond_15

    iget-object p2, v0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object p2, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {p2, p1}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v1

    invoke-virtual {p2, p0, v1}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onSetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    iput p1, v0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    return-void

    :cond_14
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    invoke-virtual {v0, p0, v7}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onSetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    :cond_15
    :goto_9
    return-void

    :cond_16
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_18

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_a
    if-ge v2, v1, :cond_19

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object v3, v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz v3, :cond_17

    invoke-virtual {v3, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onBroadcastReceived(Landroid/content/Intent;)V

    goto :goto_b

    :catchall_3
    move-exception p0

    goto :goto_c

    :cond_17
    :goto_b
    add-int/2addr v2, p1

    goto :goto_a

    :cond_18
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz p0, :cond_19

    invoke-virtual {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onBroadcastReceived(Landroid/content/Intent;)V

    :cond_19
    monitor-exit v0

    return-void

    :goto_c
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p0
.end method
