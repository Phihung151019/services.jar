.class public final Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$1:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateLowPowerModeAllowedModesLocked()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onDisplayChanged(I)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateLowPowerModeAllowedModesLocked()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onDisplayRemoved(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v0, 0x16

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    return-void
.end method
