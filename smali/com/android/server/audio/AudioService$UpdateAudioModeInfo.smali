.class public final Lcom/android/server/audio/AudioService$UpdateAudioModeInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mMode:I

.field public final mPackageName:Ljava/lang/String;

.field public final mPid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/audio/AudioService$UpdateAudioModeInfo;->mMode:I

    iput p2, p0, Lcom/android/server/audio/AudioService$UpdateAudioModeInfo;->mPid:I

    iput-object p3, p0, Lcom/android/server/audio/AudioService$UpdateAudioModeInfo;->mPackageName:Ljava/lang/String;

    return-void
.end method
