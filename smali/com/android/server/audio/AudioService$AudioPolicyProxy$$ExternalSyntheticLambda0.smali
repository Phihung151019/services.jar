.class public final synthetic Lcom/android/server/audio/AudioService$AudioPolicyProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/media/audiopolicy/AudioMix;


# direct methods
.method public synthetic constructor <init>(Landroid/media/audiopolicy/AudioMix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy$$ExternalSyntheticLambda0;->f$0:Landroid/media/audiopolicy/AudioMix;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy$$ExternalSyntheticLambda0;->f$0:Landroid/media/audiopolicy/AudioMix;

    check-cast p1, Landroid/media/audiopolicy/AudioMix;

    invoke-virtual {p0, p1}, Landroid/media/audiopolicy/AudioMix;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
