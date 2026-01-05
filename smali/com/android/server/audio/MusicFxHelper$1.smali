.class public final Lcom/android/server/audio/MusicFxHelper$1;
.super Landroid/app/UidObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/MusicFxHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/MusicFxHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/MusicFxHelper$1;->this$0:Lcom/android/server/audio/MusicFxHelper;

    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUidGone(IZ)V
    .locals 2

    const-string p2, "AS.MusicFxHelper"

    const-string v0, " send MSG_EFFECT_CLIENT_GONE"

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/audio/MusicFxHelper$1;->this$0:Lcom/android/server/audio/MusicFxHelper;

    iget-object p0, p0, Lcom/android/server/audio/MusicFxHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/16 v1, 0x44d

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method
