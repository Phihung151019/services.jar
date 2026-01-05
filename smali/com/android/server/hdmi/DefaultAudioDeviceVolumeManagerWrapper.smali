.class public final Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;


# instance fields
.field public final mAudioDeviceVolumeManager:Landroid/media/AudioDeviceVolumeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/AudioDeviceVolumeManager;

    invoke-direct {v0, p1}, Landroid/media/AudioDeviceVolumeManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;->mAudioDeviceVolumeManager:Landroid/media/AudioDeviceVolumeManager;

    const-class p0, Landroid/media/AudioManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    return-void
.end method
