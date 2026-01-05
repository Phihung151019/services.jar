.class public final Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;
.super Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mHideEdgeServiceComponentCache:Ljava/util/HashSet;

.field public mVisible:Z

.field public final synthetic this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-direct {p0}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mHideEdgeServiceComponentCache:Ljava/util/HashSet;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mVisible:Z

    return-void
.end method


# virtual methods
.method public final notePauseComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 4

    const-string/jumbo p2, "notePauseComponent: "

    iget-object p4, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget-object p4, p4, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLock:Ljava/lang/Object;

    monitor-enter p4

    if-nez p1, :cond_0

    :try_start_0
    const-string p0, "CocktailBarUsageStateWatcher"

    const-string/jumbo p1, "pauseComponentName is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p4

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "CocktailBarUsageStateWatcher"

    const-string/jumbo p1, "pausePackageName is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p4

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget-object v1, v1, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mListener:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;

    check-cast v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object v2, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;

    const/4 v3, 0x6

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget-object p3, p3, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mComponentsToHideEdge:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "CocktailBarUsageStateWatcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget-object p2, p2, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mComponentsToHideEdge:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-boolean p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mVisible:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget-object p1, p1, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mComponentsToHideEdge:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget-object p1, p1, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mListener:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;

    check-cast p1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object p2, p1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-static {p2, v0, v0, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p2

    iget-object p1, p1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-boolean v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mVisible:Z

    :cond_3
    monitor-exit p4

    return-void

    :goto_0
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p3

    const-string/jumbo v3, "noteResumeComponent: getActivityInfo not found. "

    const-string/jumbo v4, "noteResumeComponent: "

    const-string/jumbo v5, "noteResumeComponent: "

    const-string/jumbo v6, "noteResumeComponent: "

    const-string/jumbo v7, "noteResumeComponent: "

    iget-object v8, v1, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget-object v8, v8, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v8

    if-nez v2, :cond_0

    :try_start_0
    const-string v0, "CocktailBarUsageStateWatcher"

    const-string/jumbo v1, "resumeComponentName is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    const-string v0, "CocktailBarUsageStateWatcher"

    const-string/jumbo v1, "resumePackageName is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    return-void

    :cond_1
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget-object v11, v11, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mListener:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;

    check-cast v11, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object v12, v11, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;

    const/4 v13, 0x5

    invoke-static {v12, v13, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    iget-object v11, v11, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v12, "android.intent.action.MAIN"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "android.intent.category.HOME"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v12, v1, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget-object v12, v12, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/high16 v13, 0x10000

    invoke-virtual {v12, v11, v13}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    if-eqz v11, :cond_2

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_2

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    :goto_0
    iget-object v13, v1, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget v14, v13, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLevel:I

    const/4 v15, 0x1

    and-int/2addr v14, v15

    if-eqz v14, :cond_7

    iget-object v13, v13, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    invoke-virtual {v13, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget-object v14, v14, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mComponentsToHideEdge:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "CocktailBarUsageStateWatcher"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v1, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget-object v7, v7, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mComponentsToHideEdge:Ljava/util/ArrayList;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    const/4 v7, 0x1

    :goto_1
    if-eqz v7, :cond_8

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, v1, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget-object v9, v9, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v11, 0x1

    invoke-virtual {v9, v11, v11}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_8

    const/4 v11, 0x0

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    if-nez v9, :cond_5

    const-string v6, "CocktailBarUsageStateWatcher"

    const-string/jumbo v9, "noteResumeComponent top task ComponentName is NULL"

    invoke-static {v6, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v11, v1, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget-object v11, v11, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    invoke-virtual {v11, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v1, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget-object v9, v9, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mComponentsToHideEdge:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "CocktailBarUsageStateWatcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v1, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget-object v6, v6, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mComponentsToHideEdge:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    :cond_7
    const/4 v7, 0x1

    :cond_8
    :goto_2
    if-eqz v7, :cond_c

    iget-object v6, v1, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget v6, v6, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLevel:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_c

    iget-object v6, v1, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mHideEdgeServiceComponentCache:Ljava/util/HashSet;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget-object v2, v2, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mComponentsToHideEdge:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "CocktailBarUsageStateWatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget-object v2, v2, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mComponentsToHideEdge:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    :goto_3
    const/4 v11, 0x0

    goto :goto_6

    :cond_a
    const/16 v5, 0x80

    :try_start_1
    invoke-virtual {v12, v2, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_b

    iget-object v6, v1, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget-object v6, v6, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mMetaDataHideEdgeService:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v5, v6, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    move v11, v5

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_b
    const/4 v11, 0x0

    :goto_4
    if-eqz v11, :cond_c

    iget-object v5, v1, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mHideEdgeServiceComponentCache:Ljava/util/HashSet;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget-object v5, v5, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mComponentsToHideEdge:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "CocktailBarUsageStateWatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget-object v4, v4, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mComponentsToHideEdge:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_5
    :try_start_2
    const-string v4, "CocktailBarUsageStateWatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_c
    move v11, v7

    :goto_6
    iget-boolean v0, v1, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mVisible:Z

    if-eqz v0, :cond_d

    if-nez v11, :cond_d

    iget-object v0, v1, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget-object v0, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mComponentsToHideEdge:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v1, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget-object v0, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mListener:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;

    check-cast v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object v2, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;

    const/4 v3, 0x0

    const/4 v11, 0x1

    invoke-static {v2, v11, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    iget-object v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-boolean v3, v1, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mVisible:Z

    :cond_d
    monitor-exit v8

    return-void

    :goto_7
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final noteStopComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 1

    const-string/jumbo p2, "noteStopComponent: "

    iget-object p4, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget-object p4, p4, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLock:Ljava/lang/Object;

    monitor-enter p4

    if-nez p1, :cond_0

    :try_start_0
    const-string p0, "CocktailBarUsageStateWatcher"

    const-string/jumbo p1, "stopComponentName is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p4

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "CocktailBarUsageStateWatcher"

    const-string/jumbo p1, "stopPackageName is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p4

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget-object p3, p3, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mComponentsToHideEdge:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "CocktailBarUsageStateWatcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget-object p2, p2, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mComponentsToHideEdge:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-boolean p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mVisible:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget-object p1, p1, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mComponentsToHideEdge:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget-object p1, p1, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mListener:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;

    check-cast p1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object p2, p1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-static {p2, v0, v0, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p2

    iget-object p1, p1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-boolean v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mVisible:Z

    :cond_3
    monitor-exit p4

    return-void

    :goto_0
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
