.class public final synthetic Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/dreams/DreamController$DreamRecord;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/dreams/DreamController$DreamRecord;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/dreams/DreamController$DreamRecord;

    iput-object p2, p0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mConnected:Z

    iget-object v2, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    iget-object v3, v2, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    if-ne v3, v0, :cond_1

    iget-object v3, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    if-nez v3, :cond_1

    invoke-static {p0}, Landroid/service/dreams/IDreamService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamService;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/service/dreams/IDreamService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v3, v2, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v0, v2, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v3, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    iget-boolean v4, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    iget-boolean v5, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsPreviewMode:Z

    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mDreamingStartedCallback:Lcom/android/server/dreams/DreamController$DreamRecord$1;

    invoke-interface {p0, v3, v4, v5, v0}, Landroid/service/dreams/IDreamService;->attach(Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, v2, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iput-object p0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    iget-boolean p0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsPreviewMode:Z

    if-nez p0, :cond_0

    iget-boolean p0, v2, Lcom/android/server/dreams/DreamController;->mSentStartBroadcast:Z

    if-nez p0, :cond_0

    iget-object p0, v2, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    iget-object v0, v2, Lcom/android/server/dreams/DreamController;->mDreamingStartedIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    iget-object v5, v2, Lcom/android/server/dreams/DreamController;->mDreamingStartedStoppedOptions:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p0, v2, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    iget-object p0, v2, Lcom/android/server/dreams/DreamController;->mListener:Lcom/android/server/dreams/DreamManagerService$4;

    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$4;->this$0:Lcom/android/server/dreams/DreamManagerService;

    new-instance v0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v3, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda1;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v0, v4}, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v1, v2, Lcom/android/server/dreams/DreamController;->mSentStartBroadcast:Z

    return-void

    :catch_0
    move-exception p0

    const-string v0, "DreamController"

    const-string/jumbo v3, "The dream service died unexpectedly."

    invoke-static {v0, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo p0, "attach failed"

    invoke-virtual {v2, v1, p0}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/dreams/DreamController$DreamRecord;->releaseWakeLockIfNeeded()V

    return-void
.end method
