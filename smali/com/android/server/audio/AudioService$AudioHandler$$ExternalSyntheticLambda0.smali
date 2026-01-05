.class public final synthetic Lcom/android/server/audio/AudioService$AudioHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAliasRunner;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioService$AudioHandler;

.field public final synthetic f$1:Lcom/android/server/audio/AudioService$VolumeStreamState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService$AudioHandler;Lcom/android/server/audio/AudioService$VolumeStreamState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/AudioService$AudioHandler;

    iput-object p2, p0, Lcom/android/server/audio/AudioService$AudioHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/audio/AudioService$VolumeStreamState;

    return-void
.end method


# virtual methods
.method public final run(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/AudioService$AudioHandler;

    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/audio/AudioService$VolumeStreamState;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndexDividedBy10(I)I

    move-result p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, -0x2

    invoke-static {v0, v2, p0, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
