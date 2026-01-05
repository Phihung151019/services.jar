.class public final Lcom/android/server/audio/AudioService$VolumeMap;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final lowerStep:S

.field public final raiseStep:S


# direct methods
.method public constructor <init>(SS)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p2, p0, Lcom/android/server/audio/AudioService$VolumeMap;->raiseStep:S

    iput-short p1, p0, Lcom/android/server/audio/AudioService$VolumeMap;->lowerStep:S

    return-void
.end method
