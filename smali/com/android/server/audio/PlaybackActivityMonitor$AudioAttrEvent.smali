.class public final Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mPlayerAttr:Ljava/lang/Object;

.field public final mPlayerIId:I


# direct methods
.method public constructor <init>(ILandroid/media/AudioAttributes;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;->$r8$classId:I

    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    iput p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;->mPlayerIId:I

    iput-object p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;->mPlayerAttr:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILandroid/media/AudioPlaybackConfiguration$FormatInfo;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;->$r8$classId:I

    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    iput p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;->mPlayerIId:I

    iput-object p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;->mPlayerAttr:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final eventToString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "player piid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;->mPlayerIId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " format update:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;->mPlayerAttr:Ljava/lang/Object;

    check-cast p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "player piid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;->mPlayerIId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " new AudioAttributes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;->mPlayerAttr:Ljava/lang/Object;

    check-cast p0, Landroid/media/AudioAttributes;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
