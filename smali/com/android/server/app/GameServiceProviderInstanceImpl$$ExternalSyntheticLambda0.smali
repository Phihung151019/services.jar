.class public final synthetic Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

.field public final synthetic f$1:Landroid/view/SurfaceControl;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/internal/infra/AndroidFuture;

.field public final synthetic f$4:Lcom/android/server/app/GameSessionRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;Landroid/view/SurfaceControl;ILcom/android/internal/infra/AndroidFuture;Lcom/android/server/app/GameSessionRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    iput-object p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl;

    iput p3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;->f$3:Lcom/android/internal/infra/AndroidFuture;

    iput-object p5, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;->f$4:Lcom/android/server/app/GameSessionRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;->f$3:Lcom/android/internal/infra/AndroidFuture;

    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;->f$4:Lcom/android/server/app/GameSessionRecord;

    new-instance v4, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    if-eqz v1, :cond_0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/view/SurfaceControl;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v4, v5}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setExcludeLayers([Landroid/view/SurfaceControl;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    :cond_0
    iget-object v1, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v2, v4}, Lcom/android/server/wm/WindowManagerService;->captureTaskBitmap(ILandroid/window/ScreenCapture$LayerCaptureArgs$Builder;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v4, "GameServiceProviderInstance"

    if-nez v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Could not get bitmap for id: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/service/games/GameScreenshotResult;->createInternalErrorResult()Landroid/service/games/GameScreenshotResult;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v5, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

    invoke-virtual {v5, v2}, Lcom/android/server/app/GameTaskInfoProvider;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    if-nez v5, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Could not get running task info for id: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/service/games/GameScreenshotResult;->createInternalErrorResult()Landroid/service/games/GameScreenshotResult;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    :cond_2
    iget-object v4, v5, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    new-instance v5, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v5, v3}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    new-instance v3, Lcom/android/internal/util/ScreenshotRequest$Builder;

    const/4 v6, 0x3

    const/4 v7, 0x5

    invoke-direct {v3, v6, v7}, Lcom/android/internal/util/ScreenshotRequest$Builder;-><init>(II)V

    iget-object p0, p0, Lcom/android/server/app/GameSessionRecord;->mRootComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, p0}, Lcom/android/internal/util/ScreenshotRequest$Builder;->setTopComponent(Landroid/content/ComponentName;)Lcom/android/internal/util/ScreenshotRequest$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/internal/util/ScreenshotRequest$Builder;->setTaskId(I)Lcom/android/internal/util/ScreenshotRequest$Builder;

    move-result-object p0

    iget-object v2, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/util/ScreenshotRequest$Builder;->setUserId(I)Lcom/android/internal/util/ScreenshotRequest$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/internal/util/ScreenshotRequest$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/android/internal/util/ScreenshotRequest$Builder;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/internal/util/ScreenshotRequest$Builder;->setBoundsOnScreen(Landroid/graphics/Rect;)Lcom/android/internal/util/ScreenshotRequest$Builder;

    move-result-object p0

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {p0, v1}, Lcom/android/internal/util/ScreenshotRequest$Builder;->setInsets(Landroid/graphics/Insets;)Lcom/android/internal/util/ScreenshotRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/util/ScreenshotRequest$Builder;->build()Lcom/android/internal/util/ScreenshotRequest;

    move-result-object p0

    iget-object v0, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v5}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(Lcom/android/internal/util/ScreenshotRequest;Landroid/os/Handler;Ljava/util/function/Consumer;)V

    return-void
.end method
