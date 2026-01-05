.class public final Lcom/android/server/display/VolumeController$3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/VolumeController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/VolumeController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/VolumeController$3;->this$0:Lcom/android/server/display/VolumeController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/VolumeController$3;->this$0:Lcom/android/server/display/VolumeController;

    iget-object v0, v0, Lcom/android/server/display/VolumeController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "minVol"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "maxVol"

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/display/VolumeController$3;->this$0:Lcom/android/server/display/VolumeController;

    iget v2, v2, Lcom/android/server/display/VolumeController;->mVolume:I

    const-string/jumbo v3, "curVol"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/display/VolumeController$3;->this$0:Lcom/android/server/display/VolumeController;

    iget-boolean v2, v2, Lcom/android/server/display/VolumeController;->mMuted:Z

    const-string/jumbo v3, "isMute"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/server/display/VolumeController$3;->this$0:Lcom/android/server/display/VolumeController;

    iget-object p0, p0, Lcom/android/server/display/VolumeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
