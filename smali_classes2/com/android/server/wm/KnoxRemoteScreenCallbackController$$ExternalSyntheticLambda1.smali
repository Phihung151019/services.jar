.class public final synthetic Lcom/android/server/wm/KnoxRemoteScreenCallbackController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$$ExternalSyntheticLambda1;->f$0:Ljava/util/ArrayList;

    iput-boolean p2, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$$ExternalSyntheticLambda1;->f$0:Ljava/util/ArrayList;

    iget-boolean p0, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$$ExternalSyntheticLambda1;->f$1:Z

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/IScreenRecordingCallback;

    invoke-interface {v2, p0}, Landroid/window/IScreenRecordingCallback;->onScreenRecordingStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
