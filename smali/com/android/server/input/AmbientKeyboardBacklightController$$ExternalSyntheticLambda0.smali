.class public final synthetic Lcom/android/server/input/AmbientKeyboardBacklightController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/AmbientKeyboardBacklightController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/AmbientKeyboardBacklightController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/AmbientKeyboardBacklightController;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 5

    iget-object p0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/AmbientKeyboardBacklightController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/input/AmbientKeyboardBacklightController;->handleDisplayChange()V

    return v1

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Lcom/android/server/input/AmbientKeyboardBacklightController;->sAmbientControllerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda0;

    iget-object v4, v4, Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/KeyboardBacklightController;

    invoke-virtual {v4, p1}, Lcom/android/server/input/KeyboardBacklightController;->handleAmbientLightValueChanged(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
