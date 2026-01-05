.class public final Lcom/android/server/audio/AudioVolumeChangeHandler;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

.field public mAudioVolumeGroupCallback:Lcom/android/server/audio/AudioVolumeChangeHandler$AudioVolumeGroupCallback;

.field public final mListeners:Landroid/os/RemoteCallbackList;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioSystemAdapter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mListeners:Landroid/os/RemoteCallbackList;

    iput-object p1, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    return-void
.end method
