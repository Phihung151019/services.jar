.class public final synthetic Lcom/android/server/audio/CurrentDeviceManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/CurrentDeviceManager$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/audio/CurrentDeviceManager$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    check-cast p1, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;

    iget-object v0, p1, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;->executor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;Ljava/util/Set;)V

    check-cast v0, Landroid/os/HandlerExecutor;

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
