.class public final Lcom/android/server/storage/ImmutableVolumeInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mVolumeInfo:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>(Landroid/os/storage/VolumeInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/storage/VolumeInfo;

    invoke-direct {v0, p1}, Landroid/os/storage/VolumeInfo;-><init>(Landroid/os/storage/VolumeInfo;)V

    iput-object v0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->clone()Landroid/os/storage/VolumeInfo;

    move-result-object p0

    new-instance v0, Lcom/android/server/storage/ImmutableVolumeInfo;

    invoke-direct {v0, p0}, Lcom/android/server/storage/ImmutableVolumeInfo;-><init>(Landroid/os/storage/VolumeInfo;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
