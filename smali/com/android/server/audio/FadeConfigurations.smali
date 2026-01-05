.class public final Lcom/android/server/audio/FadeConfigurations;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mActiveFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

.field public mDefaultFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

.field public final mLock:Ljava/lang/Object;

.field public mTransientFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

.field public mUpdatedFadeManagerConfig:Landroid/media/FadeManagerConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/VolumeShaper$Configuration$Builder;->setId(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    new-array v3, v1, [F

    fill-array-data v3, :array_0

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v3, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/VolumeShaper$Configuration$Builder;->setOptionFlags(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f266666    # 0.65f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getActiveFadeMgrConfigLocked()Landroid/media/FadeManagerConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mTransientFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mUpdatedFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mDefaultFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    if-nez v0, :cond_2

    new-instance v0, Landroid/media/FadeManagerConfiguration$Builder;

    invoke-direct {v0}, Landroid/media/FadeManagerConfiguration$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/FadeManagerConfiguration$Builder;->build()Landroid/media/FadeManagerConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mDefaultFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    :cond_2
    iget-object p0, p0, Lcom/android/server/audio/FadeConfigurations;->mDefaultFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    return-object p0
.end method

.method public final getFadeOutVolumeShaperConfig(Landroid/media/AudioAttributes;)Landroid/media/VolumeShaper$Configuration;
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/media/FadeManagerConfiguration;->getFadeOutVolumeShaperConfigForAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/VolumeShaper$Configuration;

    move-result-object v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/FadeManagerConfiguration;->getFadeOutVolumeShaperConfigForUsage(I)Landroid/media/VolumeShaper$Configuration;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mActiveFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getActiveFadeMgrConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mActiveFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/FadeConfigurations;->mActiveFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    return-object p0
.end method

.method public final isFadeable(Landroid/media/AudioAttributes;II)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/media/FadeManagerConfiguration;->isPlayerTypeUnfadeable(I)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getContentType()I

    move-result p3

    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/media/FadeManagerConfiguration;->isContentTypeUnfadeable(I)Z

    move-result p3

    if-eqz p3, :cond_1

    monitor-exit v0

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result p3

    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/media/FadeManagerConfiguration;->isUsageFadeable(I)Z

    move-result p3

    if-nez p3, :cond_2

    monitor-exit v0

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/media/FadeManagerConfiguration;->isAudioAttributesUnfadeable(Landroid/media/AudioAttributes;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_3

    :goto_0
    move p0, p3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/media/FadeManagerConfiguration;->isUidUnfadeable(I)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    move p0, v1

    :goto_1
    if-eqz p0, :cond_5

    monitor-exit v0

    return v1

    :cond_5
    monitor-exit v0

    return p3

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
