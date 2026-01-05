.class public final Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;


# instance fields
.field public final mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

.field public final mIsPrivileged:Z


# direct methods
.method public constructor <init>(Landroid/media/IRecordingConfigDispatcher;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    iput-boolean p2, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mIsPrivileged:Z

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    const-string v0, "AudioService.RecordingActivityMonitor"

    const-string/jumbo v1, "client died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-virtual {v0, p0}, Lcom/android/server/audio/RecordingActivityMonitor;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    return-void
.end method
