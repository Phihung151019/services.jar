.class public final Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$DeathRecipient;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$DeathRecipient;->this$0:Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$DeathRecipient;->this$0:Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;

    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BcRadioAidlSrv.AnnAggr"

    const-string v2, "Cannot close Announcement aggregator for DeathRecipient"

    invoke-static {v1, p0, v2, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
