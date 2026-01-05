.class public final synthetic Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;

    iput p2, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;

    iget v2, v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$$ExternalSyntheticLambda0;->f$1:I

    iget v9, v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, v1, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    iget-object v0, v1, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mToken:Landroid/app/contextualsearch/CallbackToken;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v3}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->getContextualSearchPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    monitor-exit v3

    :goto_0
    move-object v5, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v7, "android.app.contextualsearch.action.LAUNCH_CONTEXTUAL_SEARCH"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, v3, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v7, 0xc0000

    invoke-virtual {v4, v5, v7, v9}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-nez v4, :cond_1

    monitor-exit v3

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_2

    monitor-exit v3

    goto :goto_0

    :cond_2
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    const/4 v4, 0x1

    if-nez v5, :cond_3

    move-object v5, v6

    goto/16 :goto_5

    :cond_3
    const v7, 0x10058000

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v7, "android.app.contextualsearch.extra.INVOCATION_TIME_MS"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v5, v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v7, "android.app.contextualsearch.extra.ENTRYPOINT"

    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "android.app.contextualsearch.extra.TOKEN"

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, v3, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isAssistDataAllowed()Z

    move-result v2

    iget-object v0, v3, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopVisibleActivities()Ljava/util/List;

    move-result-object v0

    new-instance v11, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v11, v7}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v10, 0x0

    move v12, v10

    :cond_4
    :goto_2
    if-ge v12, v8, :cond_6

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Lcom/android/server/wm/ActivityAssistInfo;

    if-eqz v2, :cond_5

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityAssistInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityAssistInfo;->getActivityToken()Landroid/os/IBinder;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v14, v3, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityAssistInfo;->getUserId()I

    move-result v13

    invoke-virtual {v14, v13}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v13

    if-eqz v13, :cond_4

    move v10, v4

    goto :goto_2

    :cond_6
    invoke-virtual {v5}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v12, 0x0

    invoke-virtual {v0, v8, v12, v13, v9}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v18

    if-eqz v2, :cond_7

    move v12, v10

    :try_start_1
    iget-object v10, v3, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v17, 0x0

    const/16 v22, 0x0

    move v13, v12

    const/4 v12, 0x1

    move v14, v13

    const/4 v13, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v19, v14

    const/4 v14, 0x1

    move/from16 v23, v19

    move-object/from16 v19, v8

    move/from16 v8, v23

    :try_start_2
    invoke-virtual/range {v10 .. v22}, Lcom/android/server/am/AssistDataRequester;->requestData(Ljava/util/List;ZZZZZZILjava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move/from16 v11, v18

    move-object/from16 v10, v19

    goto :goto_4

    :catch_0
    move-exception v0

    move/from16 v11, v18

    move-object/from16 v10, v19

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v10, v8

    move v8, v12

    move/from16 v11, v18

    :goto_3
    const-string v12, "ContextualSearchManagerService"

    const-string v13, "Could not request assist data"

    invoke-static {v12, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_7
    move v11, v10

    move-object v10, v8

    move v8, v11

    move/from16 v11, v18

    :goto_4
    iget-object v0, v3, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, v11}, Lcom/android/server/wm/WindowManagerInternal;->takeContextualSearchScreenshot(I)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_8
    if-eqz v6, :cond_9

    const-string/jumbo v3, "android.app.contextualsearch.extra.FLAG_SECURE_FOUND"

    invoke-virtual {v0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    move-result v0

    invoke-virtual {v5, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v2, :cond_9

    const-string/jumbo v0, "android.app.contextualsearch.extra.SCREENSHOT"

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->asShared()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_9
    new-instance v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, v11, v10}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/IMediaProjection;

    if-eqz v0, :cond_a

    const-string/jumbo v3, "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

    invoke-interface {v0}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    :cond_a
    const-string/jumbo v0, "android.app.contextualsearch.extra.IS_MANAGED_PROFILE_VISIBLE"

    invoke-virtual {v5, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v2, :cond_b

    const-string/jumbo v0, "android.app.contextualsearch.extra.VISIBLE_PACKAGE_NAMES"

    invoke-virtual {v5, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_b
    :goto_5
    if-eqz v5, :cond_c

    iget-object v0, v1, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    iget-object v10, v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Landroid/app/ActivityOptions;->makeCustomTaskAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActivityOptions;->setDisableStartingWindow(Z)V

    iget-object v2, v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    iget-object v3, v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityWithScreenshot(ILandroid/content/Intent;ILandroid/os/Bundle;Ljava/lang/String;I)I

    :cond_c
    return-void

    :goto_6
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
