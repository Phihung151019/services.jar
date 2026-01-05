.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioService;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/audio/AudioService;

    iput-boolean p2, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda16;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/audio/AudioService;

    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda16;->f$1:Z

    check-cast p1, Ljava/lang/Integer;

    sget v1, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->getVssForStreamOrDefault(I)Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->doMute()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1, p0}, Lcom/android/server/audio/AudioService;->broadcastMuteSetting(IZ)V

    return-void
.end method
