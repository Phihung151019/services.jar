.class public final Lcom/android/server/audio/SoundEffectsHelper$Resource;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mFileName:Ljava/lang/String;

.field public mHasSituationVolume:Z

.field public mLoaded:Z

.field public mSampleId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    return-void
.end method
