.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Landroid/media/AudioDeviceAttributes;

.field public final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioDeviceAttributes;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda26;->f$0:Landroid/media/AudioDeviceAttributes;

    iput-object p2, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda26;->f$1:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda26;->f$0:Landroid/media/AudioDeviceAttributes;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda26;->f$1:[I

    check-cast p1, Landroid/media/IMuteAwaitConnectionCallback;

    check-cast p2, Ljava/lang/Boolean;

    sget p2, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    const/4 p2, 0x2

    :try_start_0
    invoke-interface {p1, p2, v0, p0}, Landroid/media/IMuteAwaitConnectionCallback;->dispatchOnUnmutedEvent(ILandroid/media/AudioDeviceAttributes;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
