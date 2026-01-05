.class public final Lcom/android/server/display/mode/RefreshRateModeManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;


# static fields
.field public static final mControllerByToken:Ljava/util/HashMap;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

.field public mDisplayStateListener:Lcom/android/server/display/mode/RefreshRateModeManager$1;

.field public mDisplayToken:Ljava/util/concurrent/atomic/AtomicReference;

.field public mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

.field public mLock:Ljava/lang/Object;

.field public mModeSettingsObserver:Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/display/mode/RefreshRateModeManager;->mControllerByToken:Ljava/util/HashMap;

    return-void
.end method

.method public static addControllerByDisplayToken(Landroid/os/IBinder;)V
    .locals 4

    const-string/jumbo v0, "display - "

    sget-object v1, Lcom/android/server/display/mode/RefreshRateModeManager;->mControllerByToken:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/android/server/display/mode/RefreshRateController;->makeController(Landroid/os/IBinder;)Lcom/android/server/display/mode/RefreshRateController;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "RefreshRateModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " registered"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "  RefreshRateModeManager"

    const-string v1, "    mDisplayToken="

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mDisplayToken:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    mRefreshRateModeByDisplayToken"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/display/mode/RefreshRateModeManager;->mControllerByToken:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/display/mode/RefreshRateModeManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/display/mode/RefreshRateModeManager$$ExternalSyntheticLambda2;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "DisplayModeDirector History"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mDisplayModeDirectorHistory:Lcom/samsung/android/core/SystemHistory;

    invoke-virtual {p0, p1}, Lcom/samsung/android/core/SystemHistory;->dump(Ljava/io/PrintWriter;)V

    const-string/jumbo p0, "RefreshRateToken History"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateTokenController:Lcom/android/server/display/mode/RefreshRateTokenController;

    const-string v1, "  RefreshRateTokens:"

    iget-object v2, p0, Lcom/android/server/display/mode/RefreshRateTokenController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/mode/RefreshRateTokenController;->mRefreshRateTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateTokenController;->mRefreshRateTokenHistory:Lcom/samsung/android/core/SystemHistory;

    invoke-virtual {p0, p1}, Lcom/samsung/android/core/SystemHistory;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public final getController()Lcom/android/server/display/mode/RefreshRateController;
    .locals 1

    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mDisplayToken:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    sget-object v0, Lcom/android/server/display/mode/RefreshRateModeManager;->mControllerByToken:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/mode/RefreshRateController;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onChanged(IF)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FLIP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->isFolded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    invoke-static {p2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mBrightness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/display/mode/RefreshRateController;->getBrightnessZone(I)I

    move-result v0

    invoke-virtual {p2, p1}, Lcom/android/server/display/mode/RefreshRateController;->getBrightnessZone(I)I

    move-result p1

    if-ne v0, p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    new-instance p2, Lcom/android/server/display/mode/RefreshRateModeManager$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/server/display/mode/RefreshRateModeManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/RefreshRateModeManager;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onLightSensorChanged(F)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/server/display/mode/RefreshRateController;->mAmbientLux:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/mode/RefreshRateController;->getAmbientLuxZone(F)I

    move-result v1

    invoke-virtual {v0, p1}, Lcom/android/server/display/mode/RefreshRateController;->getAmbientLuxZone(F)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    new-instance v0, Lcom/android/server/display/mode/RefreshRateModeManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/mode/RefreshRateModeManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/RefreshRateModeManager;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateCurrentDisplayToken(Landroid/view/DisplayAddress;)V
    .locals 3

    invoke-static {p1}, Landroid/view/SurfaceControl;->getDisplayToken(Landroid/view/DisplayAddress;)Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mDisplayToken:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_MULTI_DISPLAY:Z

    if-eqz v1, :cond_0

    if-eq v0, p1, :cond_0

    const-string/jumbo p1, "RefreshRateModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateDefaultDisplayToken: display token is changed to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mDisplayToken:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-object v1, Lcom/android/server/display/mode/RefreshRateModeManager;->mControllerByToken:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/mode/RefreshRateController;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/display/mode/RefreshRateController;->updateDefaultDisplayOrOffDisplayLocked()V

    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/mode/RefreshRateController;->updateRefreshRateModeLocked(Z)V

    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/mode/RefreshRateController;->onBrightnessChangedLocked()V

    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/display/mode/RefreshRateController;->updateRefreshRateMaxLimitTokenLocked()V

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_0
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_0
    return-void
.end method
