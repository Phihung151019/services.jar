.class public final Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final create(Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;)Lcom/android/server/app/GameServiceProviderInstanceImpl;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v6

    new-instance v3, Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;->mContext:Landroid/content/Context;

    move-object v7, v3

    new-instance v3, Lcom/android/server/app/GameTaskInfoProvider;

    new-instance v8, Lcom/android/server/app/GameClassifierImpl;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-direct {v8, v5}, Lcom/android/server/app/GameClassifierImpl;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-direct {v3, v2, v6, v8}, Lcom/android/server/app/GameTaskInfoProvider;-><init>(Landroid/os/UserHandle;Landroid/app/IActivityTaskManager;Lcom/android/server/app/GameClassifierImpl;)V

    move-object v5, v2

    move-object v2, v4

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    const-class v8, Landroid/app/ActivityManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManagerInternal;

    const-string/jumbo v9, "window"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowManagerService;

    const-class v10, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowManagerInternal;

    const-class v11, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v11}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/ActivityTaskManagerInternal;

    new-instance v12, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl$GameServiceConnector;

    iget-object v13, v0, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;->mContext:Landroid/content/Context;

    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v15, "android.service.games.action.GAME_SERVICE"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v15, v1, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mGameServiceComponentName:Landroid/content/ComponentName;

    invoke-virtual {v14, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v14

    iget-object v15, v1, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    new-instance v15, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl$GameServiceConnector$$ExternalSyntheticLambda0;

    move-object/from16 v18, v2

    const/4 v2, 0x0

    invoke-direct {v15, v2}, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl$GameServiceConnector$$ExternalSyntheticLambda0;-><init>(I)V

    move-object/from16 v17, v15

    const/high16 v15, 0x100000

    invoke-direct/range {v12 .. v17}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    new-instance v19, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl$GameSessionServiceConnector;

    iget-object v2, v0, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;->mContext:Landroid/content/Context;

    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v14, "android.service.games.action.GAME_SESSION_SERVICE"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v14, v1, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mGameSessionServiceComponentName:Landroid/content/ComponentName;

    invoke-virtual {v13, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v21

    iget-object v1, v1, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v23

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl$GameServiceConnector$$ExternalSyntheticLambda0;

    const/4 v13, 0x1

    invoke-direct {v1, v13}, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl$GameServiceConnector$$ExternalSyntheticLambda0;-><init>(I)V

    const/high16 v22, 0x8180000

    move-object/from16 v24, v1

    move-object/from16 v20, v2

    invoke-direct/range {v19 .. v24}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    move-object v1, v5

    move-object v5, v8

    move-object v8, v10

    move-object v10, v12

    new-instance v12, Lcom/android/internal/util/ScreenshotHelper;

    iget-object v0, v0, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;->mContext:Landroid/content/Context;

    invoke-direct {v12, v0}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    move-object v0, v7

    move-object v7, v9

    move-object v9, v11

    move-object/from16 v2, v18

    move-object/from16 v11, v19

    invoke-direct/range {v0 .. v12}, Lcom/android/server/app/GameServiceProviderInstanceImpl;-><init>(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Lcom/android/server/app/GameTaskInfoProvider;Landroid/app/IActivityManager;Landroid/app/ActivityManagerInternal;Landroid/app/IActivityTaskManager;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/wm/ActivityTaskManagerInternal;Lcom/android/internal/infra/ServiceConnector;Lcom/android/internal/infra/ServiceConnector;Lcom/android/internal/util/ScreenshotHelper;)V

    return-object v0
.end method
