.class public final synthetic Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda6;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda6;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    check-cast p1, Lcom/android/server/audio/AdiDeviceState;

    check-cast p2, Lcom/android/server/audio/AdiDeviceState;

    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AdiDeviceState;->setAudioDeviceCategory(I)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-object p1
.end method
