.class public final Lcom/android/server/dreams/DreamController$DreamRecord$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$1:Lcom/android/server/dreams/DreamController$DreamRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final sendResult(Landroid/os/Bundle;)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v0, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    iget-object v0, v0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopPreviousDreamsIfNeeded:Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    iget-object p1, p1, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mReleaseWakeLockIfNeeded:Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
