.class public final Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$1;
.super Landroid/os/IThermalEventListener$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifyThrottling(Landroid/os/Temperature;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalStatus:I

    if-eq v1, p1, :cond_0

    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalStatus:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
