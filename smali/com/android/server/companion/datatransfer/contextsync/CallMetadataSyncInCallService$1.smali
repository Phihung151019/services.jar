.class public final Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$1;
.super Landroid/telecom/Call$Callback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;

    invoke-direct {p0}, Landroid/telecom/Call$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDetailsChanged(Landroid/telecom/Call;Landroid/telecom/Call$Details;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;

    iget v1, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    if-lez v1, :cond_1

    iget-object v0, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCurrentCalls:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->updateCallDetails(Landroid/telecom/Call$Details;)V

    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;

    invoke-virtual {p0}, Landroid/telecom/InCallService;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->sync(I)V

    return-void

    :cond_0
    const-string p0, "CallMetadataIcs"

    const-string p1, "Could not update details for nonexistent call"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
