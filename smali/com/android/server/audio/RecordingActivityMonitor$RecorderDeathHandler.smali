.class public final Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;


# instance fields
.field public final mRecorderToken:Landroid/os/IBinder;

.field public final mRiid:I


# direct methods
.method public constructor <init>(ILandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->mRiid:I

    iput-object p2, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->mRecorderToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    sget-object v0, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    iget p0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->mRiid:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/audio/RecordingActivityMonitor;->updateSnapshot(IILandroid/media/AudioRecordingConfiguration;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/audio/RecordingActivityMonitor;->dispatchCallbacks(Ljava/util/List;)V

    return-void
.end method
