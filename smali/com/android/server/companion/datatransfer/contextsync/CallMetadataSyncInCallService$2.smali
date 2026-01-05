.class public final Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;
.super Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;

    return-void
.end method


# virtual methods
.method public final processContextSyncMessage(ILcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;)V
    .locals 5

    iget-object p1, p2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCallControlRequests:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;

    iget-object v0, p2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;->mId:Ljava/lang/String;

    iget p2, p2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;->mControl:I

    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;

    iget-object v2, v1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCurrentCalls:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->getCallForId(Ljava/lang/String;Ljava/util/Collection;)Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "CallMetadataIcs"

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    if-eqz v0, :cond_0

    iget-object p2, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCall:Landroid/telecom/Call;

    invoke-virtual {p2}, Landroid/telecom/Call;->unhold()V

    goto :goto_1

    :cond_0
    const-string p2, "Failed to process unhold action; no matching call"

    invoke-static {v4, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_1
    if-eqz v0, :cond_1

    iget-object p2, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCall:Landroid/telecom/Call;

    invoke-virtual {p2}, Landroid/telecom/Call;->hold()V

    goto :goto_1

    :cond_1
    const-string p2, "Failed to process hold action; no matching call"

    invoke-static {v4, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_2
    if-eqz v0, :cond_2

    iget-object p2, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCall:Landroid/telecom/Call;

    invoke-virtual {p2}, Landroid/telecom/Call;->disconnect()V

    goto :goto_1

    :cond_2
    const-string p2, "Failed to process end action; no matching call"

    invoke-static {v4, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_3
    invoke-virtual {v1, v3}, Landroid/telecom/InCallService;->setMuted(Z)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {v1, v2}, Landroid/telecom/InCallService;->setMuted(Z)V

    goto :goto_1

    :pswitch_5
    const-class p2, Landroid/telecom/TelecomManager;

    invoke-virtual {v1, p2}, Landroid/telecom/InCallService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telecom/TelecomManager;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/telecom/TelecomManager;->silenceRinger()V

    goto :goto_1

    :pswitch_6
    if-eqz v0, :cond_3

    iget p2, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mStatus:I

    if-ne p2, v2, :cond_5

    iget-object p2, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCall:Landroid/telecom/Call;

    invoke-virtual {p2, v2}, Landroid/telecom/Call;->reject(I)V

    goto :goto_1

    :cond_3
    const-string p2, "Failed to process reject action; no matching call"

    invoke-static {v4, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_7
    if-eqz v0, :cond_4

    iget-object p2, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCall:Landroid/telecom/Call;

    invoke-virtual {p2, v3}, Landroid/telecom/Call;->answer(I)V

    goto :goto_1

    :cond_4
    const-string p2, "Failed to process accept action; no matching call"

    invoke-static {v4, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final requestCrossDeviceSync(Landroid/companion/AssociationInfo;)V
    .locals 2

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;

    invoke-virtual {p0}, Landroid/telecom/InCallService;->getUserId()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCurrentCalls:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    iget-object v0, v0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCrossDeviceSyncController:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->isAssociationBlocked(Landroid/companion/AssociationInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "CrossDeviceSyncController"

    const-string p1, "Cannot sync to requested device; connection is blocked"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallUpdateMessage(Ljava/util/Collection;I)[B

    move-result-object p0

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object p1

    iget-object v0, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCompanionTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    const v1, 0x63678883

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->sendMessage(I[B[I)V

    :cond_1
    return-void
.end method

.method public final updateNumberOfActiveSyncAssociations(IZ)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;

    invoke-virtual {p0}, Landroid/telecom/InCallService;->getUserId()I

    move-result v0

    if-ne p1, v0, :cond_3

    iget p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    const/4 v0, 0x1

    if-lez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    goto :goto_1

    :cond_1
    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    :goto_1
    if-nez v1, :cond_2

    iget p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    if-lez p1, :cond_2

    invoke-static {}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCurrentCalls:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/telecom/InCallService;->getCalls()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;)V

    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCurrentCalls:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    new-instance p2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;)V

    invoke-interface {p1, p2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Landroid/telecom/InCallService;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->sync(I)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    iget p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    if-gtz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCurrentCalls:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_3
    return-void
.end method
