.class public final Lcom/android/server/display/ExternalDisplayStatsService$1;
.super Landroid/media/AudioManager$AudioPlaybackCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mLogStateAfterAudioSinkDisabled:Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda0;

.field public final mLogStateAfterAudioSinkEnabled:Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda0;

.field public final synthetic this$0:Lcom/android/server/display/ExternalDisplayStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/ExternalDisplayStatsService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioPlaybackCallback;-><init>()V

    new-instance p1, Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/ExternalDisplayStatsService$1;I)V

    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->mLogStateAfterAudioSinkEnabled:Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/ExternalDisplayStatsService$1;I)V

    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->mLogStateAfterAudioSinkDisabled:Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final onPlaybackConfigChanged(Ljava/util/List;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/media/AudioManager$AudioPlaybackCallback;->onPlaybackConfigChanged(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "ExternalDisplayStatsService"

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getAudioDeviceInfo()Landroid/media/AudioDeviceInfo;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v3

    const-string v4, " type="

    const-string v5, " isSink="

    const-string v6, " isActive="

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v3

    const/16 v7, 0x9

    if-eq v3, v7, :cond_1

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v3

    const/16 v7, 0xa

    if-eq v3, v7, :cond_1

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v3

    const/16 v7, 0xb

    if-ne v3, v7, :cond_3

    :cond_1
    sget-boolean p1, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isExternalDisplayUsedForAudio: use "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    sget-boolean v3, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "isExternalDisplayUsedForAudio: drop "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_1
    sget-boolean v0, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "scheduleAudioSinkChange: mIsExternalDisplayUsedForAudio="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    iget-boolean v2, v2, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isAudioOnExternalDisplay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    iget-object v0, v0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    iget-object v0, v0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->mLogStateAfterAudioSinkEnabled:Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    iget-object v0, v0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    iget-object v0, v0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->mLogStateAfterAudioSinkDisabled:Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->mLogStateAfterAudioSinkEnabled:Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda0;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->mLogStateAfterAudioSinkDisabled:Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda0;

    :goto_2
    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_7
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
